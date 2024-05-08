import 'data.dart';

viewAccountBalance(){
  Map thisUser = users[0];
  num accountBalance = thisUser['accountBalance'];
  print("Your Current Balance is $accountBalance");
}