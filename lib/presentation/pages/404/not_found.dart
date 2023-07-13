import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image
          Image.asset("assets/images/error.png", width: 350),

          // space
          const SizedBox(height: 10),

          // text
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Page not found",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
