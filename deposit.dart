import 'dart:io';
import 'balance.dart';


depositAmount(users,userId) {
  var user = users.firstWhere((user) => user['id'] == userId, orElse: () => null);
  if (user != null) {
    stdout.write("Enter Amount to deposit: ");
    num amount = num.parse(stdin.readLineSync()!);
    num accountBalance = user['accountBalance'];
    accountBalance += amount;
    print("Amount deposited Successfully");
    user['accountBalance'] = accountBalance;
    viewAccountBalance(users,userId);
  }
}
