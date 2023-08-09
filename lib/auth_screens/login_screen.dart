import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/social_logins_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BannerComponent(
              title: 'Welcome Back!', subtitle: 'Let\'s get you a ride!'),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
							crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: emailController,
                          validator: (value) {
                            if (value == null || !emailRegex.hasMatch(value)) {
                              return 'Please Provide Valid Email';
                            }
                          },
                          decoration: const InputDecoration(hintText: 'Email'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: passwordController,
                          validator: (value) {
                            if (value == null) {
                              return 'Password Cannot be Null';
                            }
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: PillButton(
                      text: 'Login',
                      callback: () {
                        if (_formKey.currentState!.validate()) {
                          if (passwordController.text == 'Pakistan' &&
                              emailController.text == 'saira@gmail.com') {
                            Navigator.pushNamed(context, '/dashboard');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'User with Given Credentials Doesnt Exist'),
                              ),
                            );
                          }
                        }
                      }),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    Link(routeName: '/register', text: 'Register'),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('or'),
                const SizedBox(height: 10),
                const Text('Continue With'),
                const SizedBox(height: 20),
                const SocialLoginsButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
