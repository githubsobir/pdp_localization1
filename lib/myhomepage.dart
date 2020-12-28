import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title').tr(),
      ) ,
      body: Column(

        children: [
       Expanded(child:    Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children:[
         Text('welcome',style: GoogleFonts.lato(
           color: Colors.black,fontSize: 24
         ),).tr(),
       ]),),
          Expanded(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [



                Container(
                  margin:EdgeInsets.symmetric(horizontal:10, vertical: 8 ),

                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Expanded(child: FlatButton(
                        height: 44,
                        onPressed: (){
                        context.locale = Locale('en', 'US');
                      },
                        child: Text('English', style: GoogleFonts.lato(color: Colors.white),),
                      color: Colors.green,
                      ),),
                      SizedBox(width: 10,),
                      Expanded(child: FlatButton(
                        height: 44,
                        onPressed: (){
                        setState(() {
                          context.locale = Locale('ru', 'RU');
                        });

                      },
                        child: Text('Russian', style: GoogleFonts.lato(color: Colors.white),),
                        color: Colors.red,
                      ),),
                      SizedBox(width: 10,),
                      Expanded(child: FlatButton(
                        height: 44,
                        onPressed: (){
                        context.locale = Locale('uz', 'UZ');
                      },
                        child: Text('Uzbek', style: GoogleFonts.lato(color: Colors.white),),
                        color: Colors.blue,
                      ),),
                      SizedBox(width: 10,),
                      Expanded(child: FlatButton(
                        height: 44,
                        onPressed: (){
                        context.locale = Locale('fr', 'FR');
                      },
                        child: Text('French', style: GoogleFonts.lato(color: Colors.white),),
                        color: Colors.orange,
                      ),),

                    ],
                  ),
                )
              ],

            ),
          ),
        ],
      ),
    );
  }
}

