import 'package:chitchat/model/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.text,
    this.time,
    this.isLiked,
    this.unread,
  });
}

//CURRENT USER
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imgUrl: 'assets/images/jonny.jpg',
);

//USERS
final User john = User(
  id: 1,
  name: ' John',
  imgUrl: 'assets/images/john.jpg',
);

final User maia = User(
  id: 2,
  name: 'Maia',
  imgUrl: 'assets/images/maia.jpg',
);

final User mel = User(
  id: 3,
  name: 'Mel',
  imgUrl: 'assets/images/mel.jpg',
);
final User mon = User(
  id: 4,
  name: 'Mong',
  imgUrl: 'assets/images/mon.jpg',
);
final User anna = User(
  id: 5,
  name: 'Anna',
  imgUrl: 'assets/images/anna.jpg',
);
final User erick = User(
  id: 6,
  name: 'Erick',
  imgUrl: 'assets/images/erick.jpg',
);
final User renata = User(
  id: 7,
  name: 'Renata',
  imgUrl: 'assets/images/renata.jpg',
);

//FAVORITE CONTACTS
final List<User> favorites = [anna, mon, mel, maia, john, erick];

//EXAMPLE CHATS ON HOME @Message

final List<Message> chats = [
  Message(
    sender: mel,
    time: '04:14 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: john,
    time: '04:23 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: anna,
    time: '04:56 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mon,
    time: '04:34 PM',
    text: 'Hoje vai ter festa la na casa do Jonny!',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: erick,
    time: '04:34 PM',
    text: 'Quando vai viajar pra Tailandia?',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '02:10 AM',
    text: 'Okay, I\'ll be traveling and will be back next week',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: maia,
    time: '02:30 PM',
    text: 'I don\'t know how much it cost',
    isLiked: false,
    unread: true,
  ),
];

//EXAMPLE OF MESSAGES
final List<Message> messages = [
  Message(
    sender: mel,
    time: '04:14 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '04:23 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '04:56 PM',
    text: 'How\'s the doggo?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '04:34 PM',
    text: 'Hoje vai ter festa la na casa do Jonny!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: erick,
    time: '04:34 PM',
    text: 'Quando vai viajar pra Tailandia?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '02:10 AM',
    text: 'Okay, I\'ll be traveling and will be back next week',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: maia,
    time: '02:30 PM',
    text: 'I don\'t know how much it cost',
    isLiked: false,
    unread: true,
  ),
];
