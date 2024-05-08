import 'dart:io';
import 'data.dart';
import 'login.dart';
import 'register.dart';


void main() {
  print("@@@@@@@@@@@@@");
  print("Welcome to Bank");
  print("@@@@@@@@@@@@@");

  // bool operation = true;
  // while (operation) {
  print("options");
  print("1:User Registration");
  print("2:User Login");
  print("3:View Registered Users");
  stdout.write('Choose an option: ');
  var choice = stdin.readLineSync();

  if (choice == '1') {
    userRegistration();
  } else if (choice == '2') {
    userLogin();
  } else if (choice == '3') {
    viewUsers();
  } else {
    print("You have entered wrong choice:");
  }
}
