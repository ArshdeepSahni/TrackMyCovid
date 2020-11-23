// import 'package:aws_covid_care/screens/state_wrapper_screen.dart';
// import 'package:aws_covid_care/utils/constants.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   PageController _pageController;
//   bool _showFAB;
//   List<String> _imagesURLs;
//   List<String> _texts;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _showFAB = false;
//     _imagesURLs = [
//       "assets/images/o1.png",
//       "assets/images/o2.png",
//       "assets/images/o4.png",
//       "assets/images/o3.png",
//     ];
//     _texts = [
//       'We can together fight COVID 19',
//       'Take Preventions and Precautions',
//       'Stay at Home',
//       'Senitize your Hands frequently'
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double screenHeight = MediaQuery.of(context).size.height;
//     final double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       // backgroundColor: Colors.grey.shade50,
//       floatingActionButton: _showFAB
//           ? FloatingActionButton.extended(
//               elevation: 10.0,
//               onPressed: () async {
//                 // Below code will a make boolean value in the device memory saying user have
//                 // gone through the onboard screens.
//                 SharedPreferences prefs = await SharedPreferences.getInstance();
//                 prefs.setBool(AppConstants.firstUser, true).then((value) {
//                   print("Saved Preference as a value of = " + value.toString());
//                 });
//                 Navigator.pushReplacement(context,
//                     MaterialPageRoute(builder: (_) => StateWrapperScreen()));
//               },
//               backgroundColor: Colors.black,
//               icon: Icon(
//                 Icons.check,
//                 color: Colors.white,
//               ),
//               label: Text(
//                 "Let's Go",
//                 style: TextStyle(color: Colors.white),
//               ),
//             )
//           : null,
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [Colors.white, Colors.blueAccent[200], Colors.white])),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 0.0),
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: screenHeight * 0.8,
//                   child: PageView(
//                     controller: _pageController,
//                     children: List.generate(
//                         _imagesURLs.length,
//                         (index) => Padding(
//                               padding: const EdgeInsets.all(20.0),
//                               child: Column(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.white10,
//                                           blurRadius: 30.0, // soften the shadow
//                                           spreadRadius: 0.0, //extend the shadow
//                                           offset: Offset(
//                                             0.0, // Move to right 10  horizontally
//                                             0.0, // Move to bottom 5 Vertically
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     padding: EdgeInsets.all(10),
//                                     height: screenHeight * 0.6,
//                                     margin: EdgeInsets.symmetric(
//                                         horizontal: 10, vertical: 4),
//                                     child: Image.asset(
//                                       _imagesURLs[index],
//                                       fit: BoxFit.fitHeight,
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                         boxShadow: [
//                                           BoxShadow(
//                                             color: Colors.white,
//                                             blurRadius:
//                                                 10.0, // soften the shadow
//                                             spreadRadius:
//                                                 0.0, //extend the shadow
//                                             offset: Offset(
//                                               0.0, // Move to right 10  horizontally
//                                               2.0, // Move to bottom 5 Vertically
//                                             ),
//                                           )
//                                         ],
//                                         borderRadius:
//                                             BorderRadius.circular(100),
//                                         gradient: LinearGradient(
//                                             end: Alignment.bottomRight,
//                                             begin: Alignment.topLeft,
//                                             colors: [
//                                               Colors.white,
//                                               Colors.blueAccent[100],
//                                               Colors.white,
//                                             ])),
//                                     padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                                     height: screenHeight * 0.1,
//                                     width: screenWidth,
//                                     child: Center(
//                                         child: Text(
//                                       _texts[index],
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black),
//                                     )),
//                                   ),
//                                 ],
//                               ),
//                             )),
//                     onPageChanged: (int _pageIndex) {
//                       if (_pageIndex == 3) {
//                         setState(() {
//                           _showFAB = true;
//                         });
//                       } else
//                         setState(() {
//                           _showFAB = false;
//                         });
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 32.0),
//                 Container(
//                   child: SmoothPageIndicator(
//                     controller: _pageController,
//                     count: 4,
//                     effect: WormEffect(
//                         activeDotColor: Colors.blueAccent,
//                         dotColor: Colors.blue.shade50),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
