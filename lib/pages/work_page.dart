import 'package:flutter/material.dart';
import 'package:portfolio/components/widgets/projects.dart';
import 'package:portfolio/utils/config.dart';

class WorkPage extends StatefulWidget {
  @override
  _WorkPageState createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(child: ProjectsList()));
  }
}
