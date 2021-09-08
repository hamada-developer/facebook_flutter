import 'package:facebook/shared/components/constant.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    editStatusBar(color: Colors.white, icon: Brightness.dark);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'facebook',
            style: TextStyle(
              fontFamily: 'Raleway'
            ),
        ),
      ),
    );
  }
}
