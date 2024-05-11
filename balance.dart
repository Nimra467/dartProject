viewAccountBalance(users, userId) {
  var user =
      users.firstWhere((user) => user['id'] == userId, orElse: () => null);
  if (user != null) {
    num accountBalance = user['accountBalance'];
    print("Your Current Balance is $accountBalance");
  }
}
