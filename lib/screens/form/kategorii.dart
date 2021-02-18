// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shop_app/PageHome.dart';
// import 'package:shop_app/screens/form/detail.dart';
// import 'dart:async';
// import 'dart:convert';

// class ThirdFragment extends StatefulWidget {
//   @override
//   _ThirdFragmentState createState() => _ThirdFragmentState();
// }

// class _ThirdFragmentState extends State<ThirdFragment> {
//   Future<List> getData() async {
//     final response = await http
//         .get("https://projectfluttercrud.000webhostapp.com/listnews.php");
//     return json.decode(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new FutureBuilder<List>(
//         future: getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) print(snapshot.error);

//           return snapshot.hasData
//               ? new ItemList(
//                   list: snapshot.data,
//                 )
//               : new Center(
//                   child: CircularProgressIndicator(),
//                 );
//         });
//   }
// }

// class ItemList extends StatelessWidget {
//   final List list;
//   ItemList({this.list});
//   @override
//   Widget build(BuildContext context) {
//     return new ListView.builder(
//         itemCount: list == null ? 0 : list.length,
//         itemBuilder: (context, i) {
//           return new Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Colors.orange,
//                 Colors.lightBlueAccent,
//               ]),
//             ),
//             padding: const EdgeInsets.all(10.0),
//             child: new GestureDetector(
//               onTap: () => Navigator.of(context).push(new MaterialPageRoute(
//                   builder: (BuildContext context) => new Detailkategori(
//                         list: list,
//                         index: i,
//                       ))),
//               child: new GestureDetector(
//                 child: new Card(
//                   child: Row(
//                     children: [
//                       Image.network(
//                         'https://projectfluttercrud.000webhostapp.com/image/' +
//                             list[i]['icon'],
//                         height: 280.0,
//                         width: 180.0,
//                       ),
//                       Padding(padding: const EdgeInsets.all(10.0)),
//                       Text(
//                         list[i]['name_catalog'],
//                         style: TextStyle(
//                           fontSize: 20.0,
//                         ),
//                       ),
//                       Padding(padding: const EdgeInsets.all(10.0)),
//                       RaisedButton(
//                           color: Colors.orange,
//                           child: Text("Detail"),
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => PageHome()));
//                           }),
//                     ],
//                   ),
//                   // child: new ListTile(
//                   //   title: new Text(list[i]['name_catalog']),
//                   //   // leading: new Icon(Icons.image),
//                   //   // leading: GestureDetector(
//                   //   //   child: Image.network(
//                   //   //     'https://projectfluttercrud.000webhostapp.com/image/' +
//                   //   //         list[i]['icon'],
//                   //   //     height: 200.0,
//                   //   //     width: 200.0,
//                   //   //   ),
//                   //   // ),
//                   //   // leading: Image.network(
//                   //   //   'https://projectfluttercrud.000webhostapp.com/image/' +
//                   //   //       list[i]['icon'],
//                   //   //   height: 200.0,
//                   //   //   width: 200.0,
//                   //   // ),
//                   // ),
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop_app/PageHome.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/form/detail.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'dart:async';
import 'dart:convert';

import 'package:shop_app/screens/home/home_screen.dart';

class ThirdFragment extends StatefulWidget {
  @override
  _ThirdFragmentState createState() => _ThirdFragmentState();
}

class _ThirdFragmentState extends State<ThirdFragment> {
  Future<List> getData() async {
    final response = await http
        .get("https://projectfluttercrud.000webhostapp.com/listnews.php");
    // print(response.body);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new Container(
            color: ColorPalette.bg1,
            padding: const EdgeInsets.all(10.0),
            child: new GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new Detailkategori(
                        list: list,
                        index: i,
                      ))),
              child: new GestureDetector(
                child: new Card(
                  child: Row(
                    children: [
                      Image.network(
                        'https://projectfluttercrud.000webhostapp.com/image/' +
                            list[i]['icon'],
                        height: 120.0,
                        width: 200.0,
                      ),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Padding(padding: const EdgeInsets.all(10.0)),
                      Container(
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 15.0,
                                      ),
                                      Text(
                                        list[i]['name_catalog'],
                                        style: TextStyle(
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'Iphone 128 Gb',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Rp. 2.500.000',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Padding(padding: EdgeInsets.all(10.0)),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PageHome()));
                                },
                                child: Text("Cek Selengkapny"),
                              )
                              // RaisedButton(
                              //     color: ColorPalette.bg1,
                              //     child: Text("Beli"),
                              //     textColor: Colors.white,
                              //     onPressed: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (context) => PageHome()));
                              //     }),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
