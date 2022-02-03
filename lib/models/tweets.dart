import 'package:flutter/cupertino.dart';

class TweetModel {
  String? actionType;
  IconData? check;
  IconData? actionIcon;
  List<String>? actionUserNameList;
  String userImage;
  String nickName;
  String userName;
  String tweetTime;
  String textcontent;
  String? contentImage;
  int commentNumber = 0;
  int retweetNumber = 0;
  int likeNumber = 0;

  TweetModel(
      {this.actionType,
      this.check,
      this.actionIcon,
      this.actionUserNameList,
      required this.userImage,
      required this.nickName,
      required this.userName,
      required this.tweetTime,
      required this.textcontent,
      this.contentImage,
      required this.commentNumber,
      required this.retweetNumber,
      required this.likeNumber});
}
