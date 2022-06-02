import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_eg/counter_provider.dart';
import 'package:provider_eg/home_page.dart';
import 'package:provider_eg/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (_) => CounterProvider(),
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => const HomePage(),
          SecondPage.id: (context) => const SecondPage(),
        },
      ),
    );
  }
}
