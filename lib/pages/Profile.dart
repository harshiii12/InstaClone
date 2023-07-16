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
      backgroundColor: Colors.black,
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 300,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const Text('learnwithharshi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    const Icon(Icons.keyboard_arrow_down),
                    const SizedBox(
                      width: 97.0,
                    ),
                    const Icon(Icons.add_box_outlined),
                    const SizedBox(
                      width: 15.0,
                    ),
                     IconButton(
                        icon: const Icon(Icons.logout), onPressed: ()async{
       SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove('email');
      prefs.remove('passwd');
       _signout(context);
      email=null;
       passwd=null;
     }, )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        height: 115,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2.0),
                            image: const DecorationImage(
                                fit: BoxFit.fitWidth,
                                image: AssetImage('assets/ProfilePic.jpg'))),
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          '18',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '341',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '408',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text('Harshita Agrawal'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                  child: Text('App Developer'),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
                  child: Text(
                    '#EverythingisDesigned',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Edit Profile',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade800),
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            )),
                            SizedBox(
                              width: 7,
                            ),
                            Expanded(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Share Profile',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey.shade800),
                                  elevation: MaterialStateProperty.all(0),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            ))
                          ],
                        ),
                        // ElevatedButton(onPressed: ()async{
                        //   SharedPreferences prefs = await SharedPreferences.getInstance();
                        //   prefs.remove('email');
                        //   prefs.remove('passwd');
                        //   _signout(context);
                        //   email=null;
                        //   passwd=null;
                        // }, child: const Text('Sign Out')),
                      ],
                    )),
              ],
            ),
          )),
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 0.75,
        children: [
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1530933760-343e767695cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1542820893-f3d652b53f50?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHJhaW4lMjBnaXJsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661968496716-6d3b3f719778?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661984896555-69b5d8b4b322?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1534452203293-494d7ddbf7e0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2hvcHBpbmd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661978947164-b894c0b8a95c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661979278058-394ae7ec467d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1539635278303-d4002c07eae3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGZyaWVuZHN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1598971861713-54ad16a7e72e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHNob3BwaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1493770348161-369560ae357d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN1bnNldHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1518057111178-44a106bad636?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661873527012-f9a299cc31fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1574380965762-d7af37362e0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZGl3YWxpfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1528559827341-b4e108f6ff32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHN3aW5nc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1537884557178-342a575d7d16?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZHJhd2luZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1661950570242-15672c604a3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60',
              fit: BoxFit.fill,
            ),
          ),
          Container(
            child: Image.network(
              'https://images.unsplash.com/photo-1616306239756-82efea8bef97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bW92aWVzJTIwY2FtZXJhJTIwZ2lybHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _signout(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then((_) {
      Navigator.pushNamed(context, '/login');
    });
  }
}
