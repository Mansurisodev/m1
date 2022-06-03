import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  static final String  id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = "detail page";
  Future _openPage() async {
    Map res = await Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return DetailPage(input: data);
    }));
    if(res != null && res.containsKey("data")){
      setState(() {
        data = res["data"];
      });
    }else{
      print("noting");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            // Navigator.pushReplacementNamed(context, DetailPage.id);// Bu Pageni o'chiradi.Asosiy page narigisi bo'lib qoladi.
            //    Navigator.pushNamed(context, DetailPage.id);  // bu pagega qaytsa boladi.
            _openPage();
          },
          color: Colors.blue,
          child: Text(data),
        ),
      ),
    );
  }
}
