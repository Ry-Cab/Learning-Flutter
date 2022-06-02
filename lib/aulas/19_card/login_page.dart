import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String email = '';
  static String password = '';
  
  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/images/logo.png')),
                Container(height: 10,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12, top: 20, right: 12, bottom: 12,),
                    child: Column(
                      children: [
                        TextField(
                    onChanged: (text){
                      print(text);
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      border:  OutlineInputBorder()
                    ),
                ),
                SizedBox(height: 10,),
                TextField(
                    onChanged: (text){
                      print(text);
                      password = text;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border:  OutlineInputBorder()
                    ),
                ),
                SizedBox(height: 15,),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: (){
                  if(email == "jacob@flutterando.com"){
                    if(password == "123"){
                    print("Correto");
                    Navigator.of(context).pushReplacementNamed('/home');
                    }
                  }
                }, child: Container(
                  width: double.infinity,
                  child: Text("Entrar", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  )
                ) 
                    ],
                    ),
                  ),
                ),
              
              ],
              ),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset("assets/images/background.jpg", fit: BoxFit.cover,)),
          Container(color:  Colors.black.withOpacity(0.3),),
        _body(),
      ],),
    );
  }
}

