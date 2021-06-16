import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'PROJECTS',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
