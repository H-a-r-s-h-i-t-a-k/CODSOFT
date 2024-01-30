import 'package:flutter/material.dart';
import 'package:recipe_app/main.dart';

import '../search/search_functionality.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(appname),
          elevation: 0.0,
          backgroundColor: Colors.black26.withOpacity(0.0),
        ),
        drawer: Drawer(
          backgroundColor: Colors.black26,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 34, vertical: 34),
          child: Column(
            children: [
              Search(),
            ],
          ),
        ),
      ),
    );
  }
}
