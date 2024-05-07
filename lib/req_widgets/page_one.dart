import 'package:exampleproject/db/function/db_functions.dart';
import 'package:flutter/material.dart';

import '../basic_widgets/cust_appbar.dart';
import '../db/models/data_model.dart';
import 'page_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _submitData() async {
    // Add the entered data to a list
    String name = _nameController.text;
    String subject = _subjectController.text;
    String dob = _dobController.text;
    String phone = _phoneController.text;

    if (name.isNotEmpty && subject.isNotEmpty && dob.isNotEmpty && phone.isNotEmpty) {
      ListPage.studentData.add({
        'name': name,
        'subject': subject,
        'dob': dob,
        'phone': phone,
      });

      // ignore: avoid_print
      print('Name: $name\nSubject: $subject\nDOB: $dob\nPhone: $phone');

      final _student = StudentModel(name: name, subject: subject, dob: dob, phone: phone);
      addStudent(_student);

      // Clear the text fields after adding the data
      _nameController.clear();
      _subjectController.clear();
      _dobController.clear();
      _phoneController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: const Text('Submission Successful'),
          ),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      // Show an error snackbar if any field is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: const Text('Please enter all fields'),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustAppBar(title: 'Student'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Student Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Student Name',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _subjectController,
              decoration: const InputDecoration(
                labelText: 'Enter Subject',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _dobController,
              decoration: const InputDecoration(
                labelText: 'Enter the Date of Birth',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Enter Phone Number',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitData,
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
