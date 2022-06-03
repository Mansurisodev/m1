import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/pages/app_bar.dart';
import 'package:project1/pages/home_page.dart';

class DetailPage extends StatefulWidget {
  static final String  id = "detail_page";
  final String input;
  DetailPage({required this.input});



  // const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("App Bar"),
        backgroundColor: Colors.blue,
        ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            // Navigator.pop(context);// Hech narsa jo'natmasdan yopadi. Ortga qaytadi.
            // Navigator.of(context).pop({"data" : "The Best"}); // Malumot qaytarib yopadi.Ortga qaytadi
            // Navigator.pushNamed(context, AppBarr.id); //Bosganda boshqa pagega o'tadi.Yo'lini ko'rsatish kerak.Orqasidagi pagelar saqlanib qoladi.
            // Navigator.pushReplacementNamed(context, HomePage.id); // O'zidan oldingi Pagelarni Yopib qo'yadi.O'zi asosiy page bo'lib oladi.Bu asosan qaytarishda emas
            // Bosganda boshqa pajega o'tishda va osha pageni asosiy qilishda ishlatiladi.Orga emas oldinga ko'proq ishlatilad.
              Navigator.of(context).pop({"data" : "The best time evry day !"});
          },
          color: Colors.red,
          child: Text(widget.input),
        ),
      ),
    );
  }
}
