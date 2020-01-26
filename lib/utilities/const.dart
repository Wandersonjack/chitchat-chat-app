import 'package:flutter/cupertino.dart';

//CATEGORY STYLES

const kAccentColor = 0xFFFEF9EB;
const kWhitColor = 0xFFFFFFFF;
const kNewMessageColor = 0xFFFFF8E1;
const kCategoryTextStyleActive = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.2,
);

const kCategoryTextStyleInactive = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.2,
  color: Color(0x60000000),
);

//FAVORITES COMPONENTS
const kFavoriteTitle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
const kFavoriteTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Color(0x95000000),
);

//CHAT COMPONENTS
const kMessageTextStyle = TextStyle(
  color: Color(0xFF607d8b),
  fontWeight: FontWeight.w500,
  fontSize: 16,
);

const kkUsernameTextStyle = TextStyle(
  color: Color(0xFF455a64),
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

//DIMENSIONS AND SHAPES
final Radius kRounded = Radius.circular(30);

final BoxDecoration kOverlayDecoration = BoxDecoration(
  color: Color(kAccentColor),
  borderRadius: BorderRadius.only(
    topLeft: kRounded,
    topRight: kRounded,
  ),
);

final BorderRadius kCustomRadius = BorderRadius.only(
  topRight: Radius.circular(30),
  topLeft: Radius.circular(30),
);

final BoxDecoration kOverlayDecorationWhite = BoxDecoration(
  color: Color(kWhitColor),
  borderRadius: BorderRadius.only(
    topLeft: kRounded,
    topRight: kRounded,
  ),
);

// color: chat.unread ? Color(0xFFFFF8E1) : Colors.white,
final BoxDecoration kChatUnread = BoxDecoration(
  color:Color(kNewMessageColor) ,
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  ),
);

final BoxDecoration kChatRead = BoxDecoration(
  color:Color(kWhitColor),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  ),
);

