import 'package:flutter/material.dart';
import 'package:themoviedb_flutter_app/screens/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': ( _ ) => HomePage(),
      },
    );
  }
}