import 'dart:io';

import 'balance.dart';
import 'data.dart';
import 'deposit.dart';
import 'withdraw.dart';

userLogin(users) {
  stdout.write("Enter name: ");
  var username = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password = stdin.readLineSync();
  if (username == users['name'] && password == users['password']) {
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
        depositAmount();
      } else if (choice == '3') {
        withdrawAmount();
      } else if (choice == '4') {
        print("Thank you for choosing our bank");
        print("Good Bye");
        operation = false;
      } else {
        print("You have entered wrong choice:");
      }
    }
  } else {
    print("Invalid credintials, try again");
  }
}
