import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Login.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});
  @override
  signUpState createState() {
    return signUpState();
  }
}

class signUpState extends State<signUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    //const inputDecoration = const InputDecoration(hintText: "phone or email");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook",
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: BackButton(),
          elevation: 0,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /* const Padding(
            padding: EdgeInsets.only(top: 10),
          ),*/
              Container(
                height: screenHeight * 0.23,
                width: screenWidth,
                color: Colors.blue[700],
                child: Icon(
                  Icons.facebook_outlined,
                  size: screenWidth * 0.15,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeight * 0.03,
                    left: screenWidth * 0.1,
                    right: screenWidth * 0.1),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Name',
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        print("Saving the value ${value}");
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        print("Saving the value ${value}");
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        print("Saving the value ${value}");
                      },
                      obscureText: true,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please re-enter your password';
                        } else if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        print("Saving the value ${value}");
                      },
                      obscureText: true,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    String confirmPassword = _confirmPasswordController.text;
                    if (password == confirmPassword) {
                      print('User registered: $name, $email, $password');
                    } else {
                      print('Passwords do not match.');
                    }
                    if (_formKey.currentState!.validate()) {
                    //  Navigator.pushNamed(context, '/login');
                      _formKey.currentState!.save();
                    }
                     signUp(_emailController.text,
                                    _passwordController.text);
                              
                  },
                  child: const Text('Sign Up', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
                ),
              ),
            ],
          ),
        )
      ));
  }

  void signUp(String email, String password) async {
    CircularProgressIndicator();
    if (_formKey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {postDetailsToFirestore(email)})
          // ignore: body_might_complete_normally_catch_error
          .catchError((e) {
            print(e);
          });
    }
  }

  postDetailsToFirestore(String email) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    print(firebaseFirestore);
    var user = _auth.currentUser;
    CollectionReference ref = FirebaseFirestore.instance.collection('users');
    ref.doc(user!.uid).set({'email': _emailController.text, });
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }
}





