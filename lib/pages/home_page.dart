import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_app_ui/models/tweets.dart';

class TwitterUI extends StatefulWidget {
  static const String id = "/twitter_ui";

  @override
  _TwitterUIState createState() => _TwitterUIState();
}

class _TwitterUIState extends State<TwitterUI> {
  ///Function for Rich text
  RichText _convertHashtag(String text) {
    List<String> split = text.split(RegExp("#"));
    List<String> hashtags = split.getRange(1, split.length).fold([], (t, e) {
      var texts = e.split(" ");
      if (texts.length > 1) {
        return List.from(t)
          ..addAll(["#${texts.first}", "${e.substring(texts.first.length)}"]);
      }
      return List.from(t)..add("#${texts.first}");
    });
    return RichText(
      text: TextSpan(
        mouseCursor: MaterialStateMouseCursor.clickable,
        style: TextStyle(fontSize: 14, color: Colors.black),
        children: [TextSpan(text: split.first)]..addAll(hashtags
            .map((text) => text.contains("#")
                ? TextSpan(text: text, style: TextStyle(color: Colors.blue))
                : TextSpan(text: text))
            .toList()),
      ),
    );
  }

  List<TweetModel> items = [
    //1
    TweetModel(
        actionType: "liked",
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img1.jpg",
        nickName: "@craig_love",
        userName: "Martha Craig ",
        tweetTime: "•12h",
        textcontent:
            "UXR/UX: You can only bring one item to a remote island to assist your "
            "research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        commentNumber: 28,
        retweetNumber: 5,
        likeNumber: 21,
        actionUserNameList: ["Kieron Dotson", "Zahk John"],
        contentImage: "assets/images/contentImages/content1.png"),
    //2
    TweetModel(
      actionType: "liked",
      actionIcon: Icons.favorite,
      userImage: "assets/images/profileImages/img2.jpg",
      nickName: "@maxjacobson",
      userName: "Maximmilian ",
      tweetTime: "•3h",
      textcontent: "Y’all ready for this next post?",
      commentNumber: 46,
      retweetNumber: 18,
      likeNumber: 363,
      actionUserNameList: ["Zahk John"],
    ),
    //3
    TweetModel(
      actionType: "Retweeted",
      check: CupertinoIcons.checkmark_seal_fill,
      actionIcon: Icons.repeat,
      userImage: "assets/images/profileImages/img3.jpg",
      nickName: "@mis_potter",
      userName: "Tabitha Potter ",
      tweetTime: "•14h",
      textcontent:
          "Kobe’s passing is really sticking w/ me in a way I didn’t expect.\n\nHe was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.\n\nBut the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
      commentNumber: 7,
      retweetNumber: 1,
      likeNumber: 11,
      actionUserNameList: ["Kieron Dotson"],
    ),
    //4
    TweetModel(
        actionType: "liked",
        check: CupertinoIcons.checkmark_seal_fill,
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img4.jpg",
        nickName: "@karennen",
        userName: "karennen ",
        tweetTime: "•10h",
        textcontent:
            "Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman",
        commentNumber: 1906,
        retweetNumber: 1249,
        likeNumber: 7461,
        actionUserNameList: ["Zahk John"],
        contentImage: "assets/images/contentImages/content2.jpg"),
    //5
    TweetModel(
        actionType: "liked",
        check: CupertinoIcons.checkmark_seal_fill,
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img1.jpg",
        nickName: "@craig_love",
        userName: "Martha Craig ",
        tweetTime: "•12h",
        textcontent:
            "UXR/UX: You can only bring one item to a remote island to assist your "
            "research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        commentNumber: 28,
        retweetNumber: 5,
        likeNumber: 21,
        actionUserNameList: ["Zahk John"],
        contentImage: "assets/images/contentImages/content3.jpg"),
    //6
    TweetModel(
        actionType: "liked",
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img1.jpg",
        nickName: "@craig_love",
        userName: "Martha Craig ",
        tweetTime: "•12h",
        textcontent:
        "UXR/UX: You can only bring one item to a remote island to assist your "
            "research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        commentNumber: 28,
        retweetNumber: 5,
        likeNumber: 21,
        actionUserNameList: ["Kieron Dotson", "Zahk John"],
        contentImage: "assets/images/contentImages/content1.png"),
    //7
    TweetModel(
      actionType: "liked",
      actionIcon: Icons.favorite,
      userImage: "assets/images/profileImages/img2.jpg",
      nickName: "@maxjacobson",
      userName: "Maximmilian ",
      tweetTime: "•3h",
      textcontent: "Y’all ready for this next post?",
      commentNumber: 46,
      retweetNumber: 18,
      likeNumber: 363,
      actionUserNameList: ["Zahk John"],
    ),
    //8
    TweetModel(
      actionType: "Retweeted",
      check: CupertinoIcons.checkmark_seal_fill,
      actionIcon: Icons.repeat,
      userImage: "assets/images/profileImages/img3.jpg",
      nickName: "@mis_potter",
      userName: "Tabitha Potter ",
      tweetTime: "•14h",
      textcontent:
      "Kobe’s passing is really sticking w/ me in a way I didn’t expect.\n\nHe was an icon, the kind of person who wouldn’t die this way. My wife compared it to Princess Di’s accident.\n\nBut the end can happen for anyone at any time, & I can’t help but think of anything else lately.",
      commentNumber: 7,
      retweetNumber: 1,
      likeNumber: 11,
      actionUserNameList: ["Kieron Dotson"],
    ),
    //9
    TweetModel(
        actionType: "liked",
        check: CupertinoIcons.checkmark_seal_fill,
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img4.jpg",
        nickName: "@karennen",
        userName: "karennen ",
        tweetTime: "•10h",
        textcontent:
        "Name a show where the lead character is the worst character on the show I’ll get Sabrina Spellman",
        commentNumber: 1906,
        retweetNumber: 1249,
        likeNumber: 7461,
        actionUserNameList: ["Zahk John"],
        contentImage: "assets/images/contentImages/content2.jpg"),
    //10
    TweetModel(
        actionType: "liked",
        check: CupertinoIcons.checkmark_seal_fill,
        actionIcon: Icons.favorite,
        userImage: "assets/images/profileImages/img1.jpg",
        nickName: "@craig_love",
        userName: "Martha Craig ",
        tweetTime: "•12h",
        textcontent:
        "UXR/UX: You can only bring one item to a remote island to assist your "
            "research of native use of tools and usability. What do you bring? #TellMeAboutYou",
        commentNumber: 28,
        retweetNumber: 5,
        likeNumber: 21,
        actionUserNameList: ["Zahk John"],
        contentImage: "assets/images/contentImages/content3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Container(
          width: 32,
          height: 32,
          child: Image.asset("assets/images/appbar/logo.png"),
        ),
        leading: Container(
          margin: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: ClipOval(
              child: Image.asset(
                "assets/images/profileImages/img1.jpg",
                fit: BoxFit.cover,
                width: 60.0,
                height: 60.0,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            width: 32,
            height: 32,
            child: Image.asset("assets/images/appbar/star.png"),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(CupertinoIcons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "",),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_rounded,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email_outlined,
              ),
              label: ""),
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (Buildcontext, int index) {
              return postTweet(items[index]);
            }),
      ),
    );
  }

  Widget postTweet(TweetModel tweet) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///first line
            Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //action icon
                    if (tweet.actionIcon != null)
                      Icon(
                        tweet.actionIcon,
                        size: 18,
                        color: Colors.grey.shade700,
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    //profile image
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: ClipOval(
                        child: Image.asset(
                          tweet.userImage,
                          fit: BoxFit.cover,
                          width: 120.0,
                          height: 120.0,
                        ),
                      ),
                    ),
                  ],
                )),
            ///second line
            Expanded(
                flex: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///who liked
                      if (tweet.actionUserNameList != null)
                        tweet.actionUserNameList!.length > 1
                            ? Text(
                                "${tweet.actionUserNameList!.first} and ${(tweet.actionUserNameList!.last)} ${tweet.actionType}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              )
                            : Text(
                                "${tweet.actionUserNameList!.first} ${tweet.actionType}",
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 15)),
                      SizedBox(
                        height: 2,
                      ),

                      ///Username...
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                tweet.userName,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              if (tweet.check != null)
                                Icon(
                                  tweet.check,
                                  color: Colors.blue,
                                  size: 13,
                                ),
                              Text(
                                " ${tweet.nickName} ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: true,
                              ),
                              Text(tweet.tweetTime,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14)),
                            ],
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          )
                        ],
                      ),

                      ///Content
                      _convertHashtag(tweet.textcontent),

                      SizedBox(
                        height: 6,
                      ),

                      ///content image
                      if (tweet.contentImage != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(tweet.contentImage!),
                          ),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      ///bottom buttons
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      "assets/images/icons/comment.png",
                                      height: 20,
                                      width: 20,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(tweet.commentNumber.toString())
                              ],
                            )),
                            Expanded(
                                child: Row(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      "assets/images/icons/retweet1.png",
                                      height: 20,
                                      width: 20,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(tweet.retweetNumber.toString())
                              ],
                            )),
                            Expanded(
                                child: Row(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      "assets/images/icons/like.png",
                                      height: 20,
                                      width: 20,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(tweet.likeNumber.toString()),
                              ],
                            )),
                            Expanded(
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      "assets/images/icons/share.png",
                                      height: 20,
                                      width: 20,
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
