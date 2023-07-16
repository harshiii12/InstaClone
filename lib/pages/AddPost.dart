import 'dart:io';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  var sampleImage;
  var picker =new ImagePicker();
  Future getImage() async{
    XFile tempImage=await picker.pickImage(source: ImageSource.gallery) as XFile;
    setState(() {
      sampleImage = File(tempImage.path) ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Center(
        child:sampleImage == null ? Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          const Text('Select an image'),
          ElevatedButton(onPressed: () {
            getImage();
          }, child: const Icon(Icons.add, color: Colors.black,),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey),
                elevation: MaterialStateProperty.all(0),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(color: Colors.grey),borderRadius: BorderRadius.circular(10)))
            ),

          ),
        ],) : enableupload(),
      ),
    );
  }
  Widget enableupload(){
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat.jms();
    final String formatted = formatter.format(now);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.file(sampleImage,height: 300.0,width: 300.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              FirebaseStorage storage = FirebaseStorage.instance;
              Reference rf = storage.ref().child(formatted +'.jpg');
              UploadTask task = rf.putFile(sampleImage);
              task.then((res) {
                res.ref.getDownloadURL();
              });
            }, child: const Text('Share',style: TextStyle(color: Colors.blue),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(10)))
              ),),
            ElevatedButton(onPressed: (){
              setState(() {
                sampleImage=null;
              });
            }, child: const Text("Remove",style: TextStyle(color: Colors.blue),),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(side: const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(10)))
              ),)
          ],
        )

      ],
    );
  }
}
