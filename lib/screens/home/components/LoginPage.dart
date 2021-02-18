// import 'package:flutter/material.dart';
// import 'package:shop_app/PageHome.dart';
// import 'package:shop_app/screens/home/components/Daftar.dart';

// class Login extends StatefulWidget {
//   Login({Key key}) : super(key: key);
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   TextEditingController txtUsername = new TextEditingController();
//   TextEditingController txtPassword = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.all(28.0),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [
//             Colors.orange,
//             Colors.lightBlueAccent,
//           ]),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 100.0,
//               height: 80.0,
//               decoration: BoxDecoration(),
//               child: Padding(
//                   padding: EdgeInsets.only(top: 10.0),
//                   child: Image.asset(
//                     "assets/images/logo.png",
//                   )),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Text(
//               "LOGIN",
//               style: TextStyle(fontSize: 20, color: Colors.black),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             TextFormField(
//               controller: txtUsername,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black87)),
//                 prefixIcon: Icon(
//                   Icons.person,
//                   size: 40,
//                 ),
//                 hintText: "Masukan Nama",
//                 hintStyle: TextStyle(color: Colors.black87),
//                 labelText: "Nama",
//                 labelStyle: TextStyle(color: Colors.black87),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: txtPassword,
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black)),
//                 prefixIcon: Icon(
//                   Icons.lock,
//                   size: 40,
//                 ),
//                 hintText: "Masukan Password",
//                 hintStyle: TextStyle(color: Colors.black),
//                 labelText: "Pssword",
//                 labelStyle: TextStyle(color: Colors.black),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ButtonTheme(
//               minWidth: double.infinity,
//               child: RaisedButton(
//                   onPressed: () {
//                     String username = txtUsername.text;
//                     String password = txtPassword.text;
//                     if (username == "admin" && password == "admin") {
//                       showDialog(
//                           context: context,
//                           child: AlertDialog(
//                             title: Text("Login"),
//                             content: Text("Berhasil"),
//                             actions: <Widget>[
//                               FlatButton(
//                                   onPressed: () {
//                                     Navigator.pushReplacement(context,
//                                         MaterialPageRoute(builder: (context) {
//                                       return PageHome();
//                                     }));
//                                   },
//                                   child: Text("OK"))
//                             ],
//                           ));
//                     }
//                   },
//                   child: Text(
//                     "LOGIN",
//                     style: TextStyle(color: Colors.white),
//                   )),
//             ),
//             ButtonTheme(
//               minWidth: double.infinity,
//               child: RaisedButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         child: AlertDialog(
//                           title: Text("Apakah kamu Ingin Daftar?"),
//                           actions: <Widget>[
//                             FlatButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return Daftar();
//                                   }));
//                                 },
//                                 child: Text("Iya"))
//                           ],
//                         ));
//                   },
//                   child: Text(
//                     "DAFTAR",
//                     style: TextStyle(color: Colors.white),
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:shop_app/PageHome.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/form/animation.dart';
import 'package:shop_app/screens/home/components/Daftar.dart';
import 'package:shop_app/screens/home/components/register.dart';
import 'package:shop_app/screens/home/home_screen.dart';

class Signin extends StatefulWidget {
  Signin({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> with TickerProviderStateMixin {
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorPalette.bg1,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text("Login ",
                          style: TextStyle(color: Colors.white, fontSize: 40))),
                  FadeAnimation(
                      1.3,
                      Text("Welcome Hi ",
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(115, 230, 161, .3),
                                    blurRadius: 20,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[
                              FadeAnimation(
                                  1,
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      controller: txtUsername,
                                      decoration: InputDecoration(
                                          hintText: "Username",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  )),
                              FadeAnimation(
                                  1.5,
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
                                      obscureText: true,
                                      controller: txtPassword,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          border: InputBorder.none),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Forgot Password",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 20),
                        FadeAnimation(
                          1,
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                                onPressed: () {
                                  String username = txtUsername.text;
                                  String password = txtPassword.text;
                                  if (username == "admin" &&
                                      password == "admin") {
                                    showDialog(
                                        context: context,
                                        child: AlertDialog(
                                          title: Text("Login"),
                                          content: Text("Berhasil"),
                                          actions: <Widget>[
                                            FlatButton(
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return PageHome();
                                                  }));
                                                },
                                                child: Text("OK"))
                                          ],
                                        ));
                                  }
                                },
                                color: ColorPalette.bg1,
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                        ButtonTheme(
                          minWidth: double.infinity,
                          child: RaisedButton(
                              color: ColorPalette.bg1,
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    child: AlertDialog(
                                      title: Text("Apakah kamu Ingin Daftar?"),
                                      actions: <Widget>[
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Signup();
                                              }));
                                            },
                                            child: Text("Iya"))
                                      ],
                                    ));
                              },
                              child: Text(
                                "DAFTAR",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        SizedBox(height: 20),
                        Text("With Social Media",
                            style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 20),
                        FadeAnimation(
                            1,
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.blue),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          "Facebook",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red),
                                    child: Center(
                                      child: Text(
                                        "Google",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )),
              ),
            )
          ]),
        ));
  }
}
