import 'package:flutter/material.dart';

import './transaction_item.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTransaction;

  TransactionList(this.transactions, this.deleteTransaction);

  @override
  Widget build(BuildContext context) {
    print('build() TransactionList');

    return ListView(
      children: transactions
          .map((tx) => TransactionItem(
                key: ValueKey(tx.id),
                transaction: tx,
                deleteTransaction: deleteTransaction,
              ))
          .toList(),
    );
  }
}
