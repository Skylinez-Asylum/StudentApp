import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black54),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,))),
            )],),
            Spacer(),
            HTicketWidget(),
            Spacer()
        ],),
      ),
    );
  }
}

class HTicketWidget extends StatelessWidget {
  const HTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 500,width: 245,
    decoration: BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1),borderRadius: BorderRadius.circular(20)),
    child: Stack(children: [
      Positioned(left: 0,top: 100,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(right: 0,top: 100,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(left: 0,top: 325,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(right: 0,top: 325,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(
          child: Column(
            children: [Container(height: 120,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                   children: List.generate(150~/10, (index) => Expanded(
                        child: Container(
                        color: index%2!=0?Colors.transparent
                        :Colors.white,
                        height: 1,
                        width: 2,
                        ),
                         )),
                         ),
              ),
              Container(height: 225,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                   children: List.generate(150~/10, (index) => Expanded(
                        child: Container(
                        color: index%2!=0?Colors.transparent
                        :Colors.white,
                        height: 1,
                        width: 2,
                        ),
                         )),
                         ),
              )

            ],
          ),
        ),

        Positioned(top: 35,left: 90,
        child: Text("K1",style: TextStyle(fontSize: 50,color: Colors.white),)),
        Positioned(top:140,left:33,
          child: Text("Ticket ID :  20231023001",style:TextStyle(fontSize: 17,color: Colors.white) ,)),
        Positioned(top:175,left:20,
        child: Text("From : Pappanamcode",style: TextStyle(fontSize: 17,color: Colors.white),)),
        Positioned(top:205,left:20,
        child: Text("To      : Kaimanam",style: TextStyle(fontSize: 17,color: Colors.white),)),
        Positioned(top:235,left:20,
        child: Text("Date  : 12-12-23",style: TextStyle(fontSize: 17,color: Colors.white),)),
        Positioned(top:265,left:20,
        child: Text("Time : 10:00AM",style: TextStyle(fontSize: 17,color: Colors.white),)),



        Positioned(top: 370,left: 35,
        child: ElevatedButton(onPressed: (){}, child: Text("Pay Now",style: TextStyle(fontSize: 20,color: Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(175, 50)),)),
        Positioned(top: 430,left: 35,
        child: ElevatedButton(onPressed: (){}, child: Text("Pay Later",style: TextStyle(fontSize: 20,color: Colors.red),),
                          style:ElevatedButton.styleFrom(side: BorderSide(width: 3,color: Colors.red),
                          primary: Color.fromRGBO(42, 42, 42, 1),fixedSize: Size(175, 50)),))                    


      ],),);
  }
}



