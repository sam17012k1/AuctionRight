import 'dart:ui';

import 'package:autcionright/Screens/Details.dart';
import 'package:flutter/material.dart';

class Homes extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Homes> {
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
      "name": "Dell ALien Ware",
      "pic": "asset/img/dellalienware.jpg",
      "reserve price": "1200\$",
      "Highest bid": "1257\$",
      "description": "",
      "type": "English",
      "Description": "Amazing Dell ALien Ware",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "iPhone5s",
      "pic": "asset/img/iphone5s.jpg",
      "reserve price": "100\$",
      "Highest bid": "104\$",
      "description": "",
      "type": "English",
      "Description": "Amazing iphone5s",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "Heat Sensor",
      "pic": "asset/img/heatsensor.jpg",
      "reserve price": "3\$",
      "Highest bid": "4\$",
      "description": "",
      "type": "English",
      "Description": "Amazing Sensor",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "Raspberry pi",
      "pic": "asset/img/raspberrypi.png",
      "reserve price": "10\$",
      "Highest bid": "12\$",
      "description": "",
      "type": "Dutch",
      "Description": "Amazing Raspberry pi",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "IR motion sensor",
      "pic": "asset/img/IRmotionsensor.jpg",
      "reserve price": "2\$",
      "Highest bid": "2.5\$",
      "description": "",
      "type": "English",
      "Description": "Amazing IR motion Sensor",
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
    {
      "name": "Arduino kit",
      "pic": "asset/img/arduinokit.jpg",
      "reserve price": "6\$",
      "Highest bid": "8\$",
      "description": "",
      "type": "Dutch",
      "Description": "Amazing ArduinoKit",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
    {
      "name": "Go pro Hero 8",
      "pic": "asset/img/gopro.jpg",
      "reserve price": "199\$",
      "Highest bid": "257\$",
      "description": "",
      "type": "Dutch",
      "Description": "Amazing GoPro",
      "SellerName": "Witwicked",
      "SellerPhone": "866666666"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'seach items',
                          prefixIcon: Icon(Icons.search, color: Colors.blue, size: 35,),
                        ),

                      ),
                    ),
                  ),


                ],

              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text(
                'Discover',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                 // fontFamily: "Lora"

                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal:8,vertical: 20),
                  itemCount: List_item.length,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Product(
                      productname: List_item[index]['name'],
                      producthighestbid: List_item[index]['Highest bid'],
                      productpic: List_item[index]['pic'],
                      productreserveprice: List_item[index]['reserve price'],
                      type: List_item[index]['type'],
                      sellerName: List_item[index]['SellerName'],
                      sellerPhone: List_item[index]['SellerPhone'],
                      description: List_item[index]['Description'],

                    );
                  }),
            ),
          ],
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
  final description;
  final sellerName;
  final sellerPhone;


  Product(
      {this.productname,
      this.productpic,
      this.productreserveprice,
      this.producthighestbid,this.type, this.description, this.sellerName, this.sellerPhone});

  @override
  Widget build(BuildContext context) {
    //print(type);
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: (){
        print("f");
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(productname: productname,image: productpic,selleprice: producthighestbid,auctionType: type,reserveprice: productreserveprice,description: description,sellerPhone: sellerPhone,sellerName: sellerName,highestbid: producthighestbid,)));

      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Card(

            child: Hero(
              tag: productname,
              child: Material(
                child: InkWell(
                  onTap: (){},
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

                        children: type == "English" ? <Widget>[
                          Text( productname,style:TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                          Text('$productreserveprice',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.left,),
                          Text( 'Highest bid: '+ '$producthighestbid',style: TextStyle(fontWeight: FontWeight.bold,) ),

                        ] : <Widget>[
                          Text( productname,style:TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                          Text('$productreserveprice',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.left,),

                          Text( 'Current Seller Price: '+ '$producthighestbid',style: TextStyle(fontWeight: FontWeight.bold,) ),

                        ],

                      ),
                    ),
                    child: Image.asset(productpic,fit: BoxFit.cover,),

                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
