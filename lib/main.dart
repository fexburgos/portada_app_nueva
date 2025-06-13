import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/icons/icono.png'),
            Text(
              'Connect friends easily & quickly',
              style: TextStyle(
                color: Colors.white,
                fontSize: 68,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Our chat app is the perfect way to stay connected with friends and family",
              style: TextStyle(
                color: Color(0xFFB9C1BE),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/facebook.png'),
                Image.asset('assets/icons/google.png'),
                Image.asset('assets/icons/apple.png'),
              ],
            ),
            Row(
              spacing: 4,
              children: [
                Expanded(child: Divider(color: Colors.white)),
                Text('OR', style: TextStyle(color: Colors.white)),
                Expanded(child: Divider(color: Colors.white)),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),
              onPressed: () {},
              child: Text('Sign up withn mail'),
            ),
            TextButton(
              onPressed: () {},
              child: RichText(
                text: TextSpan(
                  text: 'Existing account?',
                  style: TextStyle(color: Color(0xFFB9C1BE), fontSize: 14),
                  children: [
                    TextSpan(
                      text: ' Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
