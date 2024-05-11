import 'dart:io';
import 'balance.dart';


withdrawAmount(users, userId) {
  var user =
      users.firstWhere((user) => user['id'] == userId, orElse: () => null);
  if (user != null) {
    stdout.write("Enter Amount to withdraw: ");
    num amount = num.parse(stdin.readLineSync()!);
    num accountBalance = user['accountBalance'];
    if (accountBalance >= amount) {
      accountBalance -= amount;
      user['accountBalance'] = accountBalance;
      print("Amount withdraw Successfully");
    } else {
      print("Insufficient balance");
    }
    viewAccountBalance(users, userId);
  }
}
