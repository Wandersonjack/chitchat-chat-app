import 'package:chitchat/model/messages_model.dart';
import 'package:chitchat/model/user_model.dart';
import 'package:chitchat/utilities/const.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    final bool liked = true;
    final Container msg = Container(
      margin: isMe ? kMessageSpacingLeft : kMessageSpacingRight,
      padding: kMessagePadding,
      decoration: isMe ? kMyMessageDecoration : kYourMessageDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time),
          Text(message.text),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
        IconButton(
          onPressed: () {
            setState(() {});
          },
          icon: message.isLiked
              ? Icon(
                  Icons.favorite,
                  color: Color(kDangerColor),
                )
              : Icon(Icons.favorite_border),
        ),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      color: Colors.white,
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.photo,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration: InputDecoration.collapsed(
                hintText: 'Write a message ...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.send,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          widget.user.name,
          style: kAppbarTitleStyle,
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                decoration: kOverlayDecorationWhite,
                child: ClipRRect(
                  borderRadius: kCustomRadius,
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
