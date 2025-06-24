import 'package:flutter/material.dart';
import 'package:portada_app_nueva/ui/core/navigation/app_navigator.dart';
import 'package:portada_app_nueva/ui/core/ui/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
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
                    color: AppColors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: [
                    Image.asset('assets/icons/facebook.png'),
                    Image.asset('assets/icons/google.png'),
                    Image.asset('assets/icons/apple.png'),
                      
                   
                  ],
                ),
                Row(
                  spacing: 10,
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
                  onPressed: () {
                    Navigator.pushNamed(context, AppNavigator.signin);
                  },
                  child: Text('Sign up with mail'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppNavigator.login);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Existing account?',
                      style: TextStyle(color: AppColors.grey, fontSize: 14),
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
        ],
      ),
    );
  }
}
