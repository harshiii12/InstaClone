import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
class Profile extends StatefulWidget {
  late UserCredential userCredential;
  Profile({Key? key, required this.userCredential}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 300,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        flexibleSpace:Padding(
        padding: const EdgeInsets.all(5.0),
         child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove('email');
                  prefs.remove('passwd');
                  _signout(context);
                  email=null;
                  passwd=null;
                }, child: const Text('Sign Out')),
                Padding(padding:const EdgeInsets.all(5.0),
                child:Container(
                  height: 175,
                  width: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 2.0),
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://images.unsplash.com/photo-1572631382901-cf1a0a6087cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBvcnRyYWl0c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
                      )
                  ),
                ),),
               Column(
                 children: const[
                   Text('10',style: TextStyle(fontSize: 20),),
                   Text('Posts',style: TextStyle(fontSize: 10),)
                 ],
               ),
                Column(
                  children: const[
                    Text('54',style: TextStyle(fontSize: 20),),
                    Text('Followers',style: TextStyle(fontSize: 10),)
                  ],
                ),
                Column(
                  children: const[
                    Text('108',style: TextStyle(fontSize: 20),),
                    Text('Following',style: TextStyle(fontSize: 10),)
                  ],
                ),

              ],
            ),
            const Padding(padding: EdgeInsets.fromLTRB(5.0,0,0,0),
            child: Text('Jacob West'),),
            const Padding(padding: EdgeInsets.fromLTRB(5.0,0,0,0),
              child: Text('Digital Goodies designer'),),
            const Padding(padding: EdgeInsets.fromLTRB(5.0,0,0,0),
              child: Text('#EverythingisDesigned',style: TextStyle(color: Colors.blue),),),
            Padding(padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(onPressed: (){}, child: const Center(child: Text('Edit Profile',style: TextStyle(color: Colors.black),),),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent),elevation: MaterialStateProperty.all(0),shape: MaterialStateProperty.all(RoundedRectangleBorder(side:const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(2)))),)),
          ],
        ),)
      ),
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 0.75,
        children: [
          Container(child: Image.network('https://images.unsplash.com/photo-1661980810393-d50a706d6586?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1659535915214-e7cbac112038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661968496716-6d3b3f719778?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661984896555-69b5d8b4b322?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661984011274-a0eaa4793b51?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661978947164-b894c0b8a95c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661979278058-394ae7ec467d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1657299143549-73fb118d68aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661983580795-2e1c430fa34a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661998556586-c118ea32ae11?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661347333174-f30a9e253e01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzNnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1662003496587-8b41cf5818e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzN3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661873527012-f9a299cc31fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661977187439-e7cd68be46b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661912267448-c45744f4691b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0M3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661976274478-bd927631e93d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0NHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1661950570242-15672c604a3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),
          Container(child: Image.network('https://images.unsplash.com/photo-1655427565427-34ea63c7ede6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',fit: BoxFit.fill,),),

        ],
      ),
    );
  }
  Future <void> _signout(BuildContext context) async{
    await FirebaseAuth.instance.signOut().then((_) {
      Navigator.pushNamed(context, '/login');
    });
  }
}
