import 'package:flutter/material.dart';

class Sigin extends StatelessWidget {
  const Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sign up with Email',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Get chatting with friends and family today by signing up for our chat app!",
                  style: TextStyle(
                    color: Color(0xFF797C7B),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your name:',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Your email:',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password:',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 117, 202, 171),
                    ),
                  ),
                ),
                TextFormField(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Create an account'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
