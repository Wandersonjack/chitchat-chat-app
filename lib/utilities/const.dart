import 'package:flutter/cupertino.dart';

//CATEGORY STYLES
const kPrimaryColor = 0xFFFFC107;
const kAccentColor = 0xFFFEF9EB;
const kWhitColor = 0xFFFFFFFF;
const kNewMessageColor = 0xFFFFF8E1;
const kDangerLightColor = 0xFFffebee;
const kDangerColor = 0xFFf44336;

const kAppbarTitleStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

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
final Radius kRounded15 = Radius.circular(15);

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
  color: Color(kNewMessageColor),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  ),
);

final BoxDecoration kChatRead = BoxDecoration(
  color: Color(kWhitColor),
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(15),
    bottomRight: Radius.circular(15),
  ),
);

final BoxDecoration kNewMessageDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  color: Color(kPrimaryColor),
);

//MESSAGE CUSTOM Decoration
final BoxDecoration kMyMessageDecoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: kRounded15,
      bottomLeft: kRounded15,
    ),
    color: Color(kAccentColor));

final BoxDecoration kYourMessageDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topRight: kRounded,
    bottomRight: kRounded,
  ),
  color: Color(kDangerLightColor),
);

final EdgeInsets kMessageSpacingRight =
    EdgeInsets.only(top: 8, bottom: 8, right: 4);

final EdgeInsets kMessageSpacingLeft =
    EdgeInsets.only(top: 8, bottom: 8, left: 80);

final EdgeInsets kMessagePadding = EdgeInsets.symmetric(
  vertical: 15,
  horizontal: 25,
);
