import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/main.dart';

class ProviderHomeScreen extends ConsumerWidget {
  const ProviderHomeScreen({super.key});

//to access data from the nameProvider
  String loadData(WidgetRef ref) {
    return ref.read(nameProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final name = loadData(ref);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Home Screen'),
      ),
      body: Column(
        children: [
          Text(name),
        ],
      ),
    );
  }
}
