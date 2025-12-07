import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Map<String, dynamic>> transactions = [];
  bool isLoading = false;
  int page = 0;

  @override
  void initState() {
    super.initState();
    _loadMore();
  }

  Future<void> _loadMore() async {
    if (isLoading) return;
    setState(() => isLoading = true);

    await Future.delayed(const Duration(seconds: 1));

    final newData = List.generate(10, (i) {
      final idx = i + page * 10;
      return {
        'id': idx,
        'detail': 'Transaction ${idx + 1}',
        'fee': (idx % 2 == 0 ? 1 : -1) * (10000 + idx * 500),
        'tanggal': DateTime.now().subtract(Duration(days: idx)),
      };
    });

    setState(() {
      transactions.addAll(newData);
      page++;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');

    return NotificationListener<ScrollNotification>(
      onNotification: (scrollInfo) {
        if (!isLoading &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          _loadMore();
        }
        return false;
      },
      child: ListView.builder(
        itemCount: transactions.length + 1,
        itemBuilder: (context, index) {
          if (index == transactions.length) {
            return isLoading
                ? const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : const SizedBox.shrink();
          }

          final tx = transactions[index];
          final isIncome = tx['fee'] > 0;

          return ListTile(
            title: Text(tx['detail']),
            subtitle: Text(tx['tanggal'].toString()),
            trailing: Text(
              tx['fee'].toString(),
              style: TextStyle(
                color: isIncome ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
