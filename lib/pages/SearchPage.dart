import 'package:flutter/material.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        flexibleSpace: Container(
          alignment: Alignment.bottomLeft,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey.shade800),
              elevation: MaterialStateProperty.all(0)

            ),onPressed: (){
                  showSearch(context: context, delegate: MySearchDelegate());
                },child: Row(
              children: const [
                Icon(Icons.search),
                Text(" Search")
              ],
            ),

            ),
          )
        ),
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
}
class MySearchDelegate extends SearchDelegate{
  @override
  List<Widget>? buildActions(BuildContext context) =>[
    IconButton(onPressed: (){
      if(query.isEmpty){
        close(context,null);
      }
      else{
      query='';}
    }, icon: const Icon(Icons.clear))
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(onPressed: ()=> close(context, null), icon: Icon(Icons.arrow_back_ios_new));

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions=[
      '#love',
      '#travel',
      '#work',
      '#vacation',
      '#countryfirst'
    ];
    return ListView.builder(itemBuilder: (context,index){
      final suggestion=suggestions[index];
      return ListTile(
        title: Text(suggestion),
        onTap: (){
          query=suggestion;
        },
      );
    },itemCount: suggestions.length,);
  }
  
}