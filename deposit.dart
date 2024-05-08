import 'dart:io';
import 'balance.dart';
import 'data.dart';

depositAmount() {
  stdout.write("Enter Amount to deposit: ");
  num amount = num.parse(stdin.readLineSync()!);
  num accountBalance = users['accountBalance'];
  accountBalance += amount;
  print("Amount deposited Successfully");
  users['accountBalance'] = accountBalance;
  viewAccountBalance();
}
