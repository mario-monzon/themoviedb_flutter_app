import 'package:flutter/material.dart';
import 'package:themoviedb_flutter_app/net/api.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    ApiService api;
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('$api'),
          ),
        ),
      ),
    );
  }
}
