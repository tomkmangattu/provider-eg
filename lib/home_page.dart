import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eg/counter_provider.dart';
import 'package:provider_eg/second_page.dart';

class HomePage extends StatelessWidget {
  static const String id = "home page";
  const HomePage({Key? key}) : super(key: key);

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
          Navigator.pushNamed(context, SecondPage.id);
        },
        child: const Text('Go to second page'),
      ),
    );
  }
}
