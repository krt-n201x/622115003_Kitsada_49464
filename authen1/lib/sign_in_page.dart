import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('authentication'),
      ),
      body: _buildContent(),
    );
  }
}

Widget _buildContent() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text(
          "Sign in",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 8,
        ),
        ElevatedButton(onPressed: () => _signInAnonymously(), child: Text("Go")),
      ],
    ),
  );
}

Future<void> _signInAnonymously() async {
  try {
    final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    print('${userCredentials.user!.uid}');
  } catch (e) {
    print(e.toString());
  }
}