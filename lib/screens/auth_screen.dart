import 'package:flutter/material.dart';
import 'package:flutter_firebase/app_state_container.dart';

class AuthScreen extends StatefulWidget {
  @override
  AuthScreenState createState() {
    return AuthScreenState();
  }
}

class AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final container = AppStateContainer.of(context);
    return Container(
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          onPressed: () => container.logIntoFirebase(),
          color: Colors.blue[700],
          textColor: Colors.white,
          child: Text('Login With Google'),
        ),
      ),
    );
  }
}
