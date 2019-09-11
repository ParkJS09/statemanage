import 'package:flutter/material.dart';
import 'package:statemanage/src/ui/profile.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: UserProfile(),
      ),
    );
  }
}
