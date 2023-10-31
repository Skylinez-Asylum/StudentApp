import 'package:flutter/material.dart';
import 'package:studenapp/screen/screen_home.dart';

class Ticket2Screen extends StatelessWidget {
  const Ticket2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.start, children: [
        Row(children: [Container(width: 20,),Text("NAME",style: TextStyle(color: Colors.yellow,fontSize: 20),),
          Spacer(),
          Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white24),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.person_3_rounded,color: Colors.white,))),
          Container(width: 20,)],),
        Container(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Container(height:600 ,width: 300,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(241, 121, 10, 0.95)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.5,vertical: 20),
            child: H1TicketWidget(),
          ),),
        )



      ],),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Container(height: 60,width: 200,decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(15)),
        child: Row(children: [Spacer(),
          HomeButton(),Spacer(),LineBotttomNav(),Spacer(),RouteButton(),Spacer(),LineBotttomNav(),Spacer(),WalletButton(),Spacer()
        ],),),
      ),),
    );
  }
}


class H1TicketWidget extends StatelessWidget {
  const H1TicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height: 500,width: 240,
    decoration: BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1),borderRadius: BorderRadius.circular(20)),
    child: Stack(children: [
      Positioned(left: 0,top: 100,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Color.fromRGBO(241, 121, 10, 0.9),
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
                            color: Color.fromRGBO(241, 121, 10, 0.9),
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(left: 0,top: 440,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: Color.fromRGBO(241, 121, 10, 0.9),
                            shape: BoxShape.rectangle,
                          ),
                          height: 40,
                          width: 20,
                        )),
      Positioned(right: 0,top: 440,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Color.fromRGBO(241, 121, 10, 0.9),
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
              Container(height: 340,),
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
        Positioned(top:130,left:33,
          child: Text("Ticket ID :  20231023001",style:TextStyle(fontSize: 14,color: Colors.white) ,)),
        Positioned(top:315,left:20,
        child: Text("From : Pappanamcode",style: TextStyle(fontSize: 15,color: Colors.white),)),
        Positioned(top:340,left:20,
        child: Text("To      : Kaimanam",style: TextStyle(fontSize: 15,color: Colors.white),)),
        Positioned(top:365,left:20,
        child: Text("Date  : 12-12-23",style: TextStyle(fontSize: 15,color: Colors.white),)),
        Positioned(top:390,left:20,
        child: Text("Time : 10:00AM",style: TextStyle(fontSize: 15,color: Colors.white),)),
        Positioned(top:430,left:75,
        child: Text("Rs: 15.00",style: TextStyle(fontSize: 22,color: Colors.white),)),



        Positioned(top: 480,left: 35,
        child: ElevatedButton(onPressed: (){}, child: Text("Pay Now",style: TextStyle(fontSize: 20,color: Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.green,fixedSize: Size(175, 50)),)),
                            


      ],),);
  }
}