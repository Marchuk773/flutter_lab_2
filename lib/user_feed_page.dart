import 'package:flutter/material.dart';
import 'package:lab2/tweet_helper.dart';
import 'package:lab2/tweet_item_model.dart';

class UserFeedPage extends StatefulWidget {
  @override
  _UserFeedPageState createState() => _UserFeedPageState();
}

class _UserFeedPageState extends State<UserFeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        leading: const Icon(
          Icons.account_circle,
          color: Colors.grey,
          size: 35.0,
        ),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, position) {
          TweetItemModel tweet = TweetHelper.getTweet(position);

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.account_circle,
                        size: 60.0,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                      child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: tweet.username,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
                                            color: Colors.black),
                                      ),
                                      TextSpan(
                                          text: " " + tweet.twitterHandle,
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey)),
                                      TextSpan(
                                          text: " ${tweet.time}",
                                          style: const TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey))
                                    ]),
                                    overflow: TextOverflow.ellipsis,
                                  )),
                                  flex: 5,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4.0),
                                    child: Icon(
                                      Icons.expand_more,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  flex: 1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                tweet.tweet,
                                style: const TextStyle(fontSize: 18.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                Icon(
                                  Icons.comment,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  Icons.rotate_right_outlined,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  Icons.thumb_up,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  Icons.share,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.mail),
      ),
    );
  }
}
