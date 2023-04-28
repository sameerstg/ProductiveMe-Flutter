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
        title: Text('Accounts'),

        actions: [
          IconButton(
            icon: Icon(Icons.charging_station_sharp),
            onPressed: () {
              // Do something when the icon is pressed
            },
          ),IconButton(
            icon: Icon(Icons.do_not_touch_outlined),
            onPressed: () {
              // Do something when the icon is pressed
            },
          ),
        ],
      ),
      body: Column(

        children:  [
          Padding(padding: EdgeInsets.fromLTRB(10, 30, 10, 30),child:


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

        const Slot(text1: "Cash", text2: "20525",vertPadding: 20,),
          const Slot(text1: "Mama", text2: "20525",vertPadding: 20,),
          const  Slot(text1: "Binance", text2: "20525",vertPadding: 20,),
          const Slot(text1: "Card", text2: "20525",vertPadding: 20,),
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),

    );
  }
}
class Slot extends StatelessWidget {
  final double vertPadding;

  const Slot({Key? key,required this.text1,required this.text2,required this.vertPadding}) : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.fromLTRB(10, vertPadding, 10, vertPadding),child:


      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Container(child: Text(text1),),
          Container(child: Text(text2),),


        ],
      )
        );

  }
}

