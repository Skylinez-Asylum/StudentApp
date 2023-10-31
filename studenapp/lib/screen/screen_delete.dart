import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:cupertino_icons/cupertino_icons.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({super.key});
  
  @override
   Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0.122),
      body: Stack(children: [

        Positioned(top: 10,left: 10,
        child: Container(
        decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),iconSize: 30,onPressed: (){},))),

        
        Positioned(top: 220,right:60,left: 60,
        child: Container(height: 300,width: 200,
                          decoration: BoxDecoration(color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Container(height: 10,),
                           SizedBox(height: 50,width: 200,
                            child: Icon(Icons.warning_sharp,size: 70,),
                          ),
                          Container(height: 10,),
                          Spacer(),

                          SizedBox(height: 50,width: 180,
                            child: Text("Do you want to Delete Your Account?",
                            style: TextStyle(color: Colors.white,fontSize: 18),),
                          ),
                          

                          
                          Container(height: 20,),
                          Container(
                          child: ElevatedButton(onPressed: (){}, child: Text("No",style: TextStyle(fontSize: 20,color: Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(150, 50)),)),
                          Container(height: 10,),
                          ElevatedButton(onPressed: (){}, child: Text("Yes",style: TextStyle(fontSize: 20,color: Colors.red),),
                          style:ElevatedButton.styleFrom(side: BorderSide(width: 1.5,color: Colors.red),
                          primary: Color.fromRGBO(42, 42, 42, 1),fixedSize: Size(150, 50)),)

                          
                          ,Container(height: 15,)
                        ],
                          
                        ),  

        )),

           
                    
      ],),
    ));
  } 
}