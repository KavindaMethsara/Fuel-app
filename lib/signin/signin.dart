import 'package:flutter/material.dart';
import 'package:fuel_q/register/create_account.dart';
import 'package:fuel_q/variables/variables.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              Container(
                width: screenwidth,
                height: screenheight,
                color: Background_Green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sign In' , style: TextStyle(fontSize: Title_Size , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                    Image(image: AssetImage('assets/3.jpg'), height: 300, width: 300,),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Container(
                        width: screenwidth*.8,
                        height: 400,
                        color: Background_Green,
                        child: MyCustomForm(),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Background_Green,
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 50, 0),
            child: Text('User Name:' , style: TextStyle(fontSize: 25 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty ) {
                  return 'Please enter correct user name';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'User Name',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Text('Password:' , style: TextStyle(fontSize: 25 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 10),
            //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: TextFormField(
              obscureText: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Invalid Password';
                }
                return null;
              },
              decoration: const InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
                fillColor: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(110, 10, 100, 5),
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(4, 164, 25, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.blueAccent, width: 5),
                  ),
                ),
              ),
              onPressed: (){
                // if (_formKey.currentState!.validate()){
                //   Navigator.push(context, MaterialPageRoute(builder: (_) => ()));
                // }
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 0, 50, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Dont have an account?' ,
                    style: TextStyle(
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  TextButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                        return CreateAccount();
                      }));
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                          decorationThickness: 2,
                          color: Colors.blue,
                          fontSize: 15),
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
