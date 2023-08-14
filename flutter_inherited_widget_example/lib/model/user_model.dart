import 'package:flutter/widgets.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDate;

  const UserModel(
      {super.key,
      required this.name,
      required this.imgAvatar,
      required this.birthDate,
      required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imgAvatar != oldWidget.imgAvatar ||
        birthDate != oldWidget.birthDate;
  }
  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel do not exist in BuildContext');
    return userModel!;
  }
}

