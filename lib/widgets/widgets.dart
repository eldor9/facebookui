import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget likeButton() {
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
  );
}

Widget makeStories(userImage, storyImage, userName) {
  return AspectRatio(
    aspectRatio: 1.3 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(storyImage), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
          Colors.black.withOpacity(0.9),
          Colors.black.withOpacity(0.1),
        ])),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.blueAccent),
                    image: DecorationImage(image: AssetImage(userImage))),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget makePosts(userimage, username, postTime, postText, postImage, postImage2,
    likes, comments) {
  return Container(
    //padding: EdgeInsets.only(top: 10,right: 10,left: 10),
    color: Colors.black,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(userimage), fit: BoxFit.cover)),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username,
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  Text(
                    postTime,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz, color: Colors.grey))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(postText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.5,
                  letterSpacing: 1.7)),
        ),
        Container(
          height: 240,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                  child: Image(
                image: AssetImage(postImage),
                fit: BoxFit.cover,
              )),
              Container(
                width: 1,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  height: 240,
                  child: Image(
                    image: AssetImage(postImage2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLike(),
              Transform.translate(offset: Offset(-5, 0), child: makeLove()),
              SizedBox(width: 10),
              Expanded(
                  child: Text(likes,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          height: 1.5,
                          letterSpacing: 1.7))),
              Text(comments,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      height: 1.5,
                      letterSpacing: 1.7)),
            ],
          ),
        ),
        Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(true),
              makeCommentButton(),
              makeShareButton()
            ],
          ),
        )
      ],
    ),
  );
}

Widget makeLike() {
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(
        Icons.thumb_up,
        size: 12,
        color: Colors.white,
      ),
    ),
  );
}

Widget makeLove() {
  return Container(
    height: 25,
    width: 25,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        border: Border.all(color: Colors.white)),
    child: Center(
      child: Icon(
        Icons.favorite,
        size: 12,
        color: Colors.white,
      ),
    ),
  );
}

Widget makeLikeButton(isActive) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.blue : Colors.grey,
            size: 18,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Like",
            style: TextStyle(color: isActive ? Colors.blue : Colors.grey),
          )
        ],
      ),
    ),
  );
}

Widget makeCommentButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.chat, color: Colors.grey, size: 18),
          SizedBox(
            width: 5,
          ),
          Text(
            "Comment",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    ),
  );
}

Widget makeShareButton() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.share, color: Colors.grey, size: 18),
          SizedBox(
            width: 5,
          ),
          Text(
            "Share",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    ),
  );
}
