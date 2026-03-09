import 'package:flutter/material.dart';
import 'package:catetin/theme/app_theme.dart';

/// Enum for transaction filter options.
enum TransactionFilter { semua, pemasukan, pengeluaran, topUp }

extension TransactionFilterLabel on TransactionFilter {
  String get label {
    switch (this) {
      case TransactionFilter.semua:
        return 'Semua';
      case TransactionFilter.pemasukan:
        return 'Pemasukan';
      case TransactionFilter.pengeluaran:
        return 'Pengeluaran';
      case TransactionFilter.topUp:
        return 'Top-up';
    }
  }
}

/// Horizontally scrollable filter chip row for transaction categories.
///
/// [selected] — currently active filter
/// [onSelect] — callback when a chip is tapped
class TransactionFilterChips extends StatelessWidget {
  final TransactionFilter selected;
  final ValueChanged<TransactionFilter> onSelect;

  const TransactionFilterChips({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final c = context.appColors;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: TransactionFilter.values.map((filter) {
          final isActive = selected == filter;
          return GestureDetector(
            onTap: () => onSelect(filter),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              decoration: BoxDecoration(
                color: isActive
                    ? context.isDark
                          ? Colors.white
                          : Colors.black
                    : c.chipBg,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: isActive
                      ? Colors.white.withValues(alpha: 0)
                      : context.isDark
                          ? Color(0xFF292836)
                          : Color(0xFFE7E7E7),
                  width: 1
                )
              ),
              child: Text(
                filter.label,
                style: isActive
                    ? context.textTheme.labelMedium?.copyWith(
                        color: context.isDark ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                    : context.textStyleWithColor(
                        context.textTheme.bodySmall,
                        context.appColors.textSecondary,
                      ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
