import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:missionse/database.dart';
import 'package:missionse/mainpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final username_controller = TextEditingController();
  final passwd_controller = TextEditingController();
  final conpasswd_controller = TextEditingController();
  final emailid_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(20.0),child:Text(
              "Instagram",
              style: TextStyle(
                fontSize: 90,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w500,
              ),
            ) ,),
            Padding(padding: EdgeInsets.all(5.0),
                child:SizedBox(
                    height: 60,
                    width: 390,
                    child: TextField(
                      controller: username_controller,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        )))),
             Padding(padding: EdgeInsets.all(5.0),
                child:SizedBox(
                    height: 60,
                    width: 390,
                    child: TextField(
                      controller: passwd_controller,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        )))),
            Padding(padding: EdgeInsets.all(5.0),
                child:SizedBox(
                    height: 60,
                    width: 390,
                    child: TextField(
                      controller: conpasswd_controller,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(),
                          hintText: 'Confirm Password',
                        )))),
            Padding(padding: EdgeInsets.all(5.0),
                child:SizedBox(
                    height: 60,
                    width: 390,
                    child: TextField(
                      controller: emailid_controller,
                        decoration:const InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          border: OutlineInputBorder(),
                          hintText: 'Email ID',
                        )))),
            Padding(padding:const EdgeInsets.all(16.0),
                child:SizedBox(
                    height: 50,
                    width:390,
                    child : ElevatedButton(onPressed: () async{
                      if(passwd_controller.text != conpasswd_controller.text){
                        SnackBar snackBar = const SnackBar(content: Text('Password and Confirm password field should be same'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                      else{
                        UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailid_controller.text, password: passwd_controller.text);
                        User? updateduser = FirebaseAuth.instance.currentUser;
                        updateduser?.updateDisplayName(username_controller.text);
                        userSetup(username_controller.text, emailid_controller.text);
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString('email', emailid_controller.text);
                        prefs.setString('passwd', passwd_controller.text);
                        Navigator.of(context).pushNamed('/mainpage',arguments: user);
                      }
                    },child:const Text("Sign up"),)
                )),
            const SizedBox(
                height: 90,
                width: double.infinity
            ),
            Row(
                children: <Widget>[
                  const Expanded(
                      child: Divider(
                        thickness: 2.0,
                        endIndent: 5.0,
                        indent: 10.0,
                      )
                  ),

                  Text("OR",
                    style: TextStyle(color: Colors.grey.withOpacity(0.5)),),

                  const Expanded(
                      child: Divider(
                        endIndent: 10.0,
                        indent:5.0,
                        thickness: 2.0,
                      )
                  ),
                ]
            ),
            const SizedBox(
                height: 20,
                width: double.infinity
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const Text("Already have an account ? "),Padding(padding:const EdgeInsets.fromLTRB(0,0,14.0,0),child:InkWell(
                  child: const Text('Log in',style: TextStyle(color: Colors.blue),),
                  onTap: (){Navigator.of(context).pushNamed('/login');},
                ))
                ]),
          ],
        ),
      ),
    );
  }
}

