import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    //Here we create list with blueprint of transactions
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 70,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Groceries',
      amount: 90,
      date: DateTime.now(),
    ),
  ];

  void _addNeeTransaction(String txtitle, double txAmount) {
    final newTx = Transaction(
      title: txtitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(
            _addNeeTransaction), //card which helps to add new transaction

        TransactionList(_userTransaction), //this will have all transaction
      ],
    );
  }
}
