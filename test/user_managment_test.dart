import 'package:test/test.dart';
import 'package:dart_basics/user_managment.dart';

void main() {
  GeneralUser vasya = GeneralUser('vasya@mail.ru');
  GeneralUser petya = GeneralUser('petya@gmail.com');
  AdminUser hardToBeAGod = AdminUser('admin@admin.onion.com');
  UserManager userList = UserManager();
  test('Test user managment aftera adding', () {
    userList.addUser(vasya);
    userList.addUser(petya);
    userList.addUser(hardToBeAGod);
    expect(userList.printEmailList(),
        equals(['vasya@mail.ru', 'petya@gmail.com', 'admin.onion.com']));
  });
  test('Test user managment aftera removing', () {
    userList.removeUser(vasya);
    userList.removeUser(petya);
    expect(userList.printEmailList(), equals(['admin.onion.com']));
  });
}
