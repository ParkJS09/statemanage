import 'package:flutter/material.dart';
import 'package:statemanage/src/models/User/UserInfo.dart';
import '../blocs/user_bloc.dart';

class UserProfile extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TEST USER INFO')),
      body: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Center(
                    child: TextField(
                      cursorColor: Colors.red,
                      controller: _textEditingController,
                      decoration: InputDecoration.collapsed(hintText: "input your name"),
                    ),
                  )
                ],
              ),
              StreamBuilder(
                  stream: bloc.userInfos,
                  builder: (context, AsyncSnapshot<UserInfo> snapshot) {
                    print('return value : ' + snapshot.toString());
                    if (snapshot.hasData) {
                      return buildList(snapshot);
                    } else if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<UserInfo> snapshot) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[Text('NAME : '), Text(' ' + snapshot.data.name)],
          )
        ],
      ),
    );
  }
}
