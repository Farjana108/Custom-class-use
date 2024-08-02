
import 'package:flutter/material.dart';

import 'apply_button.dart';
import 'list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          title: const Text("Job App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: jobNeedPerson.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      width: 380,
                      height: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              "Job Name: ${e.title}",
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Job Description: ${e.jobDisc}",
                            maxLines: 1,
                          ),
                          Text(
                            "Job Requirement: ${e.jobReqir}",
                            maxLines: 1,
                          ),
                          Text("Minimum Experience: ${e.minExp}"),
                          SizedBox(height: 10),
                          Button(),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
