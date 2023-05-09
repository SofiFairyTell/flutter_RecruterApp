class UserInfo {
  String fullName;
  String password;
  String email;

  UserInfo({this.fullName, this.password, this.email});

  static UserInfo fromFormFields(String fullName, String password, String email) {
    return UserInfo(
      fullName: fullName,
      password: password,
      email: email,
    );
  }
}
