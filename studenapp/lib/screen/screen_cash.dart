import 'package:flutter/material.dart';

class CashAdd extends StatelessWidget {
  const CashAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [

        
        Positioned(top: 10,left: 10,
        child: Container(
        decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),iconSize: 30,onPressed: (){},))),
        Positioned(top: 320,right:20,left: 20,
        child: Container(height: 180,width: MediaQuery.of(context).size.width-40,
                          decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                        child: Column(children: [
                          Container(height: 30,),

                          SizedBox(height: 50,width: 300,
                            child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "Enter Amount",
                            hintStyle: TextStyle(color: Colors.grey,),
                            fillColor: Color.fromRGBO(42, 42, 42, 1),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                          ),

                          Spacer(),

                    

                           ElevatedButton(onPressed: (){}, child: Text("Add Cash",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(230, 50)),)
                          
                          ,Container(height: 25,)
                        ],
                          
                        ),  

        )),             
                    
      ],),
    ));
  }

}