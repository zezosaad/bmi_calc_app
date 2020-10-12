import 'package:flutter/material.dart';

const largeButton = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30.0,
);
class BottomButton extends StatelessWidget {
  BottomButton({
    this.name,
    this.onTap,
  });

  final Function onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            name,
            style: largeButton,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}