import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:profileapp/page/education.dart';
import 'package:profileapp/page/profile.dart';
import 'package:profileapp/page/skills.dart';
import 'package:profileapp/page/story.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark));
  runApp(const ProfileScreen());
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;

  // void _onTabChange(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ProductSans',
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          toolbarHeight: 70,
          title: const Text(
            "Hello Viewer!",
            style: TextStyle(
              fontFamily: "ProductSans",
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              // borderRadius: const BorderRadius.only(
              //     bottomLeft: Radius.circular(20),
              //     bottomRight: Radius.circular(20)),
              color: Color(0xff42A3A7),
              // gradient: LinearGradient(colors: [
              //   const Color(0xff42A3A7),
              //   Color.fromARGB(255, 0, 85, 76)
              // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
            ),
          ),
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: const [
            Profile(),
            Education(),
            Story(),
            Skills(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 66, 156, 159),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    CircleAvatar(
                      radius: 35,
                      child: ClipOval(
                        child: Image.asset('assets/images/user.jpg'),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Memoreza Sabana",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                selectedColor: const Color(0xff42A3A7),
                leading: const Icon(CupertinoIcons.person_solid),
                title: const Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                selected: _selectedIndex == 0,
                onTap: () {
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selectedColor: const Color(0xff42A3A7),
                leading: const Icon(CupertinoIcons.book_solid),
                title: const Text(
                  'Education',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                selected: _selectedIndex == 1,
                onTap: () {
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selectedColor: const Color(0xff42A3A7),
                leading: const Icon(
                  CupertinoIcons.news_solid,
                ),
                title: const Text(
                  'Story',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                selected: _selectedIndex == 2,
                onTap: () {
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selectedColor: const Color(0xff42A3A7),
                leading: const Icon(CupertinoIcons.gear_solid),
                title: const Text(
                  'Skills',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                selected: _selectedIndex == 3,
                onTap: () {
                  _onItemTapped(3);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: const Color(0xff42A3A7),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.white),
                backgroundColor: const Color(0xff42A3A7),
                color: Colors.white60,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.white30,
                gap: 8,
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                padding: const EdgeInsets.all(16),
                tabs: const [
                  GButton(
                    icon: CupertinoIcons.person_solid,
                    text: "Profile",
                  ),
                  GButton(
                    icon: CupertinoIcons.book_solid,
                    text: "Education",
                  ),
                  GButton(
                    icon: CupertinoIcons.news_solid,
                    text: "Story",
                  ),
                  GButton(
                    icon: CupertinoIcons.gear_solid,
                    text: "Skills",
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
