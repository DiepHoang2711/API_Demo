class User{
  int _userId;

  int get userId => _userId;

  set userId(int userId) {
    _userId = userId;
  }
  String _firstName;

  String get firstName => _firstName;

  set firstName(String firstName) {
    _firstName = firstName;
  }
  String _lastName;

  String get lastName => _lastName;

  set lastName(String lastName) {
    _lastName = lastName;
  }
  User(this._userId, this._firstName, this._lastName);
}