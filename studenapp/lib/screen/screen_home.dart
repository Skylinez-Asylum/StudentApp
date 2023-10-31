import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,children: [
        Row(children: [Container(width: 20,),Text("NAME",style: TextStyle(color: Colors.yellow,fontSize: 20),),
        Spacer(),
        Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white24),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.person_3_rounded,color: Colors.white,))),
        Container(width: 20,)],),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Notifications",style: TextStyle(color: Colors.grey,fontSize: 16),),
        ),
        Container(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(height: 150,width: 370,
          child: ListView.separated(physics: ScrollPhysics(),
          scrollDirection: Axis.horizontal,itemBuilder: (context, index){return Notific();},
           separatorBuilder: ((context, index) => Divider(thickness: 20,indent: 20,)), itemCount: 3),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text("Book Tickets",style: TextStyle(color: Colors.grey,fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Bookwidget(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text("Current Tickets",style: TextStyle(color: Colors.grey,fontSize: 16),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TicketsWidget(),
        ),
      ],),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Container(height: 60,width: 200,decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(15)),
        child: Row(children: [Spacer(),
          HomeButton(),Spacer(),LineBotttomNav(),Spacer(),RouteButton(),Spacer(),LineBotttomNav(),Spacer(),WalletButton(),Spacer()
        ],),),
      ),
    
    ));
  }
}
class Notific extends StatelessWidget {
  const Notific({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: new BoxDecoration(borderRadius: BorderRadius.circular(10),
    color: Color.fromRGBO(42, 42, 42, 1)),
    height: 120,width: 370,
    child: Text("Notifications"),);
  }
}

class Bookwidget extends StatelessWidget {
  const Bookwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 370,height: 230,
    decoration: new BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(42, 42, 42, 1)),
    child: Stack(children: [
      Positioned(top: 20,left: 20,right: 20,
        child: SizedBox(height: 60,width: 300,
                              child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "From",
                              hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),),
                              fillColor: Colors.grey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                            ),),
      Positioned(top: 90,left: 20,right: 20,
        child: SizedBox(height: 60,width: 300,
                              child: TextField(style: TextStyle(color: Colors.white),decoration: InputDecoration(filled: true,hintText: "To",
                              hintStyle: TextStyle(color: Color.fromRGBO(217, 217, 217, 1),),
                              fillColor: Colors.grey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                            ),),
          Positioned(top:165,left: 50,right: 50,
            child: ElevatedButton(onPressed: (){}, child: Text("BOOK TICKETS",style: TextStyle(fontSize: 20),),
                            style:ElevatedButton.styleFrom(primary: Colors.yellow,fixedSize: Size(250, 50)),),
          ),
          Positioned(top: 50,right: 45,
          child: IconButton(onPressed: (){print("Dart");}, icon: Icon(Icons.swap_vertical_circle,size: 55,color: Colors.yellow,)))

                                                                  
    ],),);
  }
}



class TicketsWidget extends StatelessWidget {
  const TicketsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(height:150 ,width:370 ,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color.fromRGBO(42, 42, 42, 1) ),
    child: Stack( children: [
      Positioned(top: 67,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 15,
                          width: 10,
                        )),
       Positioned(left: 90,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 10,
                          width: 15,
                        )),
        Positioned(left: 90,bottom: 0,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 10,
                          width: 15,
                        )),
        Positioned(right: 70,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 10,
                          width: 15,
                        )),
        Positioned(right: 70,bottom: 0,child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            color: Colors.grey,
                            shape: BoxShape.rectangle,
                          ),
                          height: 10,
                          width: 15,
                        )),
        Positioned(
          child: Row(
            children:[ Container(width: 97.5,),Column(
               children: List.generate(150~/10, (index) => Expanded(
                    child: Container(
                    color: index%2==0?Colors.transparent
                    :Colors.white,
                    height: 1,
                    width: 1,
                    ),
                     )),
                     ),
                     Spacer()]),
        ),
        Positioned(left: 25,top:50,child: Text("K2",style: TextStyle(fontSize: 40,color: Colors.white),)),  
        Positioned(left: 110,top:15,child: Text("TICKET ID : 231023001",style: TextStyle(fontSize: 15,color: Colors.white),)),
       
        Positioned(left: 110,top:45,child: Text("From",style: TextStyle(fontSize: 13,color: Colors.grey),)),
        Positioned(left: 120,top:60,child: Text("Kaimanam",style: TextStyle(fontSize: 15,color: Colors.white),)),                                                                                
        Positioned(left: 110,top:90,child: Text("Date",style: TextStyle(fontSize: 13,color: Colors.grey),)),
        Positioned(left: 120,top:105,child: Text("15-12-23",style: TextStyle(fontSize: 15,color: Colors.white),)),                                                                                

        Positioned(left: 230,top:45,child: Text("From",style: TextStyle(fontSize: 13,color: Colors.grey),)),
        Positioned(left: 240,top:60,child: Text("Pappanamcode",style: TextStyle(fontSize: 15,color: Colors.white),)),                                                                                
        Positioned(left: 230,top:90,child: Text("Time",style: TextStyle(fontSize: 13,color: Colors.grey),)),
        Positioned(left: 240,top:105,child: Text("10:00 PM",style: TextStyle(fontSize: 15,color: Colors.white),)),                                                                                
                                                                                                      
    ],),);
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Material(
    color: Colors.yellow, // button color
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.home,size:35,), // icon
        Text("Home",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),), // text
      ],
    ),
  ),
);
  }
}

class RouteButton extends StatelessWidget {
  const RouteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Material(
    color: Colors.yellow, // button color
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.route,size:35,), // icon
        Text("Route",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),), // text
      ],
    ),
  ),
);
  }
}

class WalletButton extends StatelessWidget {
  const WalletButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox.fromSize(
  size: Size(56, 56), // button width and height
  child: Material(
    color: Colors.yellow, // button color
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.account_balance_wallet_outlined,size:35,), // icon
        Text("Wallet",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),), // text
      ],
    ),
  ),
);
  }
}

class LineBotttomNav extends StatelessWidget {
  const LineBotttomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Column(
                 children: List.generate(150~/10, (index) => Expanded(
                      child: Container(
                      color: Colors.black,
                      height: 1,
                      width: 1,
                      ),
                       )),
                       ),
    );
  }
}