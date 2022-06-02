import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eg/counter_provider.dart';

class SecondPage extends StatelessWidget {
  static const String id = "second page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int count = Provider.of<CounterProvider>(context).count;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page one'),
      ),
      body: Column(
        children: [
          Text('You have pushed this button $count times'),
          TextButton(
            onPressed: () {
              Provider.of<CounterProvider>(context, listen: false)
                  .increamentCounter();
            },
            child: const Text('Increament Counter'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go to first page'),
      ),
    );
  }
}
