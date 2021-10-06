import 'package:lab2/tweet_item_model.dart';

class TweetHelper {
  static var tweets = [
    TweetItemModel(
        "Check out this new feature.", "Flutter devs", "3m", "@FlutterDevs"),
    TweetItemModel("Stupid students are scaring my volunteer again!",
        "Zenoviy Veres", "5m", "@VirusLviv"),
    TweetItemModel("Internet will soon be unavailable in dormitories. Again.",
        "Lviv Polytechnic", "30m", "@Sharaga"),
    TweetItemModel("Congrats with python 3.10 release!", "Python devs", "3m",
        "@PythonOfficial"),
  ];

  static TweetItemModel getTweet(int position) {
    return tweets[position];
  }
}
