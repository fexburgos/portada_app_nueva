import 'package:flutter/material.dart';
import 'package:portada_app_nueva/utils/validators.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
     final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Log in to Chatbox',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Welcome back! Sign in using your social account or email to continue us",
                    style: TextStyle(
                      color: Color(0xFF797C7B),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/facebook_solo.png'),
                      Image.asset('assets/icons/google_solo.png'),
                      Image.asset('assets/icons/appleblack_solo.png'),
                    ],
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      Expanded(child: Divider(color: Color(0xFF797C7B))),
                      Text('OR', style: TextStyle(color: Color(0xFF797C7B))),
                      Expanded(child: Divider(color: Color(0xFF797C7B))),
                    ],
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      label: Text('Your email:'),
                      labelStyle: TextStyle(
                        color: Color(0xFF24786D),
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                      border: UnderlineInputBorder(),
               
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFF24786D)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Log in'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
