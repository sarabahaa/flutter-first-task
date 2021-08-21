import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //         //
        //         // Try running your application with "flutter run". You'll see the
        //         // application has a blue toolbar. Then, without quitting the app, try
        //         // changing the primarySwatch below to Colors.green and then invoke
        //         // "hot reload" (press "r" in the console where you ran "flutter run",
        //         // or simply save your changes to "hot reload" in a Flutter IDE).
        //         // Notice that the counter didn't reset back to zero; the application
        //         // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: FristScreen(),
    );
  }
}
class FristScreen extends StatefulWidget {
  const FristScreen({Key? key}) : super(key: key);

  @override
  _FristScreenState createState() => _FristScreenState();
}

class _FristScreenState extends State<FristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white60,
    appBar: AppBar(
      backgroundColor: Colors.black12,
      title: Text("products",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight:FontWeight.bold),),
      centerTitle: true,

      actions: [IconButton(
          icon: Icon(Icons.star_border_outlined,color:Colors.white,size: 35,), onPressed: () {  },
        )
      ],
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,color:Colors.white,size: 35,), onPressed: () {  },
      ),
    ),
    body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Image.network("https://lyskin.com/wp-content/uploads/2018/08/lyskin-laroche-posay-LRP00201_3.jpg",
    ) ,
        Text (" La roche posay anthelios invisible fluid spf50 with perfume 50ml",style:
        TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20, fontStyle:FontStyle.italic ),
        ),
        Text ("                      ",style:
        TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20, fontStyle:FontStyle.italic ),
        ),
        Text (" La roche posay anthelios invisible fluid spf50 with perfume is a sunscreen suitable for all skin types, especially for sensitive or allergic skin to the sun.",style:
        TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15, fontStyle:FontStyle.italic ),

        ),
        Padding(
            padding: EdgeInsets.only(top: 20, left: 8),
            child:Text("PRICE: 500 EGP", style: TextStyle(fontWeight:FontWeight.bold,fontFamily: 'BebasNeue',fontSize: 25, color: Colors.red))
        ),


  ],
    )



    );
  }
}

