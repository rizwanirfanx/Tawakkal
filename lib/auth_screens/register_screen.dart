import 'package:flutter/material.dart';
import 'package:hey_taxi/components/Link.dart';
import 'package:hey_taxi/components/banner_component.dart';
import 'package:hey_taxi/components/pill_button.dart';
import 'package:hey_taxi/components/social_logins_buttons.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: TextFormField(
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
                                obscureText: true,
                                decoration: const InputDecoration(
                                  hintText: 'Last Name',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Last Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Last Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Last Name',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const PillButton(text: 'Sign Up'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already Have an Account?'),
		    Link(routeName: '/login', text: ('Login')),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('or', textAlign: TextAlign.center),
                const SizedBox(height: 10),
                const Text('Continue With' , textAlign:  TextAlign.center),
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
