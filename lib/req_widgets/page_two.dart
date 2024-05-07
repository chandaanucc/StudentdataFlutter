import 'package:flutter/material.dart';
import '../basic_widgets/cust_appbar.dart';

class ListPage extends StatelessWidget {
  static List<Map<String, String>> studentData = [];

  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustAppBar(title:'Student List'),
      body: ListView.separated(
        itemCount: studentData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(studentData[index]['name']!),
            subtitle: Text(studentData[index]['subject']!),
            trailing: Text(studentData[index]['dob']!),
            leading:const Icon(Icons.person),

          );
          
        }, separatorBuilder: (BuildContext context, int index) { 
          return const Divider(
            color: Colors.black,
            height: 10,
          );
         },
        
      ),
    );
  }
}