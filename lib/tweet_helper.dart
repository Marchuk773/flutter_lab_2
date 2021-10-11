class TweetHelper {
  static var tweets = [
    TweetItemModel(
        "Check out our new feature.", "Flutter devs", "3m", "@FlutterDevs"),
    TweetItemModel("Stupid students are scaring my volunteers again!",
        "Zenoviy Veres", "5m", "@VirusLviv"),
    TweetItemModel("Internet will soon be unavailable in dormitories. Again.",
        "Lviv Polytechnic", "30m", "@Sharaga"),
    TweetItemModel("Congrats with python 3.10 release!", "Python devs", "3m",
        "@PythonOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
    TweetItemModel("Filler text to show how scroll works!", "Filler's org",
        "1h", "@FillerOfficial"),
  ];

  static TweetItemModel getTweet(int position) {
    return tweets[position];
  }

  static int getNumOfTweets() {
    return tweets.length;
  }
}

class TweetItemModel {
  String tweet;
  String username;
  String time;
  String twitterHandle;

  TweetItemModel(this.tweet, this.username, this.time, this.twitterHandle);
}
