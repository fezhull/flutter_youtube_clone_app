import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:youtube/widgets/popup1_widget.dart';
import 'package:youtube/widgets/popup2_widget.dart';
import 'package:youtube/widgets/popup3_widget.dart';
import 'package:youtube/widgets/popup_widget.dart';
import 'package:youtube/widgets/video_widget.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});
  List categories = [
    "All",
    "Gaming",
    "Live",
    "Music",
    "Mixes",
    "Ghost Hunter",
    "Stewie Griffin",
    "Universe",
  ];
  List categories1 = [
    "gym instrutor",
    "out of town",
    "mindset growth",
    "All kids do"
  ];
  List categories2 = [
    "cooking moods",
    "music classes",
    "register to unicef",
    "All kids do"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Builder(builder: (BuildContext context) {
          return new GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: new Container(
              child: new Image.asset('images/image3.png'),
              padding: new EdgeInsets.all(7),
            ),
          );
        }),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => PopupWidget(),
                    );
                  },
                  icon: Icon(
                    Icons.connected_tv,
                    size: 25,
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => Popup1Widget(),
                    );
                  },
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 25,
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) => Popup2Widget(),
                    );
                  },
                  icon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => Popup3Widget(),
                      );
                    },
                    icon: Icon(Icons.account_circle_rounded)),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.black87),
              child: Image.asset(
                'images/image3.png',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.fireplace_sharp,
                color: Colors.white,
              ),
              title: Text(
                "Trending",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Music",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.games_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Gaming",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.sports_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Sports",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      VideoWidget()));
                        },
                        child: Neumorphic(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 25),
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                            color: Color.fromARGB(255, 15, 15, 15),
                            intensity: 0.7,
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10),
              InkWell(
                child: Container(
                    child: Align(
                  alignment: AlignmentDirectional.center,
                  child: new Image.asset('images/image4.png'),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              InkWell(
                child: Container(
                    child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Helping quake-impacted children get medication in Syria | UNICEF.",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  subtitle: Text(
                    "UNICEF . 6001 views . 3 days ago",
                    style: TextStyle(color: Colors.white38),
                  ),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              SizedBox(height: 5),
              InkWell(
                child: Container(
                    height: 50,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: new Image.asset('images/image0.png'),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          VideoWidget()));
                            },
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15),
                              child: Image.asset(
                                "images/${categories1[index]}.png",
                                height: 250,
                                fit: BoxFit.cover,
                                width: 180,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categories1[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                    child: Align(
                  alignment: AlignmentDirectional.center,
                  child: new Image.asset('images/image2.png'),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              Container(
                  child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "Roots Mix 2022 (September)- DJ GABU Strictly Roots mix / RH Exclusive",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                subtitle: Text(
                  "RICHY HANIEL . 3.6M views . 2 years ago",
                  style: TextStyle(color: Colors.white38),
                ),
              )),
              SizedBox(height: 20),
              InkWell(
                child: Container(
                    child: Align(
                  alignment: AlignmentDirectional.center,
                  child: new Image.asset('images/image1.png'),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              Container(
                  child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "BESTOFLUCKY DUBE(VDJ JONES)REGGAE VIDEO MIX",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                subtitle: Text(
                  "VDJ JONES . 6.6M views . 5 years ago",
                  style: TextStyle(color: Colors.white38),
                ),
              )),
              SizedBox(height: 5),
              InkWell(
                child: Container(
                    height: 50,
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: new Image.asset('images/image0.png'),
                    )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              SizedBox(height: 5),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          VideoWidget()));
                            },
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15),
                              child: Image.asset(
                                "images/${categories2[index]}.png",
                                height: 250,
                                fit: BoxFit.cover,
                                width: 180,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  categories2[index],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                child: Container(
                    child: Align(
                  alignment: AlignmentDirectional.center,
                  child: new Image.asset('images/image6.png'),
                )),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => VideoWidget()));
                },
              ),
              Container(
                  child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "CALL OF DUTY MODERN WARFARE 2 PS5 Walkthrough Gameplay Part 1(COD 2022 Campaign)",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                subtitle: Text(
                  "theRadBrad . 2M views . 3 months ago",
                  style: TextStyle(color: Colors.white38),
                ),
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            label: 'Library',
          ),
        ],
        // currentIndex: _selectedIndex,
        unselectedItemColor: Color.fromARGB(255, 239, 236, 236),
        //onTap: _onTap(){},
        elevation: 5,
      ),

      /* bottomNavigationBar: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Colors.black87,
            //borderRadius: BorderRadius.only(
            // topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black87,
                blurRadius: 0,
                spreadRadius: 0,
              )
            ]),
            
            
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          
          child: Icon(
            Icons.home_outlined,
            color: Colors.white,
            
          ),
          
          
        ),
        
      ),
      */
    );
  }
}
