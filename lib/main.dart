import 'package:flutter/material.dart';
import 'package:missionse/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
var email;
var passwd;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  email = prefs.getString('email');
  passwd = prefs.getString('passwd');
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState? of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode=ThemeMode.dark;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: _themeMode,
        darkTheme: ThemeData.dark(),
        theme: ThemeData(),
        initialRoute: email==null ? '/' : '/login',
        onGenerateRoute: RouteGenerator.generateRoute
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body:
      Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.fromLTRB(0,100.0,0,100.0),child:Text(
              "Instagram",
              style: TextStyle(
                fontSize: 90,
                fontFamily: 'Billabong',
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ) ,),
            Padding(padding: EdgeInsets.all(32.0),
            child: SizedBox(
                height: 50,
                width: 375,
                child : ElevatedButton(onPressed:
                    (){
                  Navigator.of(context).pushNamed('/login');
                }, child:
                const Text("Log in"))))
            ,
            Padding(padding: const EdgeInsets.all(32.0),
                child: SizedBox(
                    height: 50,
                    width: 375,
                    child : ElevatedButton(onPressed:
                        (){
                      Navigator.of(context).pushNamed('/signup');
                    }, child:
                    const Text("Sign up",style:TextStyle(color: Colors.blueAccent),),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.red.withOpacity(0),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(2),
                            ),
                            side: BorderSide(color: Colors.blueAccent)))))),
            // Switch(value: _value, onChanged: (value){
            //   setState(() {
            //     _value = value;
            //     if (_value) {
            //       MyApp.of(context)!.changeTheme(ThemeMode.dark);
            //     } else {
            //       MyApp.of(context)!.changeTheme(ThemeMode.light);
            //     }
            //   });
            // }),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

