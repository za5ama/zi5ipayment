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
        Text("TopUP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w200),),SizedBox(height: 13,),
        Container(width:MediaQuery.of(context).size.width * 0.80, height: 100, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color.fromARGB(255, 234, 234, 234))
          ,child:
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Image.asset("assets/images/za5amobile.png")),
              IconButton(onPressed: (){}, icon: Image.asset("assets/images/Ooredoo.png")),
              IconButton(onPressed: (){}, icon: Image.asset("assets/images/tt.png")),
              IconButton(onPressed: (){}, icon: Image.asset("assets/images/orange.png")),
            ],
          ),
        ))
        ,SizedBox(height: 15,),
        Text("Exchange",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w200),),SizedBox(height: 13,),
        Container(width: MediaQuery.of(context).size.width * .9,decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.white),child:Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Column(children: [
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width*.33   ,child: Text("Currency", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),)),
          SizedBox(width:MediaQuery.of(context).size.width*.33   ,child: Text("Purchase", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),)),
          SizedBox(child: Text("Sell", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w200),)),
        ],),SizedBox(height: 15,),
          Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/eu.png",width: 30,),
          Text(" EUR")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("3.35",style: TextStyle(fontSize: 15),)),
          Text("3.40",style: TextStyle(fontSize: 15),),
        ],),SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/us.png",width: 30,),
          Text(" USD")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("2.90",style: TextStyle(fontSize: 15),)),
          Text("2.94",style: TextStyle(fontSize: 15),),
        ],),
        SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/saudi.png",width: 30,),
          Text(" SAR")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("7.25",style: TextStyle(fontSize: 15),)),
          Text("8.04",style: TextStyle(fontSize: 15),),
        ],),
        SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/china.png",width: 30,),
          Text(" CNY")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("0.43",style: TextStyle(fontSize: 15),)),
          Text("0.43",style: TextStyle(fontSize: 15),),
        ],),
        SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/japan.png",width: 30,),
          Text(" JPY")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("0.01",style: TextStyle(fontSize: 15),)),
          Text("0.01",style: TextStyle(fontSize: 15),),
        ],),
        SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/australia.png",width: 30,),
          Text(" AUD")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("2.06",style: TextStyle(fontSize: 15),)),
          Text("2.06",style: TextStyle(fontSize: 15),),
        ],),
        SizedBox(height: 15,),
        Row(children: [
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child:Row(children: [
          Image.asset("assets/images/canada.png",width: 30,),
          Text(" CAD")])),
          SizedBox(width:MediaQuery.of(context).size.width * .33 ,child: Text("2.07",style: TextStyle(fontSize: 15),)),
          Text("2.07",style: TextStyle(fontSize: 15),),
        ],),
        ]))
        ,)
        ,
        SizedBox(height: 20,),
        ]),
      ),
    );
  }
}