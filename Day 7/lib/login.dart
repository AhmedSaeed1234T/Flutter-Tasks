import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test/sign_up_screen.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;

  // get emailRegExp => null;

  get _emailController => null;

  get emailRegex => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 450,
                )
              ],
            ),
          ),
          Image(
            image: AssetImage("assets/back_ui.png"),
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Container(
              width: 320,
              height: 570,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 217, 223, 204),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(195, 0, 0, 0),
                      spreadRadius: 12,
                      blurRadius: 12,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.transparent,
                  body: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/logo_ui.png"),
                          Text(
                            "Sign in",
                            style: GoogleFonts.jomolhari(fontSize: 32),
                          ),
                          SizedBox(
                            width: 32,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 74,
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          // ignore: unnecessary_null_comparison
                          if (value!.isEmpty || value == null) {
                            return "Please Enter Your Email agin";
                          } else if (!emailRegex.hasMatch(value)) {
                            return "Sorry , Invalid email format";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "email",
                            hintText: "AhmedSaeed@example.com"),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        obscureText: obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off)),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Forget Password",
                                style: GoogleFonts.jomolhari(fontSize: 14),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0D1117),
                          fixedSize: Size(312, 48),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color(0xFFF8F9FF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(" or create account\t\t"),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignUpScreen();
                              }));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF0D1117),
                              fixedSize: Size(94, 24),
                            ),
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Color(0xFFF8F9FF),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.pushNamed(context, '/Forget Password');
          //   },

          //   child: Text("Forget Password"),

          // ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clickable text'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Clicked!'),
                  content: Text('You clicked on the text.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Closed'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Click here'),
        ),
      ),
    );
  }
}

//another way to add background image

// home: Scaffold(
//   appBar: AppBar(
//       title: Text('Set Background Image'),
//   ),
//   body: DecoratedBox(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("images/img.png"), fit: BoxFit.cover),
//           ),
//           child: Center(
//               child: FlutterLogo(
//             size: 200,
//           )),
//         ),
// ),
  