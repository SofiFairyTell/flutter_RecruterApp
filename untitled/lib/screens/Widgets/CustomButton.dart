import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onPressed;

  const CustomButton({
    Key key,
    @required this.firstText,
    @required this.secondText,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstText,
              style: TextStyle(fontSize: 14),
            ),
            // Text(
            //   secondText,
            //   style: TextStyle(fontSize: 14),
            // ),
          ],
        ),
      ),
    );
  }
}
