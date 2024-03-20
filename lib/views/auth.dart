import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/headings.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void submit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Heading('Login into your account'),
            const Text(
              'Welcome back to your account. Login and join us on the other side',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email Address',
              ),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
            ),
            ElevatedButton(
              onPressed: submit,
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: 'New to Habit?'),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
