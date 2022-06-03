import 'package:flutter/material.dart';

class RasmPage extends StatefulWidget {
  static final String id = "rasm_page";
  @override
  State<RasmPage> createState() => _RasmPageState();
}

class _RasmPageState extends State<RasmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Title"),
        backgroundColor: Colors.teal,
        actions: const[
          Icon(Icons.notifications),
          SizedBox(width: 16,),
        ],
      ),
      
      body:  const Center(
       child: Image(
         height: 200,
         width: 200,
         fit: BoxFit.cover, // Kesib beradi.200x200
         image: AssetImage('assets/images/ic_images1.jpeg'),
       ),
       //  child: Image.network( 1-Usul network yani intrnetdan olib kelish
       //      'https://media.wired.com/photos/5f401ecca25385db776c0c46/master/pass/Gear-How-to-Apple-ios-13-home-screen-iphone-xs-06032019_big_large_2x.jpg'),
       //  child: Image.asset('assets/images/ic_images1.jpeg'), // 1-Usul rasm chiqarish.Eng kam ishlatiadigan metod.

      ),
    );
  }
}
