import 'package:facebook_app/sign_screen.dart';
import 'package:facebook_app/time_line_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _validateForm(){
    final _form = _formKey.currentState;
    return _form!.validate() ? true: false;
  }
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                    'assets/images/fac.jpg',
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      'العربية',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                      'Francais',
                    style: TextStyle(color: Colors.black87),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text('More...', style: TextStyle(color: Colors.blueAccent),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (text)=>
                        text!.isEmpty ? 'Email Cannot in Empty': null,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Phone or email',
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        validator: (text)=>
                        text!.isEmpty ? 'Password Cannot in Empty': null,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _obscureText,
                        decoration:  InputDecoration(
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText =! _obscureText;

                              });
                            },
                            icon: Icon(_obscureText? Icons.remove_red_eye_sharp: Icons.visibility_off_sharp,color: Colors.grey),
                          ),
                        ),

                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.blue,
                        child: MaterialButton(
                          onPressed: (){
                            if(_validateForm()){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const TimeLineScreen()),
                              );
                            }

                          },
                          child: const Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () { },
                        child: const Text('Forgot Password?'),
                      ),
                      const SizedBox(
                        height: 90.0,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Divider(
                            color: Colors.black,
                          ),
                          Text(
                            'OR',
                            style: TextStyle(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 90.0,
                      ),
                      Container(
                        width: 250,
                        height: 40.0,
                        color: Colors.green[400],
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignScreen()),
                            );
                          },
                          child: const Text(
                            'Create New Facebook Account',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
