import 'package:flutter/material.dart';

class Details extends StatelessWidget{
  final TextEditingController name=TextEditingController();
  final TextEditingController phone=TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 76, 75, 75),
      appBar:AppBar(
        backgroundColor: Color.fromARGB(66, 76, 75, 75),
        title: Text(
          'Sign In',
          style: TextStyle(
            color: const Color.fromARGB(255,255,255, 255),
            fontFamily: 'Manrope',
          )
          ,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed:(){
                String NAME=name.text;
                String PHONE=phone.text;
                print("Name:$NAME,Phone:$PHONE");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Welcome,$NAME')),
                );
              },
              child: Text('Sign In'),
            ),
          ],
        ),
        
        
        ),
        
    );
  }
}