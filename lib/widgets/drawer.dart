import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static-00.iconduck.com/assets.00/male-avatar-illustration-256x256-05bnteok.png";
    return Drawer(
        child: Container(
      color: Colors.amberAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.amberAccent),
                accountName: Text("Keyur Doshi"),
                accountEmail: Text("keyurdoshi2270@gmail.com"),
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                )),
          ),
          ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "My Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black,
                ),
              )),
          ListTile(
              leading: Icon(
                CupertinoIcons.mail ,
                color: Colors.black,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.black,
                ),
              ))
        ],
      ),
    ));
  }
}
