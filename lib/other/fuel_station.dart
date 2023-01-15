import 'package:flutter/material.dart';
import 'package:fuel_q/variables/variables.dart';

class FuelStation extends StatelessWidget {
  const FuelStation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Text('Station' , style: TextStyle(fontSize: 25.0 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
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
          Text('  What is the\nfilling station?' , style: TextStyle(fontSize: 30.0 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          Image(image: AssetImage('assets/2.jpg') , width: 300, height: 300,),
          //metana search bar eka aththatama hdnne mehema newei backend eken api call ekk arn ema hdnnoni math ek hriytma dnne naa hdna hatiii :(
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(Icons.search , color: Colors.grey , size: 30,),
                ) ,
                SizedBox(width: 50,),
                Text('Search Here' , style: TextStyle(fontSize: 20.0 , color: Colors.grey , fontWeight: FontWeight.bold), textAlign: TextAlign.center)
              ],
            ),
            width: screenwidth*.8,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
      backgroundColor: Background_Green,
    );
  }
}
