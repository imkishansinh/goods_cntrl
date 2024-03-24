import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Taxing Laughter: The Joke Tax Chronicles',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Start Game'),
            ),
            FilterChip(
              label: const Text('Requested'),
              onSelected: (flag) {},
            ),
          ],
        ),
      ),
    );
  }
}
