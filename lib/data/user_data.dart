class Credentials {
  late final String username;
  late final String password;

  Credentials({required this.username, required this.password});
}

class UserData {
  late final Credentials credentials;

  UserData(String username, String password) {
    credentials = Credentials(username: username, password: password);
  }
}

class Accounts {
  Accounts._internal();

  static final Accounts _instance = Accounts._internal();

  static Accounts getInstance() => _instance;

  final List<UserData> _accounts = [];

  void addAccount(String username, String password) {
    var userData = UserData(username, password);
    _accounts.add(userData);
  }

  UserData? getAccount(String username) {
    for (var account in _accounts) {
      if (account.credentials.username == username) {
        return account;
      }
    }

    return null;
  }
}
