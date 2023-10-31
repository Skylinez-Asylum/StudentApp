import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [

        Positioned(child: Container(height: 300
          ,decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
          color: Colors.yellow),)),

        Positioned(top: 100,left: 170,
        child: Container(height: 90,width: 90,
        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black)
          ,child: Icon(Icons.person_2_outlined,size: 50,color: Colors.white,weight: 5,))),

        Positioned(top: 200,left: 170,
        child: Text("NAME",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),

        Positioned(top: 10,left: 10,
        child: Container(
        decoration: BoxDecoration(color: Colors.black,shape: BoxShape.circle),
          child: IconButton(icon: Icon(Icons.arrow_back,color: Colors.white,),iconSize: 30,onPressed: (){},))),

        Positioned(child: Details()) ,

        Positioned(top: 600,left: 80,
        child: ElevatedButton(onPressed: (){}, child: Text("Delete Account",style: TextStyle(fontSize: 20),),
                          style:ElevatedButton.styleFrom(primary: Colors.red,fixedSize: Size(250, 50)),)),

        Positioned(top: 660,left: 20,
        child: TextButton(onPressed: (){},child: Text("About us"),
        style: TextButton.styleFrom(primary: Colors.yellow,
        textStyle: TextStyle(
        fontWeight: FontWeight.bold)),
        ))                   

                          


         

      ],
        
      ),
    ));
  }
}
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(height: 300,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(children: [Text("Profile Details",style: TextStyle(color: Colors.white),),
                          Spacer(),
                          IconButton(icon: Icon(Icons.edit,color: Colors.white,),iconSize: 25,onPressed: (){},)
                          ],),
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("Name   ",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 80,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("KTU ID ",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 80,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("EMAIL ",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 80,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("PHONENO",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 52,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("DEPT ",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 80,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
          child: Row(children: [Text("BATCH",style: TextStyle(color: Colors.grey,fontSize: 17),),
                         Container(width: 80,),
                        Text(":  Name",style: TextStyle(color: Colors.white,fontSize: 17),)],),
        ),

        Container(height: 80,),

        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                   children: List.generate(150~/10, (index) => Expanded(
                        child: Container(
                        color: Colors.white,
                        height: 1,
                        width: 1,
                        ),
                         )),
                         ),
              )


        ],
      ),
    );
  }
}