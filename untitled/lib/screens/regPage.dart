import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegPage extends StatelessWidget {
  const RegPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Stack(
              fit:StackFit.expand,
          children: <Widget>[
             Image.asset('assets/images/owl.jpg'),
          ],
        )));
  }
}
