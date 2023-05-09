import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recruterapp/screens/SignUpScreen.dart';
import 'package:recruterapp/screens/SettingWidget.dart';
import 'package:recruterapp/screens/StartWidget.dart';

//Выполнение приложений на Flutter начинается с функции Main

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Main(),
      '/settings': (context) => const SettingsWidget(),
      '/registration': (context) =>  SignUpScreen()
    },
  ));
}

class Main extends StatelessWidget {
  const Main({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RECRUTER APP'),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: Colors.greenAccent,
      body: StartWidget(),
      //drawer: DrawerWidget(),
    );
  }
}
