
import 'package:vote_system/Pages/Styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vote_system/Pages/Info/info_page.dart';
import 'package:vote_system/Pages/Login/login_page.dart';

class EntryPage extends StatefulWidget {
  EntryPage({Key key}) : super(key: key);

  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            title: Text('Login', style: Styles.whiteIshContext,),
            backgroundColor: Colors.white,
            activeIcon: Icon(CupertinoIcons.person_solid),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.info),
            title: Text('Information', style: Styles.whiteIshContext,),
            backgroundColor: Colors.white,
          ),
        ]
      ),
      tabBuilder: (context, index){
        switch (index){
          case 0:
          return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(
              child: LoginPage(),
            );
          });
          case 1:
          return CupertinoTabView(builder: (context){
            return CupertinoPageScaffold(
              child: InfoPage(),
            );
          });
        }
      },
    );
  }
}