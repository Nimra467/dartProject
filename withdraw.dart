import 'dart:io';

import 'balance.dart';
import 'data.dart';
withdrawAmount() {
  stdout.write("Enter Amount to withdraw: ");
  num amount = num.parse(stdin.readLineSync()!);
  num accountBalance = users['accountBalance'];
  accountBalance -= amount;
  users['accountBalance'] = accountBalance;
  print("Amount withdraw Successfully");
  viewAccountBalance();
}
