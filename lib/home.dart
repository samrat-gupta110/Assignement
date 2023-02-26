import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:swapimage/Welcome.dart';
import 'otp.dart';
import 'phone.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int pageindex = 0;
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avater.webp'),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
            'Welcome',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          Icon(Icons.notifications_active),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
        ],
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.white70,
                  Colors.black
                ],
              ),
            ),
            //color: Colors.black26,
            margin: EdgeInsets.only(left: 30,right: 30),
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment:Alignment.topLeft,
                      child: Text(
                        'Recent Played',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/finalfantasy.webp'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/lastofus.webp'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/Cyberpunk_2077_box_art.jpg'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment:Alignment.topLeft,
                    child: Text(
                      'Treading',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/little.webp'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/spiderman.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 200,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.red,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>welcome()));
                            },
                            child: Image(
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              image: AssetImage('assets/gotofwar.webp'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
