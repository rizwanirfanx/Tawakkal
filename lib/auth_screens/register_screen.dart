import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/social_logins_buttons.dart';
import 'package:hey_taxi/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController passwordInputController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          BannerComponent(
              title: 'Sign Up!',
              subtitle:
                  'Please fill your details below to complete your account'),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 30),
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'First Name Can\' be Empty';
                                  }
                                },
                                decoration: const InputDecoration(
                                    hintText: 'First Name'),
                              ),
                            ),
                          ),
                          SizedBox(width: 40),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Last Name Can\' be Empty';
                                  }
                                },
                                decoration: const InputDecoration(
                                  hintText: 'Email',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          controller: passwordInputController,
                          validator: (value) {
                            if (value != null) {
                              if (value.contains(RegExp(passwordRegexRule))) {
                                return null;
                              } else {
                                return 'Password Not Strong Enough';
                              }
                            }
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value == passwordInputController.text) {
                              return null;
                            }
                            return 'Password Doesn\'t Match!';
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                PillButton(
                  text: 'Sign Up m',
                  callback: () {
                    if (_formKey.currentState!.validate()) {
                      print('Processing Form');
                    }
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already Have an Account?'),
                    Link(routeName: '/login', text: ('Login')),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Link(routeName: '/otp', text: 'OTP Page'),
                    const SizedBox(height: 10),
                    Link(routeName: '/phone_number', text: 'Phone Number'),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('or', textAlign: TextAlign.center),
                const SizedBox(height: 10),
                const Text('Continue With', textAlign: TextAlign.center),
                const SizedBox(height: 10),
                const SocialLoginsButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
