import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:missionse/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  late String _email=email,_password=passwd;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
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
            const Padding(padding: EdgeInsets.all(50.0),child:Text(
              "Instagram",
              style: TextStyle(
                fontSize: 90,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w500,
              ),
            ) ,)
            ,
            Padding(padding: EdgeInsets.all(1.0),
                child:SizedBox(
                    height: 80,
                    width: 390,
                    child: email == null ? TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                        ),
                    onChanged: (value) {
                          setState(() {
                            _email=value.trim();
                          });
                    },) : TextFormField(
                      initialValue: email,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                      ),
                      onChanged: (value) {
                        setState(() {
                          _email=value.trim();
                        });
                      },))),
            Padding(padding: const EdgeInsets.all(1.0),
                child:SizedBox(
                    height: 80,
                    width: 390,
                    child: passwd==null ? TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      onChanged: (value) {
                        setState(() {
                          _password=value.trim();
                        });
                      }): TextFormField(
                        initialValue: passwd,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                        onChanged: (value) {
                          setState(() {
                            _password=value.trim();
                          });
                        }))),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Padding(padding:const EdgeInsets.fromLTRB(0,0,14.0,0),child:InkWell(
                  child: const Text('Forgot Password?',style: TextStyle(color: Colors.blue),),
                  onTap: (){},
                ))
                ]),
            Padding(padding:const  EdgeInsets.all(16.0),
                child:SizedBox(
                    height: 50,
                    width:390,
                    child : ElevatedButton(onPressed: () async {
                      try {
                        UserCredential credential = await auth
                            .signInWithEmailAndPassword(
                            email: _email, password: _password);
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.setString('email', _email);
                        prefs.setString('passwd', _password);
                        Navigator.of(context).pushNamed('/mainpage',arguments: credential);
                      } on FirebaseAuthException catch(e){
                        if(e.code=='user-not-found'){
                          SnackBar snackbar =const SnackBar(content: Text('No user found for that email'),behavior: SnackBarBehavior.floating,);
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                        else if(e.code=='wrong-password'){
                          SnackBar snackbar =const SnackBar(content: Text('Wrong Password! Try again'),behavior: SnackBarBehavior.floating,);
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                        else{
                          SnackBar snackbar =const SnackBar(content: Text('Please enter a valid email id'),behavior: SnackBarBehavior.floating,);
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      }

                    },
                      child:const Text("Log in"),)
                )),
            const SizedBox(
                height: 100,
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
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),),

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
                height: 50,
                width: double.infinity
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [const Text("Don't have account ? "),Padding(padding:const EdgeInsets.fromLTRB(0,0,14.0,0),child:InkWell(
                  child: const Text('Sign Up',style: TextStyle(color: Colors.blue),),
                  onTap: (){Navigator.of(context).pushNamed('/signup');},
                ))
                ]),

          ],
        ),
      ),
    );
  }
}