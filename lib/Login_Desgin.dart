import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 var emailcontroller=TextEditingController();
 var passwordcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        // title: Text(''),
        // actions: [

        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
          child: Column(
          
             children: [
             
               Text(
                 'Login',
                 style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                 ),
               ),
              
               SizedBox(
                height: 40.0,
               ),
               
               TextFormField(
                controller:emailcontroller,
                 keyboardType:TextInputType.emailAddress,
                 decoration :  InputDecoration(
                  labelText:'Email Address',
                  prefixIcon:Icon(
                    Icons.email,
                  ),
                  border:OutlineInputBorder(),
                ),
               ),
                
                SizedBox(
                height: 15.0,
               ),
               
               TextFormField(
                 controller: passwordcontroller,
                 keyboardType:TextInputType.visiblePassword,
                 obscureText :true,
                 decoration :  InputDecoration(
                  labelText:'Password',
                  prefixIcon:Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border:OutlineInputBorder(),
                ),
               ),
 
                SizedBox(
                height: 20.0,
               ),
               
              Container(
                width: double.infinity,
                color:Colors.blue,
                child: MaterialButton(
                onPressed: (){
                  print(emailcontroller.text);
                  print(passwordcontroller.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
               ),
              ),

               SizedBox(
                height: 10.0,
               ),
               
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\t have an account?'),
                  TextButton(
                    onPressed: (){

                    }, 
                    child:Text('Register Now'),
                  )
                ],
               ),
            ],
      ) ,
       
        ),
     
        ),

      ),
      
    );
  }
}