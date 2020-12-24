import 'package:flutter/material.dart';

import 'Details.dart';

class MyAuctions extends StatefulWidget {
  @override
  _MyAuctionsState createState() => _MyAuctionsState();
}

class _MyAuctionsState extends State<MyAuctions> {
  List<Map<String, String>> List_item = [
    {
      "name": "Drone",
      "pic": "asset/img/drone.jpg",
      "reserve price": "200\$",
      "Highest bid": "290\$",
      "description": "",
      "type": "English",
      "Description": "Amazing Drone",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "Arduino",
      "pic": "asset/img/arduino.jpg",
      "reserve price": "10\$",
      "Highest bid": "14\$",
      "description": "",
      "type": "Dutch",
      "Description": "Amazing Arduino",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "RC Car",
      "pic": "asset/img/rccar.png",
      "reserve price": "5\$",
      "Highest bid": "8\$",
      "description": "",
      "type": "English",
      "Description": "Amazing RC Car",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
  ];

  @override
  Widget build(BuildContext context) {
    String productname="";
    String productpic="";
    String productreserveprice="";
    String producthighestbid="";
    String type="";
    String description="";
    String sellerName="";
    String sellerPhone="";

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              alignment: Alignment.topCenter,
              child: Text(
                'Active bids',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset("asset/img/drone.jpg"),
                    title: Text('Drone'),
                    subtitle:
                        Text('Highest bid: 40\$' + '         Your bid: 25\$'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('DETAILS'),
                        onPressed: () {
                          setState(() {
                            productname= List_item[0]['name'];
                            producthighestbid= List_item[0]['Highest bid'];
                            productpic= List_item[0]['pic'];
                            productreserveprice= List_item[0]['reserve price'];
                            type= List_item[0]['type'];
                            sellerName= List_item[0]['SellerName'];
                            sellerPhone= List_item[0]['SellerPhone'];
                            description= List_item[0]['Description'];

                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(productname: productname,image: productpic,selleprice: producthighestbid,auctionType: type,reserveprice: productreserveprice,description: description,sellerPhone: sellerPhone,sellerName: sellerName,highestbid: producthighestbid,)));


                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text(
                          'Ends in 2:00:00',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {/* ... */
                                  },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset("asset/img/arduino.jpg"),
                    title: Text('Arduino'),
                    subtitle:
                        Text('Highest bid: 8\$' + '         Your bid: 8\$'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('DETAILS'),
                        onPressed: () {/* ... */
                          setState(() {
                            productname= List_item[1]['name'];
                            producthighestbid= List_item[1]['Highest bid'];
                            productpic= List_item[1]['pic'];
                            productreserveprice= List_item[1]['reserve price'];
                            type= List_item[1]['type'];
                            sellerName= List_item[1]['SellerName'];
                            sellerPhone= List_item[1]['SellerPhone'];
                            description= List_item[1]['Description'];

                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(productname: productname,image: productpic,selleprice: producthighestbid,auctionType: type,reserveprice: productreserveprice,description: description,sellerPhone: sellerPhone,sellerName: sellerName,highestbid: producthighestbid,)));

                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text(
                          'Ends in 1:45:00',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.asset("asset/img/rccar.png"),
                    title: Text('RC Car'),
                    subtitle: Text('Reserve Price: 25\$'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('DETAILS'),
                        onPressed: () {/*
                         ... */
                          setState(() {
                            productname= List_item[2]['name'];
                            producthighestbid= List_item[2]['Highest bid'];
                            productpic= List_item[2]['pic'];
                            productreserveprice= List_item[2]['reserve price'];
                            type= List_item[2]['type'];
                            sellerName= List_item[2]['SellerName'];
                            sellerPhone= List_item[2]['SellerPhone'];
                            description= List_item[2]['Description'];

                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(productname: productname,image: productpic,selleprice: producthighestbid,auctionType: type,reserveprice: productreserveprice,description: description,sellerPhone: sellerPhone,sellerName: sellerName,highestbid: producthighestbid,)));
                        },
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text(
                          'Starts in 3 Days',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {/* ... */},
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Scrolls {
  String title;
  Scrolls({this.title});
}
