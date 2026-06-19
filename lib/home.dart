import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.45,child: Text("Total Balance", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),),),
            SizedBox(child: Row(children: [Text("10000.00",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),Text("  dt")],)),
          ],),
          SizedBox(height: 20,),
          Padding (padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 170,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color.fromARGB(255, 56, 122, 235)),
            child: Column(children: [
              Row(children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 7,vertical: 7),child: Image.asset('assets/images/wejhi.png', width: 50,),),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Mohamed Amine Zakhama",style: TextStyle(color: const Color.fromARGB(255, 231, 231, 231), fontWeight: FontWeight.bold,fontSize:15)),
                    Text("Ingenieur",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300, color: const Color.fromARGB(255, 0, 0, 0)),)],))
                ],
              )
            ,SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 45, 110, 223)),
              width: 250,
              height: 70,
              child: 
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [IconButton(onPressed: (){}, icon: Icon(Icons.add),style: IconButton.styleFrom(foregroundColor: Colors.white,backgroundColor: const Color.fromARGB(255, 137, 255, 1)),),
                IconButton(onPressed: (){}, icon: Icon(Icons.compare_arrows),style: IconButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.deepOrangeAccent),),
                IconButton(onPressed: (){}, icon: Icon(Icons.monetization_on),style: IconButton.styleFrom(foregroundColor: Colors.white,backgroundColor: const Color.fromARGB(255, 255, 0, 85)),),
                IconButton(onPressed: (){}, icon: Icon(Icons.handshake),style: IconButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blue),),
                ],
              ),
              
            )
            ],),
          ))
        ,SizedBox(height: 20,),
        Text("TopUP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w200),),
        
        ],),
      ),
    );
  }
}