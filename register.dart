import 'dart:io';
import 'data.dart';
import 'login.dart';

userRegistration() {
  stdout.write("Enter name: ");
  var username = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password = stdin.readLineSync();
   stdout.write("Enter Your Cnic: ");
  var cnic = stdin.readLineSync();
  Map newUser = {"name": username, "password": password,"cnic": cnic, "accountBalance": 0};
  users.add(newUser);
  viewUsers();
  print("Registered Successfully");
  print("if you want to continue press 1 else 0");
  var choice = stdin.readLineSync();
  if (choice == '1') {
    userLogin();
  } else {
    "Thank you for choosing our bank";
  }
}
