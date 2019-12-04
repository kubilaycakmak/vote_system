import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Pages/404/warning_page.dart';
import 'Pages/Entry/entry_page.dart';
import 'Pages/Home/home.dart';
import 'Pages/Login/login_page.dart';

class Routes{
  Routes(){
    runApp(CupertinoApp(
      title: 'Vote',
      debugShowCheckedModeBanner: false,
      home: EntryPage(),
      onGenerateRoute: (RouteSettings settings){
        switch(settings.name){
          case '/login':
          return CustomRoute(
            builder:(_) => LoginPage(),
            settings: settings
          );
          case '/home':
          return CustomRoute(
            builder: (_) => HomePage(),
            settings: settings
          );
          case '/404':
          return CustomRoute(
            builder: (_) => WarningPage(),
            settings: settings
          );
        }
        return null;
      },
    ));
  }
}
class CustomRoute<T> extends CupertinoPageRoute<T>{
  CustomRoute({WidgetBuilder builder, RouteSettings settings})
  : super(builder:builder, settings:settings);
}