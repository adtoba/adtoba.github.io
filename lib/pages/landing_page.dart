// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:portfolio/components/widgets/contact_widget.dart';
// import 'package:portfolio/components/widgets/round_button.dart';
// import 'package:portfolio/components/widgets/tab_item.dart';
// import 'package:portfolio/style/colors.dart';
// import 'package:portfolio/style/input_style.dart';

// class LandingPage extends StatefulWidget {
//   @override
//   _LandingPageState createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   bool wideScreen = true;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     print('Current width: $width');

//     return Scaffold(
//       backgroundColor: AppColors.backgroundColor,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.transparent,
//       ),
//       drawer: width < 820
//           ? Drawer(
//               child: Column(
//                 children: [],
//               ),
//             )
//           : null,
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           print(constraints.maxWidth);
//           if (constraints.maxWidth > 820) {
//             return Scrollbar(child: WideLayout());
//           } else {
//             return NormalLayout();
//           }
//         },
//       ),
//     );
//   }
// }

// class NormalLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         AboutTab(),
//         Padding(
//           padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
//           child: Text(
//             'Projects'.toUpperCase(),
//             style: AppInputStyles.headingStyle2,
//           ),
//         ),
//         RightTab()
//       ],
//     );
//   }
// }

// class WideLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(flex: 3, child: Center(child: AboutTab())),
//         SizedBox(width: 50),
//         Expanded(flex: 4, child: RightTab())
//       ],
//     );
//   }
// }

// class AboutTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(30),
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Text(
//               'Hello, I\'m Adebisi Adetoba.',
//               textAlign: TextAlign.start,
//               style: AppInputStyles.welcomeText,
//             ),
//             SizedBox(height: 30),
//             Text(
//               'I’m a Staff Software Engineer currently working as Tech Lead of the Doc Squad at Algolia. I mostly do front-end development, and I’m a Vue.js and CSS nerd. I can\'t shut up about test-driven development and utility-first CSS. I also share what I learn on my blog frontstuff.io, or at meetups and conferences.',
//               style: AppInputStyles.aboutText,
//               textScaleFactor: 1.2,
//             ),
//             SizedBox(height: 30),
//             RoundButton(
//               text: 'Hire me',
//             ),
//             SizedBox(height: 60),
//             ContactWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TabItem extends StatefulWidget {
//   TabItem({this.text});

//   final String text;
//   @override
//   _TabItemState createState() => _TabItemState();
// }

// class _TabItemState extends State<TabItem> with TickerProviderStateMixin {
//   AnimationController controller;
//   Animation<double> _animation;

//   double width = 50;

//   @override
//   void initState() {
//     super.initState();
//     controller =
//         AnimationController(duration: Duration(milliseconds: 350), vsync: this)
//           ..addListener(() {
//             setState(() {});
//           })
//           ..addStatusListener((status) {
//             setState(() {});
//             print('Animation loading');
//           });
//     _animation = Tween<double>(begin: 40, end: 80)
//         .chain(CurveTween(curve: Curves.easeOut))
//         .animate(controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onHover: (PointerHoverEvent event) {
//         controller.forward(from: 70);
//       },
//       onExit: (val) {
//         controller.stop();
//       },
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             controller.value = 80;
//             print('Value done');
//           });
//           controller.stop();
//         },
//         child: Row(
//           children: [
//             Container(height: 2, width: _animation.value, color: Colors.white),
//             SizedBox(
//               width: 5,
//             ),
//             Text(
//               widget?.text?.toUpperCase() ?? '',
//               style: TextStyle(color: Colors.white),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class RightTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListView.separated(
//           itemCount: 2,
//           separatorBuilder: (context, index) => SizedBox(height: 10),
//           shrinkWrap: true,
//           padding: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 30),
//           physics: BouncingScrollPhysics(),
//           itemBuilder: (context, index) {
//             return Container(
//               padding: EdgeInsets.all(40),
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
//                   )
//                 ],
//               ),
//               decoration: BoxDecoration(
//                   color: Color(0xff202022),
//                   borderRadius: BorderRadius.circular(4)),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
