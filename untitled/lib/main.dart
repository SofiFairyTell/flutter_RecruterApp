import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/screens/RegistrationWidget.dart';
import 'package:untitled/screens/SettingWidget.dart';
import 'package:untitled/screens/DrawerWidget.dart';

//Выполнение приложений на Flutter начинается с функции Main

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Main(),
      '/settings': (context) => const SettingsWidget(),
      '/registration': (context) => const RegistrationWidget()
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
        title: Text('Меню'),
        backgroundColor: Colors.green[600],
      ),
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Main Page'),
            TextButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all(Colors.deepPurpleAccent)),
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: const Icon(Icons.settings),
              label: const Text('Перейти в настройки'),
            ),
          ]),
        ),
      ),
      drawer: DrawerWidget(),
    );
  }
}
