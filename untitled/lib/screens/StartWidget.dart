import 'package:flutter/material.dart';

class StartWidget extends StatelessWidget {
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
                  image: AssetImage('assets/images/owl.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(text: 'Регистрация'),
                SizedBox(width: 20),
                ButtonWidget(text: 'Вход'),
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
  final Function()? onPressed;

  const ButtonWidget({required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
