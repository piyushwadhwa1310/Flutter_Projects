// ignore_for_file: prefer_const_constructors

import """
package:flutter/material.dart""" show Axis, BorderRadius, BoxDecoration, BoxShadow, BuildContext, CircleAvatar, Color, Colors, Column, Container, CrossAxisAlignment, Divider, Drawer, DrawerThemeData, EdgeInsets, FloatingActionButton, FloatingActionButtonLocation, GlobalKey, Icon, IconButton, IconData, Icons, Image, InkWell, ListView, MainAxisAlignment, MaterialApp, Padding, Positioned, Radius, RoundedRectangleBorder, Row, Scaffold, ScaffoldState, SizedBox, Stack, State, StatefulWidget, StatelessWidget, Text, TextButton, TextStyle, ThemeData, Widget;


class ChatApp extends StatelessWidget {
  static const String routeName = "/homescreen";

  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent)),
      title: 'CHAT APP BY RADHIKA AND PIYUSH',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color.fromARGB(255, 23, 23, 23),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Messages",
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Groups",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "More",
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: const BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Favorite contacts",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Fiance', 'img1.jpeg'),
                        buildContactAvatar('Radhika', 'img2.jpeg'),
                        buildContactAvatar('Mickey', 'img07.jpg'),
                        buildContactAvatar('Charlie', 'img3.jpeg'),
                        buildContactAvatar('Rajesh', 'img03.jpg'),
                        buildContactAvatar('Piyush', 'img7.jpeg'),
                        buildContactAvatar('Lisa', 'img4.jpg'),
                        buildContactAvatar('Janhavi', 'img5.jpeg'),
                        buildContactAvatar('Makeup Artist', 'img8.jpg'),
                        buildContactAvatar('Nishit', 'img6.jpeg'),
                        buildContactAvatar('Priyanshu', 'img06.jpeg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Color(0xFFEFFFFC),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    buildConversationRow(
                        'Fiance', 'Hello, please come home early..', 'img1.jpeg', 7),
                    buildConversationRow(
                        'Radhika', 'How are you bhai!', 'img2.jpeg', 3),
                    buildConversationRow(
                        'Charlie', 'Khelne aega aaj?', 'img3.jpeg', 1),
                    buildConversationRow(
                        'Rajesh', 'Sir thanks for 20lacs', 'img03.jpg', 4),
                    buildConversationRow(
                        'Lisa', 'Hello, how are you', 'img4.jpg', 1),
                    buildConversationRow(
                        'Janhavi', 'Please contact me as you get free', 'img5.jpeg', 1),
                    buildConversationRow(
                        'Nishit', 'Valorant today or tomorrow?', 'img6.jpeg', 3),
                    buildConversationRow(
                        'Priyanshu', 'Bro send me your assignment', 'img06.jpeg', 1),
                    buildConversationRow(
                        'Piyush', 'Bro wassup!!', 'img7.jpeg', 1),
                    buildConversationRow(
                        'Mickey', 'Dewas wale aise hi hote hai!', 'img07.jpg', 1),
                    buildConversationRow(
                        'Makeup Artist', 'it would cost 50 dollars', 'img8.jpg', 1),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color(0xFF27c1a9),
          child: const Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      drawer: Drawer(
        width: 275,
        elevation: 30,
        backgroundColor: Color(0xF3393838),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        child: Container(
          decoration: const BoxDecoration(
              
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20)
              ]),
         child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                   Row(
                    children: [
                        UserAvatar(filename: 'img3.jpeg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Nishit Developer',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    DrawerItem(
                      title: 'Account',
                      icon: Icons.key,
                    ),
                    DrawerItem(title: 'Chats', icon: Icons.chat_bubble),
                    DrawerItem(
                        title: 'Notifications', icon: Icons.notifications),
                    DrawerItem(
                        title: 'Data and Storage', icon: Icons.storage),
                    DrawerItem(title: 'Help', icon: Icons.help),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    DrawerItem(
                        title: 'Invite a friend', icon: Icons.people_outline),
                  ],
                ),
                DrawerItem(title: 'Log out', icon: Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, String filename, int msgCount) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  const Text(
                    '13:13',
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(
                    height: 15,   
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: const Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style:
                            const TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        const Divider(
          indent: 70,
          height: 20,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/$filename').image,
      ),
    );
  }
}
