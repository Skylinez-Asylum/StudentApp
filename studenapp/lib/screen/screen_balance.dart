import 'package:flutter/material.dart';
import 'package:studenapp/screen/screen_home.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Row(children: [Container(width: 20,),Text("NAME",style: TextStyle(color: Colors.yellow,fontSize: 20),),
          Spacer(),
          Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white24),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.person_3_rounded,color: Colors.white,))),
          Container(width: 20,)],),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
            child: Container(width: 350,height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color.fromRGBO(42, 42, 42, 1)),
            child: Stack(children: [
              Positioned(top: 10,left: 14,child:Text("MY BALANCE",style: TextStyle(fontSize: 15,color: Colors.white),) ),
              Positioned(child: Text("₹",style: TextStyle(color: Colors.white,fontSize: 50)),top: 60,left: 50,),
              Positioned(child: Text("XX.XX",style: TextStyle(color: Colors.white,fontSize: 50)),top: 60,left: 100,),
              Positioned(top: 140,right: 100,left: 100,
                    child: TextButton(onPressed: (){},child: Text("ADD CASH"),
                    style: TextButton.styleFrom(primary: Colors.yellow,
                    textStyle: TextStyle(decoration: TextDecoration.underline,fontSize: 20,
                    fontWeight: FontWeight.bold)),
        )) 
            ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text("TRANSACTION HISTORY",style: TextStyle(fontSize: 15,color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(child: TransactionList(),height: 411,color: Colors.black,),
          )






          
          ],),

          bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Container(height: 60,width: 200,decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(15)),
        child: Row(children: [Spacer(),
          HomeButton(),Spacer(),LineBotttomNav(),Spacer(),RouteButton(),Spacer(),LineBotttomNav(),Spacer(),WalletButton(),Spacer()
        ],),),
      )


      ),
    );
  }
}

class TransactionList extends StatelessWidget {
   TransactionList({super.key});
  final List<String> items = List<String>.generate(100, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(  
      title: Text('DATE ${items[index]}',style: TextStyle(color: Colors.white,fontSize: 17),),
      subtitle: Text('    SOURCE - DESTINATION',style: TextStyle(color: Colors.white,fontSize: 14),),
      trailing: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Text("Rs ${items[index]}",style: TextStyle(color: Colors.white,fontSize: 20),),
      ),
    );
  },
);
  }
}