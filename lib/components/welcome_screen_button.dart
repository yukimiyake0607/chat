import 'package:flutter/material.dart';

class WelcomeScreenButton extends StatelessWidget {
  final String title;
  final String navigationScreenTitle;
  final Color buttonColor;
  const WelcomeScreenButton({
    super.key,
    required this.title,
    required this.navigationScreenTitle,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, navigationScreenTitle);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
