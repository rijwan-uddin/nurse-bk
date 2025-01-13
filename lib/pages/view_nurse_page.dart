import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewNursePage extends StatefulWidget {
  static const String routeName = 'viewnurse';
  const ViewNursePage({super.key});

  @override
  State<ViewNursePage> createState() => _ViewNursePageState();
}

class _ViewNursePageState extends State<ViewNursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('View Nurses'),
        ),
        body:Center(
          child: Text('Add nurses'),
        )
    );
  }
}
