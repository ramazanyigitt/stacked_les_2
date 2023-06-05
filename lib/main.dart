import 'package:flutter/material.dart';
import 'package:stacked_les_2/injection/injection_container.dart';
import 'package:stacked_les_2/presentation/features/home/home_view.dart';
import 'package:stacked_les_2/presentation/features/products/product_list/product_list_view.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
