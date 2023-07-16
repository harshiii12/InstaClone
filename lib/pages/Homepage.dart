import 'package:flutter/material.dart';
import 'package:missionse/Postscard.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 2.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        toolbarHeight: 50,
        flexibleSpace: Container(
          alignment: Alignment.bottomLeft,
          child: Row(
            children: [
             // IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_outlined,size: 35, )),
              const Padding(padding: EdgeInsets.fromLTRB(15, 3, 135, 3 ),
                  child : Text(
                    "Instagram",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Billabong',
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,size: 27.5,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.chat_bubble_outline_outlined,size: 27.5,))
            ],
          ),
        ),
      ),
      body:

      ListView(
        children: [

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(5.0,10.0,5.0,10.0),

            child: Row(
              children: [
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/avenue-815297__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Your Story'),)
                    ],
                  ),
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/road-1072823__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-1'),)
                    ],
                  ),
                ), Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/flowers-276014__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-2'),)
                    ],
                  ),
                ), Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/tree-736885__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-3'),)
                    ],
                  ),
                ), Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/pink-324175__480.webp')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-4'),)
                    ],
                  ),
                ), Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/tree-736885__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-5'),)
                    ],
                  ),
                ), Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.deepOrangeAccent,width: 2),
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/flowers-276014__480.jpeg')
                            )
                        ),
                      ) ,
                      const Padding(padding: EdgeInsets.all(4.0),child: Text('Person-6'),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Postcards(linkpost: 'https://iso.500px.com/wp-content/uploads/2016/03/stock-photo-142984111-1500x1000.jpg', linkprofile: 'linkprofile', person_name: 'Person-2',person_location:'Bali' ,post_desc: 'If you\'re looking for a tranquil escape surrounded by awe-inspiring landscapes, this is the place to be. 🌄 ',post_date: '2 hours ago',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1530515587481-d59374eb8cf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfDlSRDVOOTAtUVU0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-5',person_location:'Ghaziabad' ,post_desc: 'Really Enjoyed walking to the woods last week would recommend all of my followers to go there for recreation ',post_date: '12 hours ago',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1661012013185-1ab5628cb092?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDMwfDlSRDVOOTAtUVU0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-6',person_location:'Ladakh' ,post_desc: '🌿 Tracking through the wilderness was an incredible experience! 🚶‍♂🌲 #NatureJourney #TrackingAdventure #IntoTheWild ',post_date: '1 day ago',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1660680283730-1151899603d3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDQxfDlSRDVOOTAtUVU0fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-1',person_location:'Kolkata' ,post_desc: 'Smile is the biggest gift :)',post_date: '2 days ago',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1661423063753-ea9121c6abb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfENEd3V3WEpBYkV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-3',person_location:'Gwalior' ,post_desc: ' Follow my page for such cool updates!!',post_date: '6 July',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1555597673-b21d5c935865?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDR8OVJENU45MC1RVTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-2',person_location:'Kedarkantha' ,post_desc: '🌞 🥋',post_date: '18 June',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1661470706575-eca85c2cd37a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE0fENEd3V3WEpBYkV3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-4',person_location:'Mumbai' ,post_desc: 'Tadaaa!! Here is the final look 🤍',post_date: '22 August 2022',liked: false,),
          Postcards(linkpost: 'https://images.unsplash.com/photo-1630568001199-984008a7d6b0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG90JTIwZ2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60', linkprofile: 'linkprofile', person_name: 'Person-2',person_location:'Shimla' ,post_desc: 'Traveling to mend the soul 💓',post_date: '14 March 2022',liked: false,),

        ],
      ),
    );
  }
}
