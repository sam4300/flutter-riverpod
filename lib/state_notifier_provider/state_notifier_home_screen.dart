import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/main.dart';
import 'package:riverpod_flutter/user.dart';

class StateNotifierProviderHomeScreen extends ConsumerWidget {
  const StateNotifierProviderHomeScreen({super.key});

  UserStateNotifier onSubmitted(WidgetRef ref) {
    return ref.read(userStateNotifierProvider.notifier);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userStateNotifierProvider);
    //to only rebuild when specific  state changes use .select() method
    // final userSelect = ref.watch(userStateNotifierProvider.select((value) => value.name));
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier Provider Home Screen'),
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) => onSubmitted(ref).updateName(value),
          ),
          TextField(
            onSubmitted: (value) =>
                onSubmitted(ref).updateAge(int.parse(value)),
          ),
          Text(user.name),
          Text(user.age.toString())
        ],
      ),
    );
  }
}
