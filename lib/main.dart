import 'package:flutter/material.dart';
import 'package:theme/save.dart';

final _lightheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(bodyText2: TextStyle(color: Colors.black)));
final _darktheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
);
void main() {
  runApp(theme()

  );
}

class theme extends StatefulWidget {
  const theme({Key? key}) : super(key: key);

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _darktheme : _lightheme,
      routes: {'/save': (abcd) => jay()},
      home: Scaffold(
        backgroundColor: _switch ? Colors.black : Colors.cyan,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    value: _switch,
                    onChanged: (context) {
                      setState(() {
                        _switch = context;
                      });
                    }),
                Text(
                  'Choose Your Mood',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Text(
                  'Theme is stillable to be change',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Text(
                  'under in the setting',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Divider(
                  color: Colors.transparent,
                  height: 50,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.cyan,
                    maxRadius: 38,
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    maxRadius: 33,
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink,
                    maxRadius: 33,
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 35,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    maxRadius: 33,
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  height: 50,
                ),
                Builder(
                  builder: (context) {
                    return ElevatedButton(

                      onPressed: () {
                        Navigator.pushNamed(context, '/save');
                      },
                      child: Text(
                        "Save Now",
                        style: TextStyle(color: Colors.black,fontSize: 25),
                      ),

                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                        minimumSize: Size(200,60)

                      ),
                        // StadiumBorder()
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
