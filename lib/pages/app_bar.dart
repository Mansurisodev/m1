import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  // const AppBarr({Key? key}) : super(key: key);
  static final String  id = "app_bar_page";

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
   int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        backgroundColor: Colors.blue[700],
        centerTitle: true, // Androiddda title chap yoki ong tarafda boladi.Iphoneda esa centrda.Titleni centrga chiqarish.Android uchun.
        actions: const [  //👈 Ong tarafdan chap tarafga itaradi!
          Icon(Icons.notifications),
          SizedBox(width: 16.0,),
          Icon(Icons.add_shopping_cart),
          SizedBox(width: 16.0,),
          Icon(Icons.email),
          SizedBox(width: 16.0,), // Icon ong tarafga yopishib qolgan bolsa suradi.

        ],
      ),

      body:  Center(
        child: Text("Hello App Bar Page" + count.toString(), //Floatingactionbton ichidagi count qiymatini ozgartiradi.
                    style: const TextStyle(
                    color: Colors.red, // Rang Berish
                    fontSize: 25 , // Kattaligi
                    fontWeight: FontWeight.bold, // Qalin qilish

            ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
         setState(() {  // Bu qiymatni o'zgartiruvchi function
           count++;
         });
        }, // Busiz buttonlar yozib bo'lmaydi.Ishlatmasak ham bolishi kerak
        elevation: 10.0,
        child:  Icon(Icons.add),
      ),

    );
  }
}
