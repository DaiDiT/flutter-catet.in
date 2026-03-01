import 'package:flutter/material.dart';
import 'package:catetin/theme/app_theme.dart';

class CustomNavbar extends StatelessWidget {
  final int currentIndex;
  final VoidCallback? onFabPressed;
  final Function(int) onTap;

  const CustomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    this.onFabPressed,
  });

  static const _items = [
    _NavItem(Icons.home_rounded, 'Beranda'),
    _NavItem(Icons.history_rounded, 'Riwayat'),
    _NavItem(Icons.account_balance_wallet_outlined, 'Sumber Dana'),
    _NavItem(Icons.grid_view_rounded, 'Kategori'),
    _NavItem(Icons.settings_outlined, 'Setelan'),
  ];

  @override
  Widget build(BuildContext context) {
    final c = context.appColors;
    final isDark = context.isDark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? c.cardBg : c.cardBg,
        border: Border(
          top: BorderSide(
            color: isDark ? Colors.white10 : Colors.black12,
            width: 1,
          ),
        ),
      ),
      padding: const EdgeInsets.only(top: 18, right: 18, left: 18, bottom: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(_items.length, (i) {
          final active = currentIndex == i;
          final color = active ? c.accent : c.textSecondary;

          return GestureDetector(
            onTap: () => onTap(i),
            behavior: HitTestBehavior.opaque,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: active ? Color(0xFF848484).withOpacity(0.10): Color(0xFF848484).withOpacity(0),
                    ),
                    child: Icon(_items[i].icon, color: color, size: 24),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _items[i].label,
                    style: TextStyle(
                      color: color,
                      fontSize: 14,
                      fontWeight: active ? FontWeight.w700 : FontWeight.w400,
                    ),
                  ),
                ],
              ),
          );
        }),
      ),
    );
  }
}

class _NavItem {
  final IconData icon;
  final String label;
  const _NavItem(this.icon, this.label);
}
