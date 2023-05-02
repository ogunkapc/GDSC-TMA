import 'package:flutter/material.dart';
import 'package:task_management_app/auth/sign_in.dart';
import 'package:task_management_app/auth/sign_up.dart';
import 'package:task_management_app/onboarding/custom_button.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/hospital2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Welcome to GDSC TMA",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue.shade800),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "This app allows you to organise your tasks for the day.This app allows you to organise your tasks for the day.This app allows you to organise your tasks for the day.This app allows you to organise your tasks for the day.This app allows you to organise your tasks for the day.This app allows you to organise your tasks for the day.",
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              buttonLabel: "Register",
              nextPage: const RegisterScreen(),
              btnColor: Colors.blue.shade800,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              buttonLabel: "Login",
              nextPage: const LoginScreen(),
              btnColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
