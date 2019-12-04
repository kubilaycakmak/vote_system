import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vote_system/Pages/Styles/size_config.dart';
import 'package:vote_system/Pages/Styles/styles.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username;
  TextEditingController _password;
  TextEditingController _tcno;

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();
    _tcno = TextEditingController();

  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.black,
        middle: Text('Login', style: Styles.whiteIshTitle),
      ),
      child: Container(
        color: Color.fromRGBO(0, 0, 0, 0.8),
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.blockSizeVertical * 20,),
            CupertinoTextField(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 10),
              controller: _username,
              cursorColor: Colors.white70,
              textAlignVertical: TextAlignVertical.center,
              style: Styles.whiteIshTitle,
              placeholder: 'username',
              decoration: BoxDecoration(
              ),
            ),
            SizedBox(height: 30,),
            CupertinoTextField(
              obscureText: true,
              textAlignVertical: TextAlignVertical.center,
              style: Styles.whiteIshTitle,
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 10),
              controller: _password,
              placeholder: 'password',
              decoration: BoxDecoration(
              ),
            ),
            SizedBox(height: 30,),
            CupertinoButton(
              child: Text('Enter'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}