import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/provider/provider_home_screen.dart';
import 'package:riverpod_flutter/state_notifier_provider/state_notifier_home_screen.dart';
import 'package:riverpod_flutter/state_provider/state_provider_home_screen.dart';
import 'package:riverpod_flutter/user.dart';

//for provider
final nameProvider = Provider((ref) => 'Samar');

//for state provider
final nameStateProvider = StateProvider<String?>((ref) => null);

//for state notifier provider
final userStateNotifierProvider =
    StateNotifierProvider<UserStateNotifier,User>((ref) => UserStateNotifier());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Riverpod',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const StateNotifierProviderHomeScreen());
  }
}
