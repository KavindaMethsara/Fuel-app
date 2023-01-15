import 'package:flutter/material.dart';
import 'package:fuel_q/variables/variables.dart';

class AccountType extends StatelessWidget {
  const AccountType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: screenwidth,
                  height: screenheight,
                  color: Background_Green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 70),
                        child: Container(
                          width: screenwidth,
                            height: 100,
                            color: Background_Green,
                            child: Text('Account\nType' , style: TextStyle(fontSize: Title_Size , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left)),
                      ),
                      Image(image: AssetImage('assets/1.jpg'), height: 300, width: 300,),
                      // Container(
                      //   width: screenwidth,
                      //   height: screenheight*.4,
                      //   color: Colors.black,
                      // ),
                      TextButton(onPressed: (){},
                          child: Container(
                            child: Center(
                                child: Text('Vehicle Owner' , style: TextStyle(fontSize: 25.0 , color: Colors.white), textAlign: TextAlign.center)),
                            width: 300.0,
                            height: 70.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Button_Color,
                            ),
                          )
                      ),
                      TextButton(onPressed: (){},
                          child: Container(
                            child: Center(
                                child: Text('Filling Station Owner' , style: TextStyle(fontSize: 25.0 , color: Colors.white), textAlign: TextAlign.center)),
                            width: 300.0,
                            height: 70.0,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Button_Color,
                            ),
                          )
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
