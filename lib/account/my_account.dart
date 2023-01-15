import 'package:flutter/material.dart';
import 'package:fuel_q/other/fuel_status.dart';
import 'package:fuel_q/other/join_queue.dart';
import 'package:fuel_q/variables/variables.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20 , top: 50),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/logo.jpg'),height: 100, width: 100,),
                  Container(
                    width: 290,
                    height: 60,
                    color: Dark_Green,
                    child: Column(
                      children: [
                        Text('My Account' , style: TextStyle(fontSize: 30.0 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                        Text('Make it easy with FuelQ....' , style: TextStyle(fontSize: 20.0 , color: Colors.white , fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            height: screenheight*.4,
            width: screenwidth,
            color: Dark_Green,
          ),
          SizedBox(height: 30,),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return FuelStatus();
            }));
          },
              child: Container(
                child: Center(
                    child: Text('Fuel Status' , style: TextStyle(fontSize: 25.0 , color: Title_Color), textAlign: TextAlign.center)),
                width: 200.0,
                height: 130.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5
                  ),],
                  color: Colors.white,
                ),
              )
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder){
              return JoinQueue();
            }));
          },
              child: Container(
                child: Center(
                    child: Text('Join Queue' , style: TextStyle(fontSize: 25.0 , color: Title_Color), textAlign: TextAlign.center)),
                width: 200.0,
                height: 130.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5
                  ),],
                  color: Colors.white,
                ),
              )
          ),
        ],
      ),
      backgroundColor: Background_Green,

    );
  }
}
