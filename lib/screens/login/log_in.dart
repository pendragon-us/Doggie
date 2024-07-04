import 'package:flutter/material.dart';

import 'login_textfield_card.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icon
              Icon(Icons.lock, size: 100),
              SizedBox(height: 40),
              //email
              LoginTextFieldCard(
                hintText: 'Enter your email',
                icon: Icons.email,
                obscureText: false,
                controller: emailController,
              ),

              //password
              LoginTextFieldCard(
                hintText: 'Enter your password',
                icon: Icons.password,
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: 30),

              //login button
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  ),
                  onPressed: (){},
                  child: Text('Log In')
              ),

              //already have an account
              TextButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/register');
                },
                child: Text('Already have an account?  Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
