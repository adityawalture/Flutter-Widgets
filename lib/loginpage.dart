import 'package:flutter/material.dart';
import 'package:personal_project/functions/authfunc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPageAuth extends StatefulWidget {
  const LoginPageAuth({Key? key}) : super(key: key);

  @override
  State<LoginPageAuth> createState() => _LoginPageAuthState();
}

class _LoginPageAuthState extends State<LoginPageAuth> {
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;
  String email = '';
  String password = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authenticate'),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isLogin
                  ? TextFormField(
                      key: ValueKey('Username'),
                      decoration: InputDecoration(hintText: 'Enter Username'),
                      validator: (value) {
                        if (value.toString().length < 3) {
                          return "Username is small";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              TextFormField(
                key: ValueKey('Email'),
                decoration: InputDecoration(hintText: 'Enter Email'),
                validator: (value) {
                  if (!(value.toString().contains('@'))) {
                    return "invalid email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('Password'),
                decoration: InputDecoration(hintText: 'Enter Password'),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return "password is too small";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    signup(email, password);
                  }
                },
                child: isLogin ? Text('Login') : Text('Sign Up'),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
                child: isLogin
                    ? Text("Don't have an account? SignUp")
                    : Text('Already Signed Up? Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
