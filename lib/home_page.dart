import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var container = Container();
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(),
            Expanded(
              child: Container(
                child: Text("hello"),
              ),
            ),
            container,
          ],
        ),
      ),
    );
  }
}