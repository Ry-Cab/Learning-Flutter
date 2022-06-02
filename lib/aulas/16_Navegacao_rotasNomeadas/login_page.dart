import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String email = '';
  static String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                TextButton(onPressed: (){
                  if(email == "jacob@flutterando.com"){
                    if(password == "123"){
                    print("Correto");
                    Navigator.of(context).pushReplacementNamed('/home');
                    }
                  }
                }, child: Text("Entrar"))
              ],
              ),
          ),
        ),
      ),
    );
  }
}

