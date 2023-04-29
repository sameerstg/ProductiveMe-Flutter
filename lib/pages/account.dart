import 'package:flutter/material.dart';
import 'package:productive_me/widgets/bottom_navigator.dart';





class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Accounts'),

        actions: [
          IconButton(
            icon: const Icon(Icons.charging_station_sharp),
            onPressed: () {
              // Do something when the icon is pressed
            },
          ),IconButton(
            icon: const Icon(Icons.do_not_touch_outlined),
            onPressed: () {
              // Do something when the icon is pressed
            },
          ),
        ],
      ),
      body: Column(

        children:  [
          Padding(padding: const EdgeInsets.fromLTRB(10, 30, 10, 30),child:


          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: [
              Column(
                children: const [
                  SizedBox(width:  100,child: Text("Assets",textAlign: TextAlign.center,),),
                  SizedBox(height: 10,),
                  SizedBox(width:  100,child:
                  Text("122141244124",style:
                  TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                ],

              ),Column(
                children: const[
                  SizedBox(width:  100,child: Text("Liablities",textAlign: TextAlign.center,),),
                  SizedBox(height: 10,),
                  SizedBox(width:  100,child:
                  Text("122141244124",style:
                  TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                ],

              ),Column(
                children: const[
                  SizedBox(width:  100,child: Text("Total",textAlign: TextAlign.center,),),
                  SizedBox(height: 10,),
                  SizedBox(width:  100,child:
                  Text("122141244124",style:
                  TextStyle(color: Colors.blue),textAlign: TextAlign.center,)),
                ],

              ),


            ],
          ),
          ),

        const Slot(text1: "Cash", text2: "20525",vertPadding: 20,changeColor:true),
          const Slot(text1: "Mama", text2: "20525",vertPadding: 20,changeColor:false),
          const  Slot(text1: "Binance", text2: "20525",vertPadding: 20,changeColor:false),
          const Slot(text1: "Card", text2: "20525",vertPadding: 20,changeColor:true),
        ],
      ),
      bottomNavigationBar: const BottomNavigator(index: 2),

    );
  }
}
class Slot extends StatelessWidget {
  final double vertPadding;
final bool changeColor ;
  const Slot({Key? key,required this.text1,required this.text2,required this.vertPadding,required this.changeColor}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return
      Container(/*if(changeColor)*/padding: const EdgeInsets.all(20),
          color: Colors.black12,height: 70,child:


      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          SizedBox(child: Text(text1),),
          SizedBox(child: Text(text2,style: const TextStyle(color: Colors.blue)),)


        ],
      )
        );

  }
}

