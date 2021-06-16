import 'package:flutter/material.dart';
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
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: width > 750 ? 4 : 2,
              mainAxisSpacing: Config.yMargin(context, 2),
              crossAxisSpacing: Config.yMargin(context, 2)),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.green,
            );
          }),
    );
  }
}
