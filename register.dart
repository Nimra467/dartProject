import 'dart:io';
import 'data.dart';
import 'login.dart';

int userId = 1;
userRegistration() {
  stdout.write("Enter name: ");
  var username = stdin.readLineSync();
  stdout.write("Enter Your Password: ");
  var password = stdin.readLineSync();
  stdout.write("Enter Your Cnic: ");
  var cnic = stdin.readLineSync();
  userId++;
  users.add({
    "id": userId,
    "name": username,
    "password": password,
    "cnic": cnic,
    "accountBalance": 0
  });
  print("Registered Successfully");
  viewUsers();
  print("if you want to continue press 1 else 0");
  var choice = stdin.readLineSync();
  if (choice == '1') {
    userLogin(users);
  } else {
    ("You are returning to Main Menu");
  }
}
