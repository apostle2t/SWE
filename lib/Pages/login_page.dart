// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:myapp/Route/appRoute.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   String _displayText = '';
//   final String _fullText = "Improve Your Dictionary Experience";
//   int _currentIndex = 0;
//   late Timer _timer;

//   @override
//   void initState() {
//     super.initState();
//     // Start the typing animation when the page loads
//     _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
//       if (_currentIndex < _fullText.length) {
//         setState(() {
//           _displayText = _fullText.substring(0, _currentIndex + 1);
//           _currentIndex++;
//         });
//       } else {
//         timer.cancel(); // Stop when the full text is displayed
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel(); // Clean up the timer
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       // Added for white text visibility
//       body: SafeArea(
//         // Ensures UI is within the visible screen
//         child: SingleChildScrollView(
//           // Allows scrolling when keyboard appears
//           child: Center(
//             // Centers content properly
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height: screenHeight * 0.1), // Top spacing

//                 Text(
//                   "Lexify",
//                   style: TextStyle(
//                     fontSize: screenWidth * 0.15,
//                     fontWeight: FontWeight.w400,
//                     fontFamily: 'ImperialScript',
//                     color: Colors.white,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: screenHeight * 0.04),

//                 // Animated typing text
//                 Text(
//                   _displayText,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: screenWidth * 0.05,
//                     fontStyle: FontStyle.italic,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.08),

//                 Container(
//                   width: screenWidth * 0.85, // Adjust width for responsiveness
//                   padding: EdgeInsets.all(screenWidth * 0.05),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 5,
//                         offset: Offset(2, 2),
//                       ),
//                     ],
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min, // Prevents excessive height
//                     children: [
//                       Align(
//                         alignment: Alignment.topCenter,
//                         child: Text(
//                           "Email",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.05,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.01),
//                       SizedBox(
//                         width: double.infinity,
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: "Email",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             filled: true,
//                             fillColor: Colors.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.02),
//                       Align(
//                         alignment: Alignment.topCenter,
//                         child: Text(
//                           "Password",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.05,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.01),
//                       SizedBox(
//                         width: double.infinity,
//                         child: TextField(
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             hintText: "Password",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                             filled: true,
//                             fillColor: Colors.white,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: screenHeight * 0.03),
//                       SizedBox(
//                         width: double.infinity,
//                         height: screenHeight * 0.07,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context)
//                                 .pushReplacementNamed(AppRoutes.homepage);
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.black,
//                             foregroundColor: Colors.white,
//                           ),
//                           child: const Text("Login"),
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment
//                             .spaceBetween, // Spaces items evenly
//                         children: [
//                           TextButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Forgot Password?",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pushReplacementNamed(
//                                   AppRoutes.createAccount);
//                             },
//                             child: Text(
//                               "Create Account",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),

//                 SizedBox(height: screenHeight * 0.1), // Bottom spacing
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:myapp/Route/appRoute.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _displayText = '';
  final String _fullText = "Improve Your Dictionary Experience";
  int _currentIndex = 0;
  late Timer _timer;

  // FocusNodes for both TextFields
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  // TextEditingControllers for both TextFields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Start the typing animation when the page loads
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_currentIndex < _fullText.length) {
        setState(() {
          _displayText = _fullText.substring(0, _currentIndex + 1);
          _currentIndex++;
        });
      } else {
        timer.cancel(); // Stop when the full text is displayed
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Clean up the timer
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true, // Allow layout to adjust for keyboard
      backgroundColor: Colors.black, // Match the background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.1), // Top spacing

                Text(
                  "Lexify",
                  style: TextStyle(
                    fontSize: screenWidth * 0.15,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'ImperialScript',
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.04),

                // Animated typing text
                Text(
                  _displayText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: screenHeight * 0.08),

                Container(
                  width: screenWidth * 0.85, // Adjust width for responsiveness
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          focusNode: emailFocusNode,
                          controller: emailController,
                          onTap: () {
                            FocusScope.of(context).requestFocus(emailFocusNode);
                          },
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          focusNode: passwordFocusNode,
                          controller: passwordController,
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(passwordFocusNode);
                          },
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      SizedBox(
                        width: double.infinity,
                        height: screenHeight * 0.07,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed(AppRoutes.homepage);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Login"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed(
                                  AppRoutes.createAccount);
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.1), // Bottom spacing
              ],
            ),
          ),
        ),
      ),
    );
  }
}
