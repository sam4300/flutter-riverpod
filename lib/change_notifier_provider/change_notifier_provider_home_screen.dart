import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/main.dart';
import 'package:riverpod_flutter/user.dart';

class ChangeNotifierPrividerHomeScreen extends ConsumerWidget {
  const ChangeNotifierPrividerHomeScreen({super.key});

  UserChangeNotifier onSubmitted(WidgetRef ref) {
    return ref.read(userChangeNotifierProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userChangeNotifierProvider).user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier Provider Home Screen'),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmitted(ref).updateName(value),
          ),
          TextField(
            onSubmitted: (value) => onSubmitted(ref).uodateAge(
              int.parse(value),
            ),
          ),
          Text(user.name),
          Text(user.age.toString()),
        ],
      ),
    );
  }
}
