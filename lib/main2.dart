import 'package:flutter/material.dart';

import 'detail_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home:Scaffold(
      appBar: AppBar(
          centerTitle: false,
          leading: const Icon(Icons.videocam),
          title: const Text("youtubeアプリ"),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: FlatButton(onPressed: () {  },
              child: const Icon(Icons.search)),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(onPressed: () {  },
                  child: const Icon(Icons.more_vert)),
            ),
          ]),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Image.network('https://apps.apple.com/assets/images/supports/supports-FamilySharing@2x-f58f31bc78fe9fe7be3565abccbecb34.png'
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        const Text("My youtube"),
                        FlatButton(onPressed: () {},
                            child: Row(children:const <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.red,),
                              Text('登録する')
                          ],
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             Expanded(
               child: ListView.builder(
                 itemCount: items.length,
                 itemBuilder: (context, index) {
                   return ListTile(
                     onTap: () async{
                       await Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) =>  DetailPage()),
                       );
                     },
                     contentPadding: EdgeInsets.all(8),
                     leading: Image.network('https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj'
                     ),
                     title: Column(
                       children: [
                         const Text('Flutterエンジニア入門の初級編',
                         style: TextStyle(
                               fontWeight: FontWeight.bold
                           ),),
                         Row(
                           children: [
                             Text('26回再生',
                               style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),
                             Text('5日前',
                               style: TextStyle(
                                   fontWeight: FontWeight.bold
                               ),),
                           ],
                         )
                       ],
                     ),
                     trailing: Icon(Icons.more_vert),
                   );
                 },
               ),
             ),
            ],
          ),
        ),
      ),
      );
  }
}


