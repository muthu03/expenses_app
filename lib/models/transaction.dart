import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  //once transaction is created then it shoild not change so final

  Transaction(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});
}
//Here it is not staetefull or staeless widget it is just blueprint for transaction
