import 'package:flutter/material.dart';

class UpdateDetailsScreen extends StatelessWidget {
  const UpdateDetailsScreen({super.key});

  @override
   @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.122),
      body: Stack(children: [

        Positioned(top: 10,left: 10,
        child: Container(
        decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),iconSize: 30,onPressed: (){},))),

        
        Positioned(top: 160,right:20,left: 20,
        child: Container(height: 525,width: MediaQuery.of(context).size.width-40,
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
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Dept",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),
                          Spacer(),

                          SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Batch",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),
                          Container(height: 40,),

                           ElevatedButton(onPressed: (){}, child: Text("Confirm",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Colors.yellow,fixedSize: Size(250, 50)),)
                          
                          ,Container(height: 25,)
                        ],
                          
                        ),  

        )),

           
                    
      ],),
    ));
  }
}