import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:intl/intl.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'blog_screen.dart';

class uploadPhoto extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _uploadPhotoState();
  }
}

class _uploadPhotoState extends State<uploadPhoto> {

  File sampleImage;
  var customImageFile;
  String _myValue;
  String url;
  final formKey = GlobalKey<FormState>();
  Future getImage() async {
    var image = await ImagePicker().getImage(source: ImageSource.gallery);
    customImageFile = File(image.path) ;
    setState(() {
      sampleImage = image as File;
    });
    print('customImageFile: ' + customImageFile);
  }
  bool validateAndSave(){
    if(formKey.currentState.validate()){
      formKey.currentState.save();
      return true;
    }
    return false;
  }
  void uploadStatusImage() async{
    if(validateAndSave()){
      final Reference postImageRef = FirebaseStorage.instance.ref().child("Post Images");
      var timeKey = DateTime.now();

      final UploadTask uploadTask = postImageRef.child(timeKey.toString()+ ".jpg").putFile(sampleImage);
      print('aaa');
      print(uploadTask);
      var ImageUrl = await(await uploadTask).ref.getDownloadURL();
      url = ImageUrl.toString();
      print(url);
      goToBlogPage();
      saveToDatabase(url);

    }
  }
  void goToBlogPage(){
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return blogScreen();
    }
    ));
  }

  void saveToDatabase(url){
    var dbTimeKey = new DateTime.now();
    var formatDate = DateFormat('MMM d, yyyy');
    var formatTime = DateFormat('EEEE, hh:mm aaa');
    String date = formatDate.format(dbTimeKey);
    String time = formatTime.format(dbTimeKey);
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    var data = {
      "image" :url,
      "description" : _myValue,
      "date" : date,
      "time" : time,
    };
    ref.child("Posts").push().set(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: sampleImage == null ? Text("Select an Image") : enableUpload(),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Add Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
  Widget enableUpload(){
    return Container(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              Image.file(sampleImage, height: 330.0, width: 660.0,),
              SizedBox(height: 15.0,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Description",

                ),
                validator: (value){
                  return value.isEmpty ? "Description is Required" : null;
                },
                onSaved: (value){
                  return _myValue = value;
                },
              ),
              SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
                    textStyle: MaterialStateProperty.all(TextStyle(color: Colors.white)),
                    elevation: MaterialStateProperty.all(5.0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ))),
                child: Padding(
                  padding: EdgeInsets.only(top: 17.0, bottom: 17.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Add a new post",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: uploadStatusImage,
              ),
            ],
          ),
        ),
    );
  }
}
