import 'package:flutter/material.dart';
import 'package:homework/RegPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Is Here",
                style: TextStyle(
                    color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),

                child: TextField(
                  decoration: InputDecoration(
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email,color: Colors.indigo,
                    ),
                  labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),

                  ),

                ),

              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock,color: Colors.indigo,
                    ),
                    suffixIcon: Icon(Icons.visibility,color: Colors.indigo,),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),


              ),
      ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationUI()));
      },
        child: Text('Login')
            ),
            ],
            ),
        ),
    );


  }
}
