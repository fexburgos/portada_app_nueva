import 'package:flutter/material.dart';
import 'package:portada_app_nueva/utils/validators.dart';



class Sigin extends StatelessWidget {
  const Sigin({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
  

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SafeArea(
            child: Form(
              key: formKey,
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
                    textInputAction: TextInputAction.next,
                    onChanged: (value){
                      print('onChanged');
                      print(value);
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Your name:',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 117, 202, 171),
                      ),
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      print('onChanged');
                      print(value);
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Your email:',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 117, 202, 171),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    validator: Validators.validateEmail,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Password:',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 117, 202, 171),
                      ),
                    ),
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Confirm Password:',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 117, 202, 171),
                      ),
                    ),
                  ),
                  
                  ElevatedButton(
                    onPressed: () {
                      formKey.currentState?.validate();
                    },
                    child: Text('Create an account'),
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
