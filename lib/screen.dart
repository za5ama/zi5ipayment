import 'package:flutter/material.dart';
import 'home.dart';
import 'services.dart';
import 'transfer.dart';
import 'history.dart';
import 'menu.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int currentPageIndex=0;
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(icon: Icon(Icons.home), label: "ElHome"),
        NavigationDestination(icon: Icon(Icons.attach_money), label: "Services"),
        NavigationDestination(icon: Icon(Icons.compare_arrows), label: "Transfer"),
        NavigationDestination(icon: Icon(Icons.history), label: "History"),
        NavigationDestination(icon: Icon(Icons.menu), label: "Menu"),
      ],
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index){
        setState(() {
          currentPageIndex = index;
        });
      },
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/zi5i.png', width: 80,), // The main text in the bar
      actions: [
        IconButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            duration: Duration(seconds: 3),
            content: Text("ma 3andeksh notifs"),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(label: 'BEHI', onPressed: (){
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }),
            ));
        }, icon: Icon(Icons.notifications_none))
      ],
      ),
      body: [Home(),Services(),Transfer(),History(),Menu()][currentPageIndex]
      
      );
  }
}