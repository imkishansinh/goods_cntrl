import 'package:flutter/material.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Start Game')),
              FilledButton(
                onPressed: () {},
                child: const Text('Start Game'),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (newValue) {},
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (newValue) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: true,
                    groupValue: true,
                    onChanged: (newValue) {},
                  ),
                  Radio(
                    value: false,
                    groupValue: true,
                    onChanged: (newValue) {},
                  ),
                ],
              ),
              const Divider(),
              Text('Hello World',
                  style: Theme.of(context).textTheme.labelSmall),
              Text('Hello World',
                  style: Theme.of(context).textTheme.labelMedium),
              Text('Hello World',
                  style: Theme.of(context).textTheme.labelLarge),
              const Divider(),
              Text('Hello World', style: Theme.of(context).textTheme.bodySmall),
              Text('Hello World',
                  style: Theme.of(context).textTheme.bodyMedium),
              Text('Hello World', style: Theme.of(context).textTheme.bodyLarge),
              const Divider(),
              Text('Hello World',
                  style: Theme.of(context).textTheme.headlineSmall),
              Text('Hello World',
                  style: Theme.of(context).textTheme.headlineMedium),
              Text('Hello World',
                  style: Theme.of(context).textTheme.headlineLarge),
              const Divider(),
              Text('Hello World',
                  style: Theme.of(context).textTheme.displaySmall),
              Text('Hello World',
                  style: Theme.of(context).textTheme.displayMedium),
              Text('Hello World',
                  style: Theme.of(context).textTheme.displayLarge),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
