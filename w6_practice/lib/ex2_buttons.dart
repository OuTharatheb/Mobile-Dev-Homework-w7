import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                label: 'Submit',
                icon: Icons.check,
                buttonType: ButtonType.primary,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: 'Time',
                icon: Icons.access_time,
                buttonType: ButtonType.secondary,
              ),
              SizedBox(height: 20),
              CustomButton(
                label: 'Account',
                icon: Icons.account_circle,
                buttonType: ButtonType.Disabled,
              )
            ],
          ),
        ), // YOUR CODE

      ),
    ),
  );
}
enum ButtonType {
  primary,
  secondary,
  Disabled,
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    Color ButtonColor;
    if (buttonType == ButtonType.primary) {
      ButtonColor = Colors.blue;
    } else if (buttonType == ButtonType.secondary) {
      ButtonColor = Colors.green;
    } else {
      ButtonColor = Colors.grey;
    }
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: ButtonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
    ),
    );
  }
}
