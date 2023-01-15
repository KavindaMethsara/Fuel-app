import 'package:flutter/material.dart';
import 'package:fuel_q/signin/signin.dart';
import 'package:fuel_q/variables/variables.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70),
                Container(
                  width: screenwidth,
                  height: screenheight,
                  color: Background_Green,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(
                          width: screenwidth,
                            height: 100,
                            color: Background_Green,
                            child: Text('Create\nAccount' , style: TextStyle(fontSize: Title_Size , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: screenwidth*.8,
                          height: screenheight*.8,
                          color: Background_Green,
                          child: MyCustomForm(),
                        ),
                      ),
                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ],
            ),
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
            child: Text('Name:' , style: TextStyle(fontSize: 15 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Container(
              width: 500,
              height: 40,
              color: Background_Green,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter user name';
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
                  hintText: '',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 50, 0),
            child: Text('Vehicle Type:' , style: TextStyle(fontSize: 15 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Container(
              width: 500,
              height: 40,
              color: Background_Green,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter Vehicle Type';
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
                  hintText: '',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 50, 0),
            child: Text('Vehicle Number:' , style: TextStyle(fontSize: 15 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Container(
              width: 500,
              height: 40,
              color: Background_Green,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter Vehicle Number';
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
                  hintText: '',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 50, 0),
            child: Text('Fuel Type:' , style: TextStyle(fontSize: 15 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Container(
              width: 500,
              height: 40,
              color: Background_Green,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter Fuel Type';
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
                  hintText: '',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 50, 0),
            child: Text('Password:' , style: TextStyle(fontSize: 15 , color: Title_Color , fontWeight: FontWeight.bold), textAlign: TextAlign.left),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 50, 0),
            child: Container(
              width: 500,
              height: 40,
              color: Background_Green,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty ) {
                    return 'Please enter Password';
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
                  hintText: '',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(110, 20, 100, 5),
            child: OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(4, 164, 25, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: const BorderSide(color: Colors.blueAccent, width: 10),
                  ),
                ),
              ),
              onPressed: (){
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                } else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                    return SignIn();
                  }));
                }
              },
              child: const Text(
                "Create",
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
                  Text('Already have an account?' ,
                    style: TextStyle(
                        decorationColor: Colors.white,
                        decorationThickness: 2,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  TextButton(
                    style: const ButtonStyle(alignment: Alignment.center),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      } else{
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                          return SignIn();
                        }));
                      }

                    },
                    child: const Text(
                      'Sign In',
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
