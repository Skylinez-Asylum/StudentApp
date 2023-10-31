import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.122),
      body: Stack(children: [

        Positioned(top: 0,right: 0,left: 0,child: Container(height: 400,width: double.maxFinite,
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/Group284.png'),fit: BoxFit.fill,opacity: 1),
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),)),

        Positioned(top: 220,right:20,left: 20,
        child: Container(height: 450,width: MediaQuery.of(context).size.width-40,
                          decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Container(height: 25,),

                           SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Name",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),

                          Spacer(),

                           SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "KTU Id",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),

                          Spacer(),

                          SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),

                          Spacer(),

                           SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "PhoneNo",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),

                          Spacer(),

                          SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),
                          Container(height: 40,),

                           ElevatedButton(onPressed: (){}, child: Text("SIGNUP",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Colors.yellow,fixedSize: Size(250, 50)),)
                          
                          ,Container(height: 25,)
                        ],
                          
                        ),  

        )),

           
                    
      ],),
    ));
  }
}