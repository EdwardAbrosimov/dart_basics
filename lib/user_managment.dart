class User {
  final String _email;

  User(this._email);
}

/// ************************************************************************* */
mixin getMailMixin on User {
  String get getMailSystem => _email.split('@').last;
}

/// ************************************************************************* */
class AdminUser extends User with getMailMixin {
  AdminUser(String email) : super(email);
}

/// ************************************************************************* */
class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

/// ************************************************************************* */
class UserManager<T extends User> {
  final _users = <T>[];

  void addUser(T user) {
    _users.add(user);
  }

  bool removeUser(T user) {
    return _users.remove(user);
  }

  List<String>? printEmailList() {
    final emails = <String>[];
    for (var item in _users) {
      if (item.runtimeType == AdminUser) {
        emails.add(AdminUser(item._email).getMailSystem);
      } else if (item.runtimeType == GeneralUser) {
        emails.add(item._email);
      }
    }
    return emails;
  }
}
