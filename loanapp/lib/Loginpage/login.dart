import 'package:flutter/material.dart';
import 'package:loanapp/Loginpage/Components/inputfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Hello')),
        // ignore: prefer_const_constructors
        body: SingleChildScrollView(
          child: Column(children: [
            const Icon(
              Icons.supervised_user_circle_outlined,
              size: 100,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Enter Username',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  InputField(
                    controllerEntity: usernameController,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter Password',
                    textAlign: TextAlign.left,
                  ),
                  InputField(
                    controllerEntity: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Text('Dont have an account? Click to Refgister'),
                  TextButton(onPressed: () {}, child: const Text('Register')),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
