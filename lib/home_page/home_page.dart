import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade300,
                    child: const Icon(
                      Icons.task_alt,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              const Text(
                "Here are your tasks for the day: ",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
