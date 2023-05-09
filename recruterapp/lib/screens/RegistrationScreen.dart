import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/Widgets/PhotoWidget.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key key}) : super(key: key);
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // PhotoWidget
              Center(
                child: PhotoWidget(
                  photoUrl: 'assets/images/owl.jpg',
                  onPressed: () => print('Photo was tapped'),
                ),
              ),

              // Full name text field
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'ФИО',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),

              // Email text field
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),

              // Password text field
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Пароль',
                    prefixIcon: Icon(Icons.lock),
                  ),
                    controller: passwordController,
                ),
              ),

              // Register button
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: () => print('Register button was pressed'),
                  child: Text('Зарегистрироваться'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
