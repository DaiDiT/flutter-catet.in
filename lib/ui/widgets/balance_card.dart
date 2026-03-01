import 'package:flutter/material.dart';
import 'package:catetin/theme/app_theme.dart';

/// Static data model for a transaction item (used on home page).
class HomeTransactionItem {
  final String name;
  final String category;
  final int amount; // negative = expense, positive = income
  final IconData icon;
  final Color iconBg;
  final DateTime date;
  final String type; // 'income' | 'expenses' | 'topup'

  const HomeTransactionItem({
    required this.name,
    required this.category,
    required this.amount,
    required this.icon,
    required this.iconBg,
    required this.date,
    required this.type,
  });
}

/// Balance card shown at the top of HomePage.
class BalanceCard extends StatelessWidget {
  final int totalBalance;
  final int income;
  final int expense;

  const BalanceCard({
    super.key,
    required this.totalBalance,
    required this.income,
    required this.expense,
  });

  String _formatRp(int amount) {
    final abs = amount.abs();
    final s = abs.toString();
    final buf = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
      buf.write(s[i]);
    }
    return 'Rp ${buf.toString()}';
  }

  String _formatShort(int amount) {
    final abs = amount.abs();
    if (abs >= 1000000) return 'Rp ${(abs / 1000000).toStringAsFixed(1)}jt';
    if (abs >= 1000) return 'Rp ${(abs / 1000).toStringAsFixed(0)}rb';
    return 'Rp $abs';
  }

  @override
  Widget build(BuildContext context) {
    final c = context.appColors;
    final isDark = context.isDark;
    final cardColor = c.accent;
    final onCard = isDark ? Colors.white : const Color(0xFF111111);
    final subCardBg = (isDark ? Colors.black : Colors.white).withValues(alpha: isDark ? 0.18 : 0.5);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row: label + IDR pill
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(color: onCard.withValues(alpha: 0.75), fontSize: 13),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: subCardBg,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'IDR',
                  style: TextStyle(
                    color: onCard,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          // Balance amount
          Text(
            _formatRp(totalBalance),
            style: TextStyle(
              color: onCard,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 16),
          // Income + Expense sub-cards
          Row(
            children: [
              Expanded(
                child: _SubCard(
                  label: 'Income',
                  value: _formatShort(income),
                  icon: Icons.arrow_downward_rounded,
                  iconColor: AppColors.green,
                  bg: subCardBg,
                  textColor: onCard,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _SubCard(
                  label: 'Expense',
                  value: _formatShort(expense),
                  icon: Icons.arrow_upward_rounded,
                  iconColor: AppColors.red,
                  bg: subCardBg,
                  textColor: onCard,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SubCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color iconColor;
  final Color bg;
  final Color textColor;

  const _SubCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.iconColor,
    required this.bg,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: iconColor, size: 14),
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  color: textColor.withValues(alpha: 0.7),
                  fontSize: 11,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
