import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(UI());
}

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);

  @override
  State<UI> createState() => _GUIState();
}

class _GUIState extends State<UI> {
  @override
  var img = [
    'https://s.yimg.com/uu/api/res/1.2/N59pIKhe3LN6lXPKydTbkw--~B/aD0xNjU4O3c9MzAwMDthcHBpZD15dGFjaHlvbg--/https://s.yimg.com/os/creatr-uploaded-images/2020-10/843fd250-1279-11eb-9df7-f0948508264f.cf.jpg',
    'https://root-nation.com/wp-content/uploads/2020/09/galaxy-note20-ultra.jpg',
    'https://images.macrumors.com/article-new/2020/11/macbook-air-m1-unboxing.jpg',
    'https://i0.wp.com/bestmobile24.com/wp-content/uploads/2022/03/Nokia-King-Max-2022.jpg?resize=600%2C314&ssl=1',
    'https://www.sammobile.com/wp-content/uploads/2019/06/galaxy-s10-plus-2.jpg'
  ];
  var text = [
    'Iphone 1',
    'Note 20 Ultra',
    'Mackbook Air',
    'Nokia King',
    'Samsung S10',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ECOM APP UI',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.purple,
          shadowColor: Colors.purple,
          elevation: 100,
          centerTitle: true,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: ListView.builder(
          itemCount: text.length,
          itemBuilder: (context, ind) {
            return Container(
                child: Card(
                    child: Container(
              height: 120,
              width: 400,
              child: Row(children: [
                Container(
                    height: 400,
                    width: 200,
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(img[ind]),
                        ),
                        borderRadius: BorderRadius.circular(20))),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(text[ind],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('5.0(2.3 Review)'),
                      ],
                    ),
                    Text('20 piecee'),
                    SizedBox(height: 10),
                    Text('Quantity : 1')
                  ],
                )
              ]),
            )));
          },
        ),
      ),
    );
  }
}
