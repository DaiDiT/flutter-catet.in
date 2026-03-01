import 'package:flutter/material.dart';
import 'package:catetin/theme/app_theme.dart';
import 'package:catetin/ui/widgets/balance_card.dart';

// ─── Static transaction data ──────────────────────────────────────────────────

enum _Filter { semua, pemasukan, pengeluaran, topUp }

class _Tx {
  final String name;
  final String category;
  final int amount;
  final IconData icon;
  final Color iconBg;
  final DateTime date;
  final _Filter type;

  const _Tx({
    required this.name,
    required this.category,
    required this.amount,
    required this.icon,
    required this.iconBg,
    required this.date,
    required this.type,
  });
}

final _now = DateTime.now();

final List<_Tx> _staticTransactions = [
  _Tx(
    name: 'Makan Siang',
    category: 'Makanan & Minuman',
    amount: -45000,
    icon: Icons.fastfood_rounded,
    iconBg: const Color(0xFFFF6B35),
    date: DateTime(_now.year, _now.month, _now.day, 12, 30),
    type: _Filter.pengeluaran,
  ),
  _Tx(
    name: 'Ojek Online',
    category: 'Transportasi',
    amount: -22000,
    icon: Icons.directions_car_rounded,
    iconBg: const Color(0xFF3B82F6),
    date: DateTime(_now.year, _now.month, _now.day, 9, 0),
    type: _Filter.pengeluaran,
  ),
  _Tx(
    name: 'Gaji Bulanan',
    category: 'Gaji',
    amount: 8200000,
    icon: Icons.work_rounded,
    iconBg: const Color(0xFF22C55E),
    date: DateTime(_now.year, _now.month, _now.day - 1, 8, 0),
    type: _Filter.pemasukan,
  ),
  _Tx(
    name: 'Belanja Bulanan',
    category: 'Kebutuhan',
    amount: -1250000,
    icon: Icons.shopping_bag_rounded,
    iconBg: const Color(0xFF8B5CF6),
    date: DateTime(_now.year, _now.month, _now.day - 1, 15, 0),
    type: _Filter.pengeluaran,
  ),
  _Tx(
    name: 'Top-up GoPay',
    category: 'e-Wallet',
    amount: 200000,
    icon: Icons.account_balance_wallet_rounded,
    iconBg: const Color(0xFF06B6D4),
    date: DateTime(_now.year, _now.month, _now.day - 2, 11, 0),
    type: _Filter.topUp,
  ),
  _Tx(
    name: 'Listrik PLN',
    category: 'Tagihan',
    amount: -320000,
    icon: Icons.bolt_rounded,
    iconBg: const Color(0xFFF59E0B),
    date: DateTime(_now.year, _now.month, _now.day - 2, 16, 0),
    type: _Filter.pengeluaran,
  ),
];

// ─── HomePage ─────────────────────────────────────────────────────────────────

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _Filter _selected = _Filter.semua;

  String _greeting() {
    final hour = DateTime.now().hour;
    if (hour < 10) return 'Selamat Pagi,';
    if (hour < 14) return 'Selamat Siang,';
    if (hour < 18) return 'Selamat Sore,';
    return 'Selamat Malam,';
  }

  String _formatRp(int amount) {
    final abs = amount.abs();
    final s = abs.toString();
    final buf = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
      buf.write(s[i]);
    }
    final sign = amount >= 0 ? '+' : '-';
    return '${sign}Rp ${buf.toString()}';
  }

  List<_Tx> get _filtered {
    if (_selected == _Filter.semua) return _staticTransactions;
    return _staticTransactions.where((t) => t.type == _selected).toList();
  }

  /// Groups the filtered list by date label ("HARI INI", "KEMARIN", date string)
  Map<String, List<_Tx>> _grouped() {
    final today = DateTime.now();
    final Map<String, List<_Tx>> map = {};
    for (final tx in _filtered) {
      final diff = DateTime(today.year, today.month, today.day)
          .difference(DateTime(tx.date.year, tx.date.month, tx.date.day))
          .inDays;
      final label = diff == 0
          ? 'HARI INI'
          : diff == 1
              ? 'KEMARIN'
              : '${tx.date.day}/${tx.date.month}/${tx.date.year}';
      map.putIfAbsent(label, () => []).add(tx);
    }
    return map;
  }

  @override
  Widget build(BuildContext context) {
    final c = context.appColors;
    final isDark = context.isDark;
    final grouped = _grouped();

    final totalBalance = 12450000;
    final totalIncome = _staticTransactions
        .where((t) => t.amount > 0)
        .fold(0, (sum, t) => sum + t.amount);
    final totalExpense = _staticTransactions
        .where((t) => t.amount < 0)
        .fold(0, (sum, t) => sum + t.amount.abs());

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // ── Greeting + Balance Card ─────────────────────────
          SliverToBoxAdapter(
            child: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _greeting(),
                      style: TextStyle(
                        color: c.textSecondary,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Dimas Rizki',
                      style: TextStyle(
                        color: c.textPrimary,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    BalanceCard(
                      totalBalance: totalBalance,
                      income: totalIncome,
                      expense: totalExpense,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),

          // ── Filter Chips ────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: _FilterChips(
                selected: _selected,
                onSelect: (f) => setState(() => _selected = f),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 20)),

          // ── "Transaksi Terkini" header ───────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaksi Terkini',
                    style: TextStyle(
                      color: c.textPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: context.appColors.accent == AppColors.lightAccent
                            ? const Color(0xFF7B3FF4)
                            : c.accent,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 12)),

          // ── Grouped Transaction Items ────────────────────────
          if (grouped.isEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Center(
                  child: Text(
                    'Tidak ada transaksi',
                    style: TextStyle(color: c.textSecondary),
                  ),
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, sectionIndex) {
                  final label = grouped.keys.elementAt(sectionIndex);
                  final txList = grouped[label]!;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Group Header
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                          child: Text(
                            label,
                            style: TextStyle(
                              color: c.textSecondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ),
                        // Transaction items
                        ...txList.map((tx) => _TxItem(tx: tx, isDark: isDark, c: c, formatRp: _formatRp)),
                      ],
                    ),
                  );
                },
                childCount: grouped.length,
              ),
            ),

          // Bottom padding for FAB
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: context.appColors.accent == AppColors.lightAccent
            ? AppColors.lightAccent
            : AppColors.darkAccent,
        foregroundColor: isDark ? Colors.white : Colors.black,
        elevation: 4,
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}

// ─── Filter Chips ─────────────────────────────────────────────────────────────

class _FilterChips extends StatelessWidget {
  final _Filter selected;
  final ValueChanged<_Filter> onSelect;

  const _FilterChips({required this.selected, required this.onSelect});

  static const _labels = [
    (_Filter.semua, 'Semua'),
    (_Filter.pemasukan, 'Pemasukan'),
    (_Filter.pengeluaran, 'Pengeluaran'),
    (_Filter.topUp, 'Top-up'),
  ];

  @override
  Widget build(BuildContext context) {
    final c = context.appColors;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _labels.map((entry) {
          final (filter, label) = entry;
          final isActive = selected == filter;
          return GestureDetector(
            onTap: () => onSelect(filter),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
              decoration: BoxDecoration(
                color: isActive ? c.chipActiveBg : c.chipBg,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(
                label,
                style: TextStyle(
                  color: isActive
                      ? (context.isDark ? Colors.white : Colors.white)
                      : c.textSecondary,
                  fontSize: 13,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

// ─── Transaction Item Tile ────────────────────────────────────────────────────

class _TxItem extends StatelessWidget {
  final _Tx tx;
  final bool isDark;
  final AppThemeColors c;
  final String Function(int) formatRp;

  const _TxItem({
    required this.tx,
    required this.isDark,
    required this.c,
    required this.formatRp,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = tx.amount > 0;
    final amountColor = isPositive ? AppColors.green : AppColors.red;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: c.cardBg,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          // Icon circle
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: tx.iconBg.withValues(alpha: 0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(tx.icon, color: tx.iconBg, size: 22),
          ),
          const SizedBox(width: 12),
          // Name + category
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.name,
                  style: TextStyle(
                    color: c.textPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  tx.category,
                  style: TextStyle(color: c.textSecondary, fontSize: 12),
                ),
              ],
            ),
          ),
          // Amount
          Text(
            formatRp(tx.amount),
            style: TextStyle(
              color: amountColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
