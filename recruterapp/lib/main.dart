import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recruterapp/screens/ProfileScreen.dart';
import 'package:recruterapp/screens/SignUpScreen.dart';
import 'package:recruterapp/screens/SettingWidget.dart';
import 'package:recruterapp/screens/StartWidget.dart';
import 'package:recruterapp/screens/VacancScreen.dart';

//Выполнение приложений на Flutter начинается с функции Main

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Main(),
      '/settings': (context) => SettingsWidget(),
      '/signup': (context) =>  SignUpScreen(),
      '/profile': (context) =>  ProfileScreen(),
      '/vac':(context) => VacancScreen(),
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
