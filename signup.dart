import 'package:flutter/material.dart';


class signInPage  extends StatelessWidget {
  const signInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title:  Text('SIGN IN PAGE'),),
      body: MySignIn(), 
    );
  }
}


class MySignIn extends StatefulWidget {
  MySignIn({Key? key}) : super(key: key);

  @override
  State<MySignIn> createState() => _MySignInState();
}

class _MySignInState extends State<MySignIn> {

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();
  TextEditingController  passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text('SIGN UP',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter User Name')
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter E-Mail'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter Phone Number'),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Enter  Password'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: (){
                  print(nameController.text);
                  print(emailController .text);
                  print(phoneNumberController.text);
                  print(passwordController.text);
   
                  Navigator.pushNamed((context) , '/login');
                },
                 child: Text('SIGN IN'))
            ],
          )

        ],
      ),
    );
  }
}