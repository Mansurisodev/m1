import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarr extends StatefulWidget {
  // const AppBarr({Key? key}) : super(key: key);
  static final String  id = "app_bar_page";

  @override
  State<AppBarr> createState() => _AppBarrState();
}

class _AppBarrState extends State<AppBarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        centerTitle: true, // Androiddatitleni centrga ko'chiradi.
        actions: const [
          Icon(Icons.add_shopping_cart), // Appabarga Icons joylash
          SizedBox(width: 10,), // Yopishgan joyini surish
          Icon(Icons.notifications), // Hologanch Icon joylash mumkin ekan
          SizedBox(width: 14,),
        ],
      ),
      body: Text("Helo Holo !"),

    );
  }
}
