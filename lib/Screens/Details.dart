import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String productname;
  final String description;
  final String reserveprice;
  final String highestbid;
  final String selleprice;
  final String image;
  final String sellerName;
  final String sellerPhone;
  final String auctionType;



  Detail({ this.productname, this.description, this.highestbid, this.selleprice, this.image, this.sellerName, this.sellerPhone, this.auctionType, this.reserveprice}) ;


  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          '${widget.productname}',

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Image.asset(widget.image),
            Text('Product name: ${widget.productname}',style: TextStyle(fontSize: 25),),
            Text('Description: ${widget.description}',style: TextStyle(fontSize: 25)),
            Text('Seller Name: ${widget.sellerName}',style: TextStyle(fontSize: 20)),
            Text('Seller Phone: ${widget.sellerPhone}',style: TextStyle(fontSize: 20)),
            Text('Reserve Price: ${widget.reserveprice}',style: TextStyle(fontSize: 20)),
            Text( widget.auctionType == "English" ? 'Highest Bid: ${widget.selleprice}': 'Current Seller Price: ${widget.highestbid}',style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: widget.auctionType=="English" ? 'enter bid amount greater than ${widget.reserveprice}' : 'Enter selle price to bid',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
