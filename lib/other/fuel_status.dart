import 'package:flutter/material.dart';
import 'package:fuel_q/variables/variables.dart';

class FuelStatus extends StatefulWidget {
  const FuelStatus({Key? key}) : super(key: key);

  @override
  State<FuelStatus> createState() => _FuelStatusState();
}

class _FuelStatusState extends State<FuelStatus> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                        child: Text('Fuel Status' , style: TextStyle(fontSize: 25.0 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
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
            SizedBox(height: 30,),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Center(
                        child: Text('Petrol' , style: TextStyle(fontSize: 25.0 , color: Colors.white , fontWeight: FontWeight.bold), textAlign: TextAlign.center ,)),
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      ),
                      color: Dark_Green,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){
                          setState(() {
                            _value = value!;
                          });
                            }),
                        Text('Currently Available')
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Radio(value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            }),
                        Text('Not Available')
                      ],
                    ),
                  )
                ],
              ),
              width: 250,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                ),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Center(
                        child: Text('Diesel' , style: TextStyle(fontSize: 25.0 , color: Colors.white , fontWeight: FontWeight.bold), textAlign: TextAlign.center ,)),
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                      ),
                      color: Dark_Green,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            }),
                        Text('Currently Available')
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Radio(value: 2,
                            groupValue: _value,
                            onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            }),
                        Text('Not Available')
                      ],
                    ),
                  )
                ],
              ),
              width: 250,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)
                ),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30,),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Center(child:
                    Text('No of vehicles in the queue' , style: TextStyle(fontSize: 20.0 , color: Colors.white , fontWeight: FontWeight.bold), textAlign: TextAlign.center ,)),
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)
                      ),
                      color: Dark_Green
                    ),
                  ),
                  Container(
                    child: Center(
                        child: const Text('34' , style: TextStyle(fontSize: 30 , color: Colors.white),)), // metanta me value ek backend eken enna oniii ek poddk blnn
                    width: 50,
                    height: 50,
                    color: Colors.grey,
                  )
                ],
              ),
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)
                ),
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Background_Green,
    );
  }
}
