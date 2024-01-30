import 'package:flutter/material.dart';

import '../search/search_functionality.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Text("jj"),
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
