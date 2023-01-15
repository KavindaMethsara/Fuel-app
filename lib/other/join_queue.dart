import 'package:flutter/material.dart';
import 'package:fuel_q/variables/variables.dart';

class JoinQueue extends StatelessWidget {
  const JoinQueue({Key? key}) : super(key: key);

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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5 , left: 10),
                      child: Text('Join Queue' , style: TextStyle(fontSize: 25.0 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                    ),
                    width: screenwidth*.6,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            width: screenwidth,
            height: screenheight*.3,
            color: Dark_Green,
          ),
          SizedBox(height: 50,),
          TextButton(onPressed: (){},
              child: Container(
                child: Center(
                    child: Text('Vehicle Owner' , style: TextStyle(fontSize: 25.0 , color: Colors.white), textAlign: TextAlign.center)),
                width: 300.0,
                height: 60.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.red,
                ),
              ),
          ),
          SizedBox(height: 50,),
          Container(
            child: Column(
              children: [
                Container(
                  child: Center(
                      child: Text('Exit' , style: TextStyle(fontSize: 25.0 , color: Colors.white , fontWeight: FontWeight.bold), textAlign: TextAlign.center ,)),
                  width: 300,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    ),
                    color: Dark_Green,
                  ),
                ),
                TextButton(onPressed: (){},
                  child: Container(
                    child: Center(
                        child: Text('Before Pump Fuel' , style: TextStyle(fontSize: 25.0 , color: Colors.white), textAlign: TextAlign.center)),
                    width: 300.0,
                    height: 60.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Button_Color,
                    ),
                  ),
                ),
                TextButton(onPressed: (){},
                  child: Container(
                    child: Center(
                        child: Text('After Pump Fuel' , style: TextStyle(fontSize: 25.0 , color: Colors.white), textAlign: TextAlign.center)),
                    width: 300.0,
                    height: 60.0,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Color.fromRGBO(105, 244, 20, 1),
                    ),
                  ),
                ),
              ],
            ),
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15)
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Background_Green,
    );
  }
}
