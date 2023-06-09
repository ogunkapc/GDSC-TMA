import 'package:flutter/material.dart';
import 'package:task_management_app/completed_task/completed_task_screen.dart';

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
                    child: IconButton(
                      icon: const Icon(Icons.task_alt),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return const CompletedTaskPage();
                        }));
                      },),
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
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Complete Daily Exercise",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                            SizedBox(height: 8.0,),
                            Text("This task has to be completed today!! This task has to be completed today!! This task has to be completed today!! This task has to be completed today!! This task has to be completed today!!", style: TextStyle(fontSize: 16, color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
