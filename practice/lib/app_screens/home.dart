import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget{
 @override 
 _MyHomePageState createState() =>_MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  var email="";
  var password="";
 final _formKey=GlobalKey<FormState>();
 final emailController=TextEditingController();
 final passwordController=TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Form(key:_formKey,child: Padding(padding: EdgeInsets.symmetric(vertical: 40,horizontal: 30),child: ListView(
      children: [
        TextFormField(controller: emailController,
          decoration: InputDecoration(labelText: "Email : ",labelStyle: TextStyle(fontSize: 20),errorStyle:TextStyle(fontSize: 20,color:Colors.green)),validator: (String? value) {                        
  if (value!.isEmpty) {
    return "Email cann't be empty";
  }else if(!value.contains('@')){
  return 'Should be a Proper Email';
  }

  return null;
},
        ),
         TextFormField(controller: passwordController,obscureText: true,
          decoration: InputDecoration(labelText: "Password : ",labelStyle: TextStyle(fontSize: 20)),validator: (String? value) {                        
  if (value!.isEmpty) {
    return "Password cann't be empty";
  }

  return null;
},

        ),
        ElevatedButton(onPressed: (){
          if(_formKey.currentState!.validate()){
            setState(() {
               email=emailController.text;
           password=passwordController.text;
            });
          
          }
        }, child: Text("Submit")),
        Text('Email is ${email}',style: TextStyle(fontSize: 20),),Text('Password is ${password}',style: TextStyle(fontSize: 20))
      ],
    ),),);
  }

}