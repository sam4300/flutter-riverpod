import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final int age;

  const User({required this.name, required this.age});

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}

class UserStateNotifier extends StateNotifier<User> {
  UserStateNotifier()
      : super(
          const User(name: '', age: 0),
        );

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateAge(int age) {
    state = state.copyWith(age: age);
  }
}

class UserChangeNotifier extends ChangeNotifier {
  User user = const User(name: '', age: 0);
  void updateName(String name) {
    user = user.copyWith(name: name);
    notifyListeners();
  }

  void uodateAge(int age) {
    user = user.copyWith(age: age);
    notifyListeners();
  }
}
