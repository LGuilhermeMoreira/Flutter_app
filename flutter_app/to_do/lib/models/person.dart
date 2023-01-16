class Person {
  late String nickname;
  late String number;

  Person(this.nickname, this.number);

  String show() {
    return "Apelido: ${nickname}  numero: ${number}";
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Apelido: ${nickname}  numero: ${number}";
  }
}
