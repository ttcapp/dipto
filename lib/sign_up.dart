import 'package:flutter/material.dart';
String _email= "dkdipto6@gmail.com";
String _password= "1234";
final _formKey=GlobalKey<FormState>();

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextFormField(
                validator: (text){
                  if(text==null ||text.isEmpty){
                    return"This field is empty";
                  }
                },
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  suffix: Icon(Icons.attach_email),
                  hintText: ("Enter Your Email"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.black),
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (text){
                  if(text==null ||text.isEmpty){
                    return"This field is empty";
                  }
                },
                obscureText: true,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    suffix: Icon(Icons.remove_red_eye_rounded),
                    hintText: ("Enter Your Password"),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.black),
                    )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed:(){
                    _formKey.currentState!.validate();


                  }, child: Text("Log In")
              )
            ],
          ),
        ),
      ),
    );
  }
}
