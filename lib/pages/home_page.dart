import 'package:facebookui/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  static final String id = 'facebook_ui';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600,
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt,
              color: Colors.grey.shade600,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          // #for_user
          Container(
            height: 120,
            margin: EdgeInsets.only(top: 0),
            padding: EdgeInsets.only(right: 10, left: 10, top: 10),
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(width: 2, color: Colors.red.shade200),
                          image: DecorationImage(
                              image: AssetImage('assets/images/user_1.jpeg'))),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(width: 1, color: Colors.grey)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What`s on your mind?',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18)),
                      ),
                    ))
                  ],
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 5),
                              Text('Live', style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: 1,
                          color: Colors.grey,
                          height: 25,
                          margin: EdgeInsets.only(top: 20)),
                      Container(
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.photo,
                                color: Colors.greenAccent,
                              ),
                              SizedBox(width: 5),
                              Text('Photo',
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: 1,
                          color: Colors.grey,
                          height: 25,
                          margin: EdgeInsets.only(top: 20)),
                      Container(
                        child: Center(
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.redAccent),
                              SizedBox(width: 5),
                              Text('Check in',
                                  style: TextStyle(color: Colors.grey))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
          // #stories
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 200,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                ),
                makeStories('assets/images/user_1.jpeg',
                    'assets/images/story_1.jpeg', 'User One'),
                makeStories('assets/images/user_2.jpeg',
                    'assets/images/story_2.jpeg', 'User Two'),
                makeStories('assets/images/user_3.jpeg',
                    'assets/images/story_3.jpeg', 'User Three'),
                makeStories('assets/images/user_4.jpeg',
                    'assets/images/story_4.jpeg', 'User Four'),
                makeStories('assets/images/user_5.jpeg',
                    'assets/images/story_5.jpeg', 'User Five'),
                makeStories('assets/images/user_3.jpeg',
                    'assets/images/story_3.jpeg', 'User Three'),
              ],
            ),
          ),
          SizedBox(height: 10),
          // #posts
          makePosts(
              'assets/images/user_1.jpeg',
              'User One',
              '1 hr ago',
              'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              'assets/images/story_2.jpeg',
              'assets/images/feed_4.jpeg',
              '23K',
              '400 comments'),
          makePosts(
              'assets/images/user_2.jpeg',
              'User Two',
              '2 hr ago',
              'This is the best work in the world and I love this place.',
              'assets/images/story_5.jpeg',
              'assets/images/feed_5.jpeg',
              '3K',
              '240 comments'),
          makePosts(
              'assets/images/user_3.jpeg',
              'User Four',
              '7 hr ago',
              'This girl is very beautiful. She is a top model and she comes from Spain',
              'assets/images/story_1.jpeg',
              'assets/images/feed_1.jpeg',
              '14K',
              '2300 comments'),
        ],
      ),
    );
  }
}
