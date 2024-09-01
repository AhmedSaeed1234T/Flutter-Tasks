import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: ' e-mail', hintText: "AhmedDarwish@example.com"),
            ),
            TextField(
              decoration: InputDecoration(labelText: ' password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
            SizedBox(height: 20),
            Text('Or log in through'),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/screen/facebook_5968764.png',
                    width: 38, height: 38),
                SizedBox(height: 16),
                Image.asset('assets/screen/instagram_2111463.png',
                    width: 38, height: 38),
                SizedBox(height: 16),
                Image.asset('assets/screen/twitter_5968830.png',
                    width: 38, height: 38),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
