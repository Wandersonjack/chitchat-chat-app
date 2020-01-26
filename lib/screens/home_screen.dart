import 'package:chitchat/components/favorite_contacts_widget.dart';
import 'package:chitchat/components/recent_messages.dart';
import 'package:chitchat/components/selected_category.dart';
import 'package:chitchat/utilities/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: Text(
          'Chat',
          style: kAppbarTitleStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          CategorySelected(),
          Expanded(
            child: Container(
              decoration: kOverlayDecoration,
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentMessages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
