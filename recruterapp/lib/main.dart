import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:recruterapp/screens/CandidatScreen.dart';
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
      '/candidats':(context) => CandidatScreen(),
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
        backgroundColor: Color.fromRGBO(255, 205, 176, 100),
      ),
      //backgroundColor: Colors.greenAccent,
      body: StartWidget(),
    );
  }
}
