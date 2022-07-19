import 'package:flutter/material.dart';
import 'package:google_notes_clone/colors.dart';
import 'package:google_notes_clone/main.dart';
import 'package:google_notes_clone/side_menu.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  GlobalKey<ScaffoldState>_drawerKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawerEnableOpenDragGesture: true,
      key: _drawerKey,
      drawer: SideMenu(),
      
      backgroundColor: bgColor,
      body: Container(
          margin: EdgeInsets.all(8.0),
          child: SafeArea(
              child: Column(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                            color: black.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: IconButton(
                                onPressed: (){_drawerKey.currentState!.openDrawer();},
                                icon:Icon(
                                Icons.menu,
                                color: Colors.white,
                              ))),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Search Your Notes",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              margin: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Icon(
                                Icons.grid_view,
                                color: Colors.white,
                              )),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ))),
    );
  }
}
