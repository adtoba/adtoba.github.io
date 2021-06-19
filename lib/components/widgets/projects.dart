import 'package:flutter/material.dart';
import 'package:portfolio/utils/config.dart';
import 'package:portfolio/values/my_projects.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GridView.builder(
        itemCount: myProjects.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width > 750 ? 3 : 2,
            crossAxisSpacing: Config.xMargin(context, 3),
            mainAxisSpacing: Config.yMargin(context, 3),
            childAspectRatio: 1),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            child: GridTile(
                child: myProjects[index].link.startsWith("https://play")
                    ? Image.asset(
                        'assets/images/google-play.png',
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/github-logo.png',
                        fit: BoxFit.cover,
                      ),
                footer: GridTileBar(
                  backgroundColor: Colors.black38,
                  trailing: IconButton(
                      icon: Icon(Icons.link),
                      onPressed: () async {
                        if (await canLaunch(myProjects[index].link)) {
                          launch(myProjects[index].link);
                        }
                      }),
                  title: Text(myProjects[index].title,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: Config.xMargin(context, 3))),
                  subtitle: Expanded(
                    child: Text(myProjects[index].description,
                        softWrap: true,
                        maxLines: 3,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Config.xMargin(
                                context, width > 750 ? 2 : 2.3))),
                  ),
                )),
          );
        });
  }
}
