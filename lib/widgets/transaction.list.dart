import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't0',
      title: 'New Book',
      amount: 50.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't1',
      title: 'Shoe',
      amount: 80.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
