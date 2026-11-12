import 'package:flutter/material.dart';

// EX 1 – The hobbies (handout page: EX 1)
// Part 1: build ONE hobby card.
// Part 2: extract it into a StatelessWidget called HobbyCard, then show several cards.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 161, 165, 163),
          ),
          padding: EdgeInsets.all(40), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Hobbycard(
                icon: Icon(Icons.travel_explore),
                text: 'Travelling',
              ),
              SizedBox(height: 20),
              Hobbycard(
                icon: Icon(Icons.sports_soccer),
                text: 'Soccer',
              ),
            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class Hobbycard extends StatelessWidget {
  final Icon icon;
  final String text;
  const Hobbycard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: icon,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                text,
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


