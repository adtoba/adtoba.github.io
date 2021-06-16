import 'package:flutter/material.dart';
import 'package:portfolio/components/app/ballon_generator.dart';
import 'package:portfolio/components/app/contact_widget.dart';
import 'package:portfolio/components/app/navigation_bar.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/home.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/skills_page.dart';
import 'package:portfolio/pages/work_page.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/utils/config.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  int currentIndex = 0;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.darkColor,
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          color: Colors.black,
          child: Column(
            children: [
              NavigationItem(
                title: 'Home',
                onTap: () {
                  Navigator.pop(context);
                  onPageChanged(0);
                },
              ),
              NavigationItem(
                title: 'About',
                onTap: () {
                  Navigator.pop(context);
                  onPageChanged(1);
                },
              ),
              NavigationItem(
                title: 'My Skills',
                onTap: () {
                  Navigator.pop(context);
                  onPageChanged(2);
                },
              ),
              NavigationItem(
                title: 'Work',
                onTap: () {
                  Navigator.pop(context);
                  onPageChanged(3);
                },
              ),
              NavigationItem(
                title: 'Contact',
                onTap: () {
                  Navigator.pop(context);
                  onPageChanged(4);
                },
              ),
              SizedBox(
                height: Config.yMargin(context, 5),
              ),
              ContactWidget()
            ],
          ),
        ),
      ),
      appBar: width > 750
          ? PreferredSize(child: Container(), preferredSize: Size(0, 0))
          : AppBar(
              // preferredSize: Size(double.infinity, Config.yMargin(context, 10)),
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Icons.menu,
                  size: Config.xMargin(context, 5),
                ),
                onPressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
              ),
            ),
      body: Stack(
        children: [
          Container(
            child: width > 750
                ? Row(
                    children: [
                      NavigationBar(
                        onPageChanged: onPageChanged,
                        index: currentIndex,
                      ),
                      Expanded(
                          child: PageView(
                        controller: _pageController,
                        pageSnapping: false,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        children: [
                          Home(),
                          AboutPage(),
                          SkillsPage(),
                          WorkPage(),
                          ContactsPage()
                        ],
                      )),
                    ],
                  )
                : Column(
                    children: [
                      Expanded(
                          child: PageView(
                        controller: _pageController,
                        pageSnapping: false,
                        onPageChanged: onPageChanged,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        children: [
                          Home(),
                          AboutPage(),
                          SkillsPage(),
                          WorkPage(),
                          ContactsPage()
                        ],
                      )),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  void onPageChanged(int index) {
    double width = MediaQuery.of(context).size.width;
    if (width > 750) {
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      setState(() {
        currentIndex = index;
      });
    } else {
      _pageController.jumpToPage(index);
      setState(() {
        currentIndex = index;
      });
    }
  }
}

class NavigationItem extends StatefulWidget {
  NavigationItem({this.title, this.onTap});

  final String title;
  final Function onTap;

  @override
  _NavigationItemState createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  Color color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          color = AppColors.lightGreen;
        });
      },
      onExit: (event) {
        setState(() {
          color = Colors.transparent;
        });
      },
      child: ListTile(
        title: Text(widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: Config.xMargin(context, 3))),
        onTap: widget.onTap,
        tileColor: color,
      ),
    );
  }
}
