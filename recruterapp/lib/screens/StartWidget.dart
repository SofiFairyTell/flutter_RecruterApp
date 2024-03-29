import 'package:flutter/material.dart';
import 'package:recruterapp/screens/ProfileScreen.dart';
import 'package:recruterapp/screens/SignUpScreen.dart';

class StartWidget extends StatelessWidget {
  StartWidget({required Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(150, 80),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/startlogo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(text: 'Регистрация',onPressed: () => goToRegistration(context)),
                SizedBox(width: 20),
                ButtonWidget(text: 'Вход',onPressed: () => goToProfileWidget(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;

  const ButtonWidget({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed(),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 18,
        ),
      ),
    );
  }
}


void goToRegistration(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SignUpScreen(key: null,),
    ),
  );
}

void goToProfileWidget(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProfileScreen(),
    ),
  );
}