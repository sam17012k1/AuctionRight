import 'package:autcionright/Screens/Home.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  Homes _homes = new Homes();
  final List<String> auctions = ['English Auction', 'Dutch Auction'];
  final _key = GlobalKey<FormState>();
  //final List<String> Images = ['assets/img/drone.jpg','assets/img/gopro.png'];
  String type = "English Auction";
  String name = "";
  String description = "";
  String reserveprice = "";
  String intialprice = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Auction'),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
            child: Form(
          key: _key,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      'Name: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 67,),
                    Expanded(
                      child: TextFormField(
                      //initialValue: userdata.name,
                      decoration: InputDecoration(
                        hintText: 'Product name',
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please enter a valid product name' : null,
                      onChanged: (val) => setState(() => name = val),
                  ),
                    ),
              ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    children: [
                      Text(
                        'Description: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 26,),
                      Expanded(
                        child: TextFormField(
                          //initialValue: userdata.name,
                          decoration: InputDecoration(
                            hintText: 'Product description',
                          ),
                          validator: (val) =>
                          val.isEmpty ? 'Please enter a valid product description' : null,
                          onChanged: (val) => setState(() => description = val),
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Price: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 68,),
                    Expanded(
                      child: TextFormField(
                      //initialValue: userdata.name,
                      decoration: InputDecoration(
                        hintText: 'Reserve Price',
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Please enter a valid price (in rupees)' : null,
                      onChanged: (val) => setState(() => reserveprice = val),
                  ),
                    ),
          ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Starting Price: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextFormField(
                      //initialValue: userdata.name,
                      decoration: InputDecoration(
                        hintText: 'Starting price (Only for Dutch Auction)',
                      ),
                      validator: (val) => val.isEmpty
                          ? 'Please enter a valid Starting price (in rupees)'
                          : null,
                      onChanged: (val) => setState(() => intialprice = val),
                  ),
                    ),
          ]
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: <Widget>[
                  Text(
                    'Auction Type: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: DropdownButtonFormField(
                      //decoration: TextInputdecoration,
                      value: type,
                      items: auctions.map((auction) {
                        return DropdownMenuItem(
                          value: auction,
                          child: Text('$auction'),
                        );
                      }).toList(),
                      onChanged: (val) => setState(() => type = val),
                    ),
                  ),

                ]),
                SizedBox(height: 45,),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Homes()));

                  },

                  color: Colors.teal[700],
                  splashColor: Colors.teal[500],
                  child: Text(
                    'Start Auction',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
