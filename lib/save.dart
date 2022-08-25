import 'package:flutter/material.dart';
class jay extends StatefulWidget {

   jay({Key? key}) : super(key: key);

  @override
  State<jay> createState() => _jayState();
}

class _jayState extends State<jay> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  // color: Colors.black54,
                  image: DecorationImage(
                    image: AssetImage('assets/monstar.png',),fit: BoxFit.fill
                  )
                ),
              ),
              Divider(height: 50,),
              Text('Horrahh !',style: TextStyle(fontSize: 40),),
              Text('Green and Nature are friends',style: TextStyle(fontSize: 20,color:Colors.grey),),
              Divider(
                color: Colors.transparent,
                height: 180,
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      )
    );
  }
}

