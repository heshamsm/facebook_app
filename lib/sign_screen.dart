import 'package:facebook_app/time_line_screen.dart';
import 'package:flutter/material.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  _SignScreenState createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _validateForm(){
    final _form = _formKey.currentState;
    return _form!.validate() ? true: false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      validator: (text)=>
                      text!.isEmpty ? 'Name Cannot in Empty': null,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        hintText: 'Name',
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      validator: (text)=>
                      text!.isEmpty ? 'Email Cannot in Empty': null,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      validator: (text)=>
                      text!.isEmpty ? 'Password Cannot in Empty': null,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      validator: (text)=>
                      text!.isEmpty ? 'Password Cannot in Empty': null,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Confirm Password',
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.blue,
                      child: MaterialButton(
                        onPressed: () {
                          if(_validateForm()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TimeLineScreen()),
                            );
                          }
                        },
                        child: const Text(
                          'REGISTER',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Login',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
