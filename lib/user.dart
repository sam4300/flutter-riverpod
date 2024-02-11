import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

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
          User(name: '', age: 0),
        );

  void updateName(String name) {
    state = state.copyWith(name: name);
  }
    void updateAge(int age) {
    state = state.copyWith(age: age);
  }
}
