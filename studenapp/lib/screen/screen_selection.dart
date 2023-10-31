import 'package:flutter/material.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.122),
      body: Stack(children: [

        Positioned(top: 0,right: 0,left: 0,child: Container(height: 400,width: double.maxFinite,
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/Group284.png'),fit: BoxFit.fill,opacity: 1),
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),)),

        Positioned(top: 340,right:20,left: 20,
        child: Container(height: 175,width: MediaQuery.of(context).size.width-40,
                          decoration: BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1),
                          borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Container(height: 25,),

                          ElevatedButton(onPressed: (){}, child: Text("LOGIN",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Colors.yellow,fixedSize: Size(300, 50)),),

                          Spacer(),

                           ElevatedButton(onPressed: (){}, child: Text("SIGNUP",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Color.fromRGBO(42, 42, 42, 1),fixedSize: Size(300, 50),
                          side: BorderSide(color: Colors.yellow)),)
                          
                          ,Container(height: 25,)
                        ],
                          
                        ),  

        )),

        Positioned(top: 550,right: 100,left: 100,
        child: TextButton(onPressed: (){},child: Text("Create an Account"),
        style: TextButton.styleFrom(primary: Colors.yellow,
        textStyle: TextStyle(decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold)),
        ))             
                    
      ],),
    ));
  }
}