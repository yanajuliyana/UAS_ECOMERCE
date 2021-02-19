// import 'package:flutter/material.dart';
// import 'package:shop_app/screens/home/components/LoginPage.dart';

// class Daftar extends StatefulWidget {
//   Daftar({Key key}) : super(key: key);
//   @override
//   _DaftarState createState() => _DaftarState();
// }

// class _DaftarState extends State<Daftar> {
//   TextEditingController txtUsername = new TextEditingController();
//   TextEditingController txtPassword = new TextEditingController();
//   TextEditingController txtemail = new TextEditingController();

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
//               width: 450.0,
//               height: 80.0,
//               decoration: BoxDecoration(),
//               child: Padding(
//                   padding: EdgeInsets.only(top: 1.0),
//                   child: Image.asset(
//                     "assets/images/logo.png",
//                   )),
//             ),
//             Padding(padding: EdgeInsets.all(20.0)),
//             Text(
//               "DAFTAR",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(
//               height: 5.0,
//             ),
//             TextFormField(
//               controller: txtUsername,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black87)),
//                 prefixIcon: Icon(
//                   Icons.person,
//                   size: 20,
//                 ),
//                 hintText: "Masukan Nama",
//                 hintStyle: TextStyle(color: Colors.black87),
//                 labelText: "Nama",
//                 labelStyle: TextStyle(color: Colors.black87),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextFormField(
//               controller: txtemail,
//               obscureText: false,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black)),
//                 prefixIcon: Icon(
//                   Icons.email,
//                   size: 20,
//                 ),
//                 hintText: "Maskan Email",
//                 hintStyle: TextStyle(color: Colors.black),
//                 labelText: "Email",
//                 labelStyle: TextStyle(color: Colors.black),
//               ),
//             ),
//             SizedBox(
//               height: 5.0,
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
//                   size: 20,
//                 ),
//                 hintText: "Masukan Password",
//                 hintStyle: TextStyle(color: Colors.black),
//                 labelText: "Pssword",
//                 labelStyle: TextStyle(color: Colors.black),
//               ),
//             ),
//             SizedBox(
//               height: 5.0,
//             ),
//             ButtonTheme(
//               minWidth: double.infinity,
//               child: RaisedButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         child: AlertDialog(
//                           title: Text("Apakah Data nya sudah Benar?"),
//                           actions: <Widget>[
//                             FlatButton(
//                                 onPressed: () {
//                                   Navigator.pushReplacement(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return Signin();
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
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/form/animation.dart';
import 'package:shop_app/screens/home/components/LoginPage.dart';

class Signup extends StatefulWidget {
  Signup({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> with TickerProviderStateMixin {
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
                      Text("Register",
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
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
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none),
                                ),
                              ),
                              FadeAnimation(
                                  1.5,
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[200]))),
                                    child: TextField(
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
                        FadeAnimation(
                          1,
                          ButtonTheme(
                            minWidth: double.infinity,
                            child: RaisedButton(
                                onPressed: () {
                                  {
                                    showDialog(
                                        context: context,
                                        child: AlertDialog(
                                          title: Text("Daftar"),
                                          content: Text("Berhasil"),
                                          actions: <Widget>[
                                            FlatButton(
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return Signin();
                                                  }));
                                                },
                                                child: Text("OK"))
                                          ],
                                        ));
                                  }
                                },
                                child: Text(
                                  "DAFTAR",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signin()));
                          },
                          child: Text("Login"),
                        )
                        // ButtonTheme(
                        //   minWidth: double.infinity,
                        //   child: RaisedButton(
                        //       onPressed: () {
                        //         showDialog(
                        //             context: context,
                        //             child: AlertDialog(
                        //               title: Text("Apakah kamu Ingin Login?"),
                        //               actions: <Widget>[
                        //                 FlatButton(
                        //                     onPressed: () {
                        //                       Navigator.pushReplacement(context,
                        //                           MaterialPageRoute(
                        //                               builder: (context) {
                        //                         return Signin();
                        //                       }));
                        //                     },
                        //                     child: Text("Iya"))
                        //               ],
                        //             ));
                        //       },
                        //       child: Text(
                        //         "DAFTAR",
                        //         style: TextStyle(color: Colors.white),
                        //       )),
                        // ),
                      ],
                    )),
              ),
            )
          ]),
        ));
  }
}
