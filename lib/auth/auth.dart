import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final _firebaseAuthInstance = FirebaseAuth.instance;

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();

  bool isLogin = true;
  String enteredEmail = '';
  String enteredPassword = '';

  void _submit() async {
    bool isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    var response;

    try {
      if (isLogin) {
        response = await _firebaseAuthInstance.signInWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );
      } else {
        response = await _firebaseAuthInstance.createUserWithEmailAndPassword(
          email: enteredEmail,
          password: enteredPassword,
        );
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message!)));
    } catch (errorrrrr) {
      // print('got an error $errorrrrr');
    } finally {
      // print('the response $response');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Text(
                  isLogin ? "Login" : "Register",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Image.asset('assets/images/login-smart-art.jpg'),
                Card(
                  // color: Colors.white,
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _form,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            // email input
                            TextFormField(
                              autocorrect: false,
                              textCapitalization: TextCapitalization.none,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(label: Text('Email')),
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Email can\'t be empty!';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                enteredEmail = value!;
                              },
                            ),

                            const Gap(8),

                            // password input
                            TextFormField(
                              autocorrect: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                label: Text('Password'),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null ||
                                    value.trim().isEmpty ||
                                    value.length < 6) {
                                  return 'Password can\'t be empty!';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                enteredPassword = value!;
                              },
                            ),

                            const Gap(16),
                            // login button
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurpleAccent,
                                foregroundColor: Colors.white,
                                minimumSize: const Size.fromHeight(50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: _submit,
                              child: Text(
                                isLogin ? 'Login' : 'Create Account',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),

                            // sign up button
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  isLogin = !isLogin;
                                });
                              },
                              child: Text(
                                isLogin
                                    ? 'Don\'t have an account? Sign up'
                                    : 'Already have an account? Login',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
