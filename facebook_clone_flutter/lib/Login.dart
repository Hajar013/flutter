import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'IntroScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Login> {
  Future<FirebaseApp> _initilizefirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
            future: _initilizefirebase(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Loginn();
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }
}

class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}
  String msg='3';
class _LoginnState extends State<Loginn> {
  static Future<User?> Loginep(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
  
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
       print(e.message);

         msg='${e.message}';
      
    }
    return user;
  }
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Container(
      child: Column(children: [
        Container(
          height: screenHeight * 0.35,
          width: screenWidth,
          color: Colors.blue[700],
          child: Icon(
            Icons.facebook_outlined,
            size: screenWidth * 0.2,
            color: Colors.white,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.03),
            child: const Text("Afrikaans * Francais * More...")),
        Padding(
            padding: EdgeInsets.only(
               // top: screenHeight * 0.03,
                left: screenWidth * 0.1,
                right: screenWidth * 0.1),
            child: Column(
              children: [
                Text(msg),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(hintText: "phone or email"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: const InputDecoration(hintText: "password"),
                ),
                GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      color: Colors.blue[700],
                      alignment: Alignment.center,
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    onTap: () async {
                      
                      User? user = await Loginep(
                          email: _emailController.text,
                          password: _passwordController.text,
                          context: context);

                      if (user != null) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => IntroScreen(email: _emailController.text.toString())));
                      }
                    }),
                Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.03),
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(color: Colors.blue),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.03),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "--------------------",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "  or  ",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "--------------------",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: screenHeight * 0.06,
                    width: screenWidth,
                    color: Colors.green[700],
                    alignment: Alignment.center,
                    child: const Text(
                      "Create new Facebook account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, '/signUp'),
                ),
              ],
            )),
      ]),
    );
  }
}
