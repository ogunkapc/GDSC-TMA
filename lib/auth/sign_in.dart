import 'package:flutter/material.dart';
import 'package:task_management_app/auth/sign_up.dart';
import 'package:task_management_app/home_page/home_page.dart';
import 'package:task_management_app/onboarding/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16, bottom: 25, left: 8),
                child: Text(
                  "Hi 👋 there Welcome back",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        filled: true,
                        fillColor: Colors.blue.shade50,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "password is required";
                          } else {
                            return null;
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          filled: true,
                          fillColor: Colors.blue.shade50,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                  buttonLabel: "Submit",
                  submit: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        // return const Placeholder(
                        //   color: Colors.white,
                        //   child: Center(
                        //     child: CircularProgressIndicator(),
                        //   ),
                        // );
                        return const HomePage();
                      }));
                    } else {
                      print("Error!!!");
                    }
                  }),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => const RegisterScreen()));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
