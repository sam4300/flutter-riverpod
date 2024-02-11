import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/main.dart';

class StateProviderHomeScreen extends ConsumerWidget {
  const StateProviderHomeScreen({super.key});

  void _onSubmitted(WidgetRef ref, String value) {
    ref.read(nameStateProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameStateProvider) ?? '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider Home Screen'),
      ),
      body: Column(children: [
        TextField(
          onSubmitted: (value) => _onSubmitted(ref, value),
        ),
        Text(name)
      ]),
    );
  }
}
