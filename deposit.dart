import 'dart:io';
import 'balance.dart';
import 'data.dart';

num depositAmount() {
  stdout.write("Enter Amount to withdraw: ");
  num amount = num.parse(stdin.readLineSync()!);
  Map thisUser = users[0];
  num accountBalance = thisUser['accountBalance'];
  accountBalance += amount;
  print("Amount deposited Successfully");
  viewAccountBalance();
  return accountBalance;
}
