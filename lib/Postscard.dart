import 'package:flutter/material.dart';
class Postcards extends StatefulWidget {
  final linkpost,linkprofile,person_name,person_location,post_desc,post_date; var liked;
  Postcards({Key? key,
    @required this.linkpost,
    @required this.linkprofile,
    @required this.person_name,
    @required this.person_location,
    @required this.post_desc,
    @required this.post_date,
  @required this.liked}) : super(key: key);

  @override
  State<Postcards> createState() => _PostcardsState();
}

class _PostcardsState extends State<Postcards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        children: [
          ListTile(
            leading:const Icon(Icons.person, size: 25,),
            title: Text(widget.person_name),
            subtitle: Text(widget.person_location),
          ),
          Image.network(widget.linkpost,fit: BoxFit.fill,),
          Row(
            children: [
              IconButton(onPressed: (){
                setState(() {
                  widget.liked=!widget.liked;
                });
                if(widget.liked){
                const snackbar=SnackBar(content: Text('You liked this post'),);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);}
              }, icon: (widget.liked==true) ? const Icon(Icons.favorite,color: Colors.red,size: 30,) : const Icon(Icons.favorite_outline,color: Colors.black,size: 30,),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.mode_comment_outlined, size: 30,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.send, size: 30,))
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5.0),
            child:RichText(
              text: TextSpan(
                  children: [
                    TextSpan(text: widget.person_name + " ", style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    TextSpan(text: widget.post_desc,style: const TextStyle(color:Colors.black)),

                  ]
              ),
            ) ,
          ),
          const SizedBox(
            height: 20,width: double.infinity,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5.0),
            child: Text(widget.post_date, style: const TextStyle(color: Colors.grey),),
          )


        ],
      ),
    );
  }
}
