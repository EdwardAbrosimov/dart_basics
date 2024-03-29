# dart_basics

Проект для реализации второго практического задания
### Задание 1
- [x] **выполнено**

Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.

Проверка: `dart run test/delimeters_test.dart`
***
### Задание 2
- [x] **выполнено**

Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.

Проверка: `dart run test/dec_bin_converter_test.dart`
***
### Задание 3
- [x] **выполнено**

Реализуйте метод, который принимает строку слов, разделённых пробелами. Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

Проверка: `dart run test/find_numbers_in_string_test.dart`
***
### Задание 4
- [x] **выполнено**

Есть коллекция слов. Реализуйте метод, возвращающий Map. Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

Проверка: `dart run test/occurrences_map_test.dart`
***
### Задание 5
- [x] **выполнено**

Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого. Реализуйте метод, возвращающий цифры без повторений, которые встречаются в данной строке. Однако цифры встречаются в виде английских слов от zero до nine. Например, в результате строки ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0]. Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.

Проверка: `dart run test/digit_parser_test.dart`
***
### Задание 6
- [x] **выполнено**

Реализуйте класс Point, который описывает точку в трёхмерном пространстве. У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре. По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки. Реализуйте factory-конструкторы для данного класса, возвращающие начало координат, и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).

Проверка: `dart run test/point_test.dart`
***
### Задание 7
- [x] **выполнено**

Реализуйте метод, который вычисляет корень любой заданной степени из числа. Реализуйте данный метод как extension-метод для num. Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.

**Тесты реализованы частично. На Exceptions проверить так и не удалось.**

Проверка: `dart run test/n_root_test.dart`
***
### Задание 8
- [x] **выполнено**

Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User, у которого будет метод getMailSystem, который возвращает значение из email, которое находится после @. Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>, у которого будет храниться список пользователей и будут методы добавления или удаления их. Также в UserManager реализуйте метод, который выведет почту всех пользователей, однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.

Проверка: `dart run test/user_managment_test.dart`
***
### Задание 9
- [ ] **выполнено**

(Усложнённое). Реализуйте метод, который вычисляет значение определённого интеграла Римана в заданных значениях и с заданной точностью разбиения. По возможности учтите случаи, когда функция имеет точки разрыва. Реализованный метод должен принимать функцию, точки x1 и x2, точность разбиения.

Проверка: ``
***
### Задание 10
- [ ] **выполнено**

(Очень сложно). Реализуйте метод, который принимает коэффициенты системы линейных уравнений (для любого числа неизвестных). Данный метод создаёт матрицу коэффициентов, приводит её к треугольному виду и находит все неизвестные данной системы.

Проверка: ``
