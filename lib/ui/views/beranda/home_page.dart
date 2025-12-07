import 'package:flutter/material.dart';
import 'package:catetin/core/widgets/summary_card.dart';
import 'package:catetin/core/widgets/transaction_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Bagian atas (tidak ikut scroll)
            SummaryCard(
              totalSaldo: 1200000,
              totalPemasukan: 2500000,
              totalExpenses: 1300000,
              isDark: isDark,
            ),
            Text('Transaction Terakhir'),
            // 🔹 Bagian bawah (scrollable)
            Expanded(child: TransactionList()),
          ],
        ),
      ),
    );
  }
}
