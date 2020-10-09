import 'package:flutter/material.dart';
import '../services/googleSignIn.dart';
import '../screens/index.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(size: 150),
              SizedBox(height: 50),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(0.0),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0, color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.all(Radius.circular(60.0))
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(60)),
        splashColor: Theme.of(context).colorScheme.secondary,
        //highlightColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage("images/google_logo.png"), height: 35.0),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    color:  Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          signInWithGoogle().then((result) {
            if (result != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Index();
                  },
                ),
              );
            }
          });
        },
      )
    );
  }
}