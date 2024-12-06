import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vivian/appassets.dart';
import 'package:vivian/scaledassetimage.dart';
import 'package:vivian/signuppage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _username = '';
  String _email = '';
  String _phoneNumber = '';
  String _password = '';
  String _confirmPassword = '';
  final bool _isPasswordVisible = false;
  final bool _isConfirmPasswordVisible = false;
  bool _hasEightChars = false;
  bool _hasSpecialChar = false;
  bool _hasNumber = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Row(
          children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue[50],
                child: Image.asset(AppAssets.soundspherenewlogo)),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Sound',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown)),
              TextSpan(
                  text: 'sphere',
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.brown))
            ])),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {
                _showSignUpDialog(context);
              },
              child: Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Stack(
        children: [
          // Column to hold two containers one on top of the other
          SingleChildScrollView(
            child: Column(
              children: [
                // First Container
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Fixed height for the first container
                  color: Colors.blue[50],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Be Prolific',
                              style:
                                  TextStyle(fontSize: 40, color: Colors.brown),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              formatPararaph(
                                  "DistroKid is the easiest way for Musicians to get music into Spotify, Apple, Amazon, Tidal, TikTok, YouTube, and more Unlimited uploads, keep 100% of your earnings, and more features than any other music distributor."),
                              style:
                                  TextStyle(color: Colors.brown, fontSize: 30),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: Text(
                            ' Sign Up! ',
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ),
                // Second Container
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Fixed height for the second container
                  color: Colors.white,
                  child: Center(child: Text('Container 3')),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Fixed height for the second container
                  color: Colors.blue[50],
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Get your music everywhere.",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.brown),
                              ),
                              Text(
                                formatPararaph(
                                    "We'll get your music into Spotify, Apple Music, TikTok, Pandora, Amazon, Instagram, YouTube, Tidal, iHeartRadio, Deezer, plus a ton of other stores & streaming services. "),
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Column(
                                children: [
                                  ScaledAssetImage(
                                      assetPath: AppAssets.amazonmusiclogo),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ScaledAssetImage(
                                      assetPath: AppAssets.applemusiclogo),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ScaledAssetImage(
                                      assetPath: AppAssets.deezermusiclogo),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ScaledAssetImage(
                                      assetPath: AppAssets.spotifymusiclogo),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  ScaledAssetImage(
                                      assetPath: AppAssets.tidalmusiclogo),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.5, // Fixed height for the second container
                  color: Colors.white,
                  child: Center(child: Text('Container 5')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showSignUpDialog(BuildContext context) async {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController =
        TextEditingController();

    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Sign in'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),
                  ),
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Sign in"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("close"),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text("Don'\t have an account?"),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          },
                          child: const Text('Sign Up')),
                    ],
                  ))
                ],
              ),
            ],
          );
        });
  }

  String formatPararaph(String input) {
    List<String> words = input.split(' ');

    List<String> formattedLines = [];

    List<String> currentLine = [];

    for (String word in words) {
      currentLine.add(word);

      if (currentLine.length == 7) {
        formattedLines.add(currentLine.join(' '));
        currentLine.clear();
      }
    }

    if (currentLine.isNotEmpty) {
      formattedLines.add(currentLine.join(' '));
    }
    return formattedLines.join('\n');
  }
}


 // Dialog Box Overlay
          /*
          Positioned(
            left: 1100, // Adjust left position
            right: 150, // Adjust right position
            top: MediaQuery.of(context).size.height * 0.15, // Fixed top position
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 500, // Fixed height for the dialog box
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('This is a dialog box',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('This dialog spans both containers.'),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Close the dialog or perform an action
                      },
                      child: Text('Close'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          */