import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'package:studenapp/screen/screen_home.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 20,),Text("NAME",style: TextStyle(color: Colors.yellow,fontSize: 20),),
              Spacer(),
              Container(decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white24),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.person_3_rounded,color: Colors.white,))),
              Container(width: 20,),
            ],),
          Container(height: 20,),  
          Trackwidget(),
          TrackList(),







        ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: Container(height: 60,width: 200,decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(15)),
        child: Row(children: [Spacer(),
          HomeButton(),Spacer(),LineBotttomNav(),Spacer(),RouteButton(),Spacer(),LineBotttomNav(),Spacer(),WalletButton(),Spacer()
        ],),),
      ),

      ),
    );
  }
}

class Trackwidget extends StatelessWidget {
  Trackwidget({super.key});
  var _value=-1;

  @override
  Widget build(BuildContext context) {
    return Container(height: 180,width: 360,
    decoration: BoxDecoration(color: Color.fromRGBO(42, 42, 42, 1),borderRadius: BorderRadius.circular(20)),
    child: Column(children: [
      Padding(
          padding: const EdgeInsets.symmetric(vertical:15,horizontal: 20 ),
          child: DropdownButtonFormField(value: _value,items: [
            DropdownMenuItem(child: Text("Bus",),value: -1,),
            DropdownMenuItem(child: Text("Bus 1"),value:1),
            DropdownMenuItem(child: Text("Bus 2"),value:2)
          ], onChanged: (v){},
          decoration: InputDecoration(fillColor: Colors.grey,border: OutlineInputBorder()),),
        ),
      Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(width: 250,height: 50,
            child: ElevatedButton(onPressed: (){}, child: Text("Track The Bus",style: TextStyle(fontSize: 20),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow,
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            ),),
          ),
        )], ),
    );
  }
}

class TrackList extends StatelessWidget {
  const TrackList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(contentsAlign: ContentsAlign.alternating,
      contentsBuilder: (context,index)=>Padding(padding: EdgeInsets.all(24),
      child: Text('${index}'),),
      itemCount: 10))

    );
  }
}