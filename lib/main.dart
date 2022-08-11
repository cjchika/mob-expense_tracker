import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex-Trac',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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
    return Scaffold(
        appBar: AppBar(
          title: Text('Ex-Trac'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.green,
              child: Container(
                width: double.infinity,
                child: Text('CHART!'),
              ),
              elevation: 10,
            ),
            Column(
              children: transactions.map((trx) {
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 153, 204, 155),
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text(
                          trx.amount.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trx.title,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 243, 92, 81),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            trx.date.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ));
  }
}
