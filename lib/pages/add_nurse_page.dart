import 'package:flutter/material.dart';

class AddNursePage extends StatefulWidget {
  static const String routeName = 'addnurse';
  const AddNursePage({super.key});

  @override
  State<AddNursePage> createState() => _AddNursePageState();
}

class _AddNursePageState extends State<AddNursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Nurses'),
        ),
      body:Center(
        child: Text('Add nurses'),
      )
    );
  }
}
