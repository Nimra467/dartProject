import 'dart:io';

import 'balance.dart';
import 'deposit.dart';
import 'withdraw.dart';

userLogin(users) {
  stdout.write("Enter name: ");
  var username = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password = stdin.readLineSync();
  bool isLoggedIn = false;
  int userId =0;

  for (var user in users) {
    if (username == user['name'] && password == user['password']) {
      userId = user['id'];
      isLoggedIn = true;
      break;
    }
  }

  if (isLoggedIn) {
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
      stdout.write('Choose an option:');
      var choice = stdin.readLineSync();

      if (choice == '1') {
        viewAccountBalance(users, userId);
      } else if (choice == '2') {
        depositAmount(users, userId);
      } else if (choice == '3') {
        withdrawAmount(users, userId);
      } else if (choice == '4') {
        print("You are returning to Main Menu");
        operation = false;
      } else {
        print("You have entered wrong choice:");
      }
    }
  } else {
    print("Login failed, try again");
  }
}
