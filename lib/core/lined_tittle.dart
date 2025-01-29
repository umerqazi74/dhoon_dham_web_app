import 'package:flutter/material.dart';
class LinedTittle extends StatelessWidget {
  final String tittle;
  const LinedTittle({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Title Text
        Text(
          tittle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(width: 30), // Space between text and line
        // Line extending to the end
        Expanded(
          child: Container(
            height: 0.3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                  Colors.black,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
