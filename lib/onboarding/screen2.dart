import 'package:flutter/material.dart';
import 'package:task_management_app/onboarding/custom_button.dart';
import 'package:task_management_app/onboarding/screen3.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/images/hospital1.jpeg'),
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
              height: 130,
            ),
            CustomButton(
              buttonLabel: "Next",
              nextPage: const Onboarding3(),
              btnColor: Colors.blue.shade800,
            )
          ],
        ),
      ),
    );
  }
}
