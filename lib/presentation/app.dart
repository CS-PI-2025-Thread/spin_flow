import 'package:flutter/material.dart';
import 'package:spin_flow/core/routes.dart';
import 'package:spin_flow/presentation/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spin Flow',
      initialRoute: Routes.home,
      routes: {Routes.home: (context) => const Home()},
    );
  }
}
