// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio/components/app/app_drawer.dart';
// import 'package:portfolio/components/app/contact_widget.dart';
// import 'package:portfolio/components/buttons/action_button.dart';
// import 'package:portfolio/pages/projects.dart';
// import 'package:portfolio/style/colors.dart';
// import 'package:portfolio/style/input_style.dart';
// import 'package:portfolio/utils/config.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   PageController _pageController;

//   int _currentIndex = 0;

//   final List<Widget> _pages = [ProjectsPage(), ProjectsPage(), ProjectsPage()];

//   @override
//   void initState() {
//     _pageController = PageController(keepPage: true, initialPage: 0);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> actions = <Widget>[
//       ActionButton(
//           text: 'Home',
//           onPressed: () {
//             _onPageChanged(0);
//           }),
//       ActionButton(
//           text: 'Projects',
//           onPressed: () {
//             _onPageChanged(1);
//           }),
//       ActionButton(
//           text: 'Blog',
//           onPressed: () {
//             _onPageChanged(2);
//           }),
//     ];

//     final size = MediaQuery.of(context).size;
//     final width = size.width;
//     final widthConstraint = 850;

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: false,
//         backgroundColor: Colors.transparent,
//         // title: Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
//         //   child: Row(
//         //     mainAxisSize: MainAxisSize.min,
//         //     children: <Widget>[
//         //       const Text(
//         //         'A',
//         //         style: TextStyle(
//         //             fontSize: 30.0,
//         //             color: Colors.white,
//         //             fontWeight: FontWeight.bold),
//         //       ),
//         //       DefaultTextStyle(
//         //         style: const TextStyle(
//         //           fontSize: 30.0,
//         //         ),
//         //         child: AnimatedTextKit(
//         //           animatedTexts: [
//         //             RotateAnimatedText('H',
//         //                 textStyle: TextStyle(color: Colors.purple)),
//         //           ],
//         //           onTap: () {
//         //             print("Tap Event");
//         //           },
//         //         ),
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         elevation: 0.0,
//         actions: width > widthConstraint ? actions : [],
//       ),
//       drawer: width < widthConstraint ? HomeDrawer() : null,
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(
//               height: Config.yMargin(context, 10),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Expanded(child: AboutWidget()),
//                 Container(
//                   height: Config.yMargin(context, 40),
//                   width: Config.xMargin(context, 40),
//                   alignment: Alignment.center,
//                   decoration:
//                       BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
//                 )
//               ],
//             ),
//             // Expanded(
//             //   flex: 3,
//             //   child: PageViewWidget(
//             //     pageController: _pageController,
//             //     onPageChanged: _onPageChanged,
//             //     physics: BouncingScrollPhysics(),
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }

//   void _onPageChanged(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//     _pageController.animateToPage(index,
//         duration: Duration(milliseconds: 400), curve: Curves.easeOut);
//   }
// }

// class AboutWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     const colorizeColors = [
//       Colors.purple,
//       Colors.blue,
//       Colors.yellow,
//       Colors.red,
//     ];

//     return Container(
//       alignment: Alignment.topLeft,
//       padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text('Hello, I\'m ',
//                 style: TextStyle(
//                     fontSize: Config.xMargin(context, 4),
//                     fontWeight: FontWeight.bold,
//                     fontStyle: FontStyle.normal,
//                     color: AppColors.white)),
//             AnimatedTextKit(
//               animatedTexts: [
//                 ColorizeAnimatedText(
//                   'Adebisi Adetoba',
//                   textStyle: TextStyle(
//                       fontSize: Config.xMargin(context, 6),
//                       fontWeight: FontWeight.bold,
//                       fontStyle: FontStyle.normal,
//                       color: AppColors.white),
//                   colors: colorizeColors,
//                 ),
//               ],
//               isRepeatingAnimation: true,
//               onTap: () {
//                 print("Tap Event");
//               },
//             ),
//             SizedBox(height: 30),
//             Text(
//               'I’m a Staff Software Engineer currently working as Tech Lead of the Doc Squad at Algolia. I mostly do front-end development, and I’m a Vue.js and CSS nerd. I can\'t shut up about test-driven development and utility-first CSS. I also share what I learn on my blog frontstuff.io, or at meetups and conferences.',
//               style: TextStyle(
//                   fontSize: Config.xMargin(context, 2),
//                   fontWeight: FontWeight.normal,
//                   fontStyle: FontStyle.normal,
//                   color: AppColors.greyText),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             ContactWidget()
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PageViewWidget extends StatefulWidget {
//   PageViewWidget({this.onPageChanged, this.pageController, this.physics});

//   final Function(int) onPageChanged;
//   final PageController pageController;
//   final ScrollPhysics physics;
//   @override
//   _PageViewWidgetState createState() => _PageViewWidgetState();
// }

// class _PageViewWidgetState extends State<PageViewWidget> {
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> _pages = [
//       RightTab(
//         physics: widget.physics,
//       ),
//       ProjectsPage(),
//       ProjectsPage()
//     ];
//     return PageView(
//       controller: widget.pageController,
//       scrollDirection: Axis.vertical,
//       children: _pages,
//       // physics: widget.physics,
//       pageSnapping: false,
//       onPageChanged: widget.onPageChanged,
//     );
//   }
// }

// class RightTab extends StatelessWidget {
//   RightTab({this.physics});

//   final ScrollPhysics physics;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListView.separated(
//           itemCount: 2,
//           separatorBuilder: (context, index) => SizedBox(height: 10),
//           shrinkWrap: true,
//           padding: EdgeInsets.only(top: 30, right: 90, left: 90, bottom: 30),
//           physics: physics,
//           itemBuilder: (context, index) {
//             return Container(
//               padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Javascript'.toUpperCase(),
//                     style: AppInputStyles.headingStyle,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Dinero.js',
//                     style: AppInputStyles.itemTitleStyle,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'An immutable JavaScript library to create, calculate and format money',
//                     style: AppInputStyles.itemSubtitleStyle,
//                   ),
//                   SizedBox(height: 20),
//                   IconButton(icon: Icon(Icons.star_border), onPressed: () {})
//                 ],
//               ),
//               decoration: BoxDecoration(
//                   color: Color(0xff202022),
//                   borderRadius: BorderRadius.circular(1)),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
