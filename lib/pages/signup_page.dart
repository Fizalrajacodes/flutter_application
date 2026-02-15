import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: "Name")),
            SizedBox(height: 10),
            TextField(decoration: InputDecoration(labelText: "Email")),
            SizedBox(height: 10),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: "Password")),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/login");
              },
              child: Text("Create Account"),
            )
          ],
        ),
      ),
    );
  }
}
