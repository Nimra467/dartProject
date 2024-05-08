import 'dart:io';

import 'balance.dart';
import 'data.dart';
import 'deposit.dart';
import 'withdraw.dart';

userLogin() {
  print("@@@@@@@@@@@@@");
  print("Login Successful");
  print("@@@@@@@@@@@@@");

  bool operation = true;
  while (operation) {
    print("options");
    print("1:View Balance");
    print("2:Deposit");
    print("3:Withdraw");
    print("4:Exit");
    stdout.write('Choose an option: ');
    var choice = stdin.readLineSync();

    if (choice == '1') {
      viewAccountBalance();
    } else if (choice == '2') {
      num accountBalance = depositAmount();
      Map thisUser = users[0];
      thisUser['accountBalance'] = accountBalance;
    } else if (choice == '3') {
      withdrawAmount();
      num accountBalance = withdrawAmount();
      Map thisUser = users[0];
      thisUser['accountBalance'] = accountBalance;
    } else if (choice == '4') {
      operation = false;
      break;
    } else {
      print("You have entered wrong choice:");
    }
  }
}
