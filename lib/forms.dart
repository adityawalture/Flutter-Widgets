import 'package:flutter/material.dart';
import 'package:personal_project/bottomnavBar.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({Key? key}) : super(key: key);

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  final _formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  //--------------------------function-----------------//

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Forms Page'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/gamer.jpg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 93, 234, 234)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 104, 91).withOpacity(0.8),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter First Name',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      key: const ValueKey(
                        'firstname',
                      ),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'First name should not be empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        firstname == value.toString();
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 104, 91).withOpacity(0.8),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Last Name',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      key: const ValueKey('lastname'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Last name should not be empty';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        lastname == value.toString();
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 104, 91).withOpacity(0.8),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      key: const ValueKey('email'),
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return 'Enter email';
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) {
                        email == value.toString();
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 190, 104, 91).withOpacity(0.8),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if (value.toString().length <= 5) {
                        return 'Minimum length should be 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password == value.toString();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 93, 234, 234).withOpacity(0.9))),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
