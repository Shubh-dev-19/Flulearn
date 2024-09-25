import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(

      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/login_image.png",
              fit: BoxFit.cover, // Added fit as an example, you can change it
            ),
            SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    obscureText: true, // Makes the input obscured for passwords
                  ),
                  SizedBox(height: 20.0), // Added some space before the button
                  SwipeButton.expand(
                    thumb: Icon(
                      Icons.double_arrow_rounded,
                      color: Colors.white,
                    ),
                    child: Text(
                      "Swipe to ...",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    activeThumbColor: Colors.red,
                    activeTrackColor: Colors.grey.shade300,
                    onSwipe: () {
                      Navigator.pushNamed(context, '/home');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Swipped"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
