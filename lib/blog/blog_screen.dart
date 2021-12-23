import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip_paver/blog/posts.dart';

class blogScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _blogScreenState();
  }
}

class _blogScreenState extends State<blogScreen> {
  List<Posts> postsList = [];
  @override
  void initState() {
    DatabaseReference postsRef = FirebaseDatabase.instance.reference().child("Posts");
    postsRef.once().then(
        (DataSnapshot snap){
          var KEYS = snap.value.keys;
          var DATA = snap.value;

          postsList.clear();
          for(var individualKey in KEYS){
            Posts posts = Posts(
              DATA[individualKey]['image'],
              DATA[individualKey]['description'],
              DATA[individualKey]['date'],
              DATA[individualKey]['time'],
            );
            postsList.add(posts);
          }
          setState(() {
            print("Length : $postsList.length");
          });
        }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: postsList.length == 0
            ? Center(
                child: Text("No Blog Post Available"),
              )
        : ListView.builder(
            itemCount: postsList.length,
            itemBuilder: (_,index){
              return PostsUI(postsList[index].image, postsList[index].description, postsList[index].date, postsList[index].time);
            }
        )
      ),
    );
  }
  Widget PostsUI (String image, String description, String date, String time){
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.all(14.0),
      child: Container(
        padding: EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text(
                 date,
                 style: Theme.of(context).textTheme.subtitle1,
                 textAlign: TextAlign.center,
               ),
               Text(
                 time,
                 style: Theme.of(context).textTheme.subtitle1,
                 textAlign: TextAlign.center,
               )
             ],
           ),
           SizedBox(
             height: 10.0,
           ),
            Image.network(image, fit: BoxFit.cover,),
            SizedBox(
              height: 10.0,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
