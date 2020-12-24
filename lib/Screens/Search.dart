import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Map<String, String>> List_item = [
    {
      "name": "Drone",
      "pic": "asset/img/drone.jpg",
      "reserve price": "200\$",
      "Highest bid": "290\$",
      "description": "",
      "type": "English",
    },
    {
      "name": "Arduino",
      "pic": "asset/img/arduino.jpg",
      "reserve price": "10\$",
      "Highest bid": "14\$",
      "description": "",
      "type": "Dutch",
    },
    {
      "name": "Dell ALien Ware",
      "pic": "asset/img/dellalienware.jpg",
      "reserve price": "1200\$",
      "Highest bid": "1257\$",
      "description": "",
      "type": "English",
    },
    {
      "name": "iPhone5s",
      "pic": "asset/img/iphone5s.jpg",
      "reserve price": "100\$",
      "Highest bid": "104\$",
      "description": "",
      "type": "English",
    },
  ];
  final _key = GlobalKey<FormState>();
  String username = "";
  String item = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.settings),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
              color: Colors.grey[300],
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'seach items',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Text(
                'Near me ',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  //fontFamily: "Lora",
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  itemCount: List_item.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Product(
                      productname: List_item[index]['name'],
                      producthighestbid: List_item[index]['Highest bid'],
                      productpic: List_item[index]['pic'],
                      productreserveprice: List_item[index]['reserve price'],
                      type: List_item[index]['type'],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  final productname;
  final productpic;
  final productreserveprice;
  final producthighestbid;
  final type;

  Product(
      {this.productname,
      this.productpic,
      this.productreserveprice,
      this.producthighestbid,
      this.type});

  @override
  Widget build(BuildContext context) {
    print(type);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Hero(
          tag: productname,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                header: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.white,
                  child: Text(
                    'Ends in 2:00:00',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                footer: Container(
                  color: Colors.white,
                  child: Column(
                    children: type == "English"
                        ? <Widget>[
                            Text(
                              productname,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '$productreserveprice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text('Highest bid: ' + '$producthighestbid',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ]
                        : <Widget>[
                            Text(
                              productname,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '$productreserveprice',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                                'Current Seller Price: ' + '$producthighestbid',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                  ),
                ),
                child: Image.asset(
                  productpic,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
