import 'package:chitchat/model/messages_model.dart';
import 'package:chitchat/screens/chat_screen.dart';
import 'package:chitchat/utilities/const.dart';
import 'package:flutter/material.dart';

class RecentMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: kOverlayDecorationWhite,
        child: ClipRRect(
          borderRadius: kCustomRadius,
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ChatScreen(user: chat.sender,),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: chat.unread ? kChatUnread : kChatRead,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(chat.sender.imgUrl),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                chat.sender.name,
                                style: kkUsernameTextStyle,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  style: kMessageTextStyle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(chat.time),
                          SizedBox(height: 5,),
                          chat.unread ? Container(
                            height: 25,
                            width: 45,
                            alignment: Alignment.center,
                            decoration: kNewMessageDecoration,
                            child: Text('NEW', style: TextStyle(fontSize: 14,),),
                          ) : Text(''),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
