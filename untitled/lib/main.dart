import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';

//Выполнение приложений на Flutter начинается с функции Main

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("HRecruter"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                LinearProgressIndicator(value: 23),
                Text(
                  '23 %',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Приложение загружается',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null ,
          child: Icon(Icons.wallet_membership),
        ),
      )
    );
  }
}

// void main() {
//   // runApp(MyApp());
//   runApp(
//     Center(
//       child: Text(
//         "RECRUTER",
//         textDirection: TextDirection.ltr,
//         style: TextStyle(
//           fontSize: 50,
//           background: Paint()..color = Colors.blue,
//         ),
//       ),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Второе   '),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Нажали на кнопку много раз:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text(
//               'А вот тут мы добавили картинку!',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Container(
//               color: Colors.white,
//               child: Image.network("https://picsum.photos/250?image=9"),
//             ),
//             Container(
//               color: Colors.white,
//               child: Image.asset("/owl.jpg"),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
