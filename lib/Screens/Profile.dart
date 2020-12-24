import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Profile'
        ),
      ),
    body: SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            //margin: EdgeInsets.only(bottom: 2),
            color: Colors.grey[200],
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 20, 10, 8),
            child: Text(
              'Welcome User',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

          ),ClipRRect(
            child: Material(
              elevation: 10,
              child: Container(
                margin: EdgeInsets.only(bottom: 1),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                alignment: Alignment.centerLeft,
                child:Text(
                  'My Profile'
                ),
                decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 10.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),

              ),
            ),
          ),
          ClipRRect(
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              alignment: Alignment.centerLeft,
              child:Text(
                  'My Auctions'
              ),
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0.0, 10.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),

            ),
          ),
          ClipRRect(
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              alignment: Alignment.centerLeft,
              child:Text(
                  'Payment methods'
              ),
              decoration: BoxDecoration(
              //  borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0.0, 10.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),

            ),
          ),
          Container(
            //margin: EdgeInsets.only(bottom: 2),
            color: Colors.grey[200],
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(20, 10, 8, 8),
            child: Text(
              'HELP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

          ),
          ClipRRect(
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              alignment: Alignment.centerLeft,
              child:Text(
                  'Report user'
              ),
              decoration: BoxDecoration(
                //  borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0.0, 10.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),

            ),
          ),
          ClipRRect(
            child: Container(
              margin: EdgeInsets.only(bottom: 1),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              alignment: Alignment.centerLeft,
              child:Text(
                  'Contact Us'
              ),
              decoration: BoxDecoration(
                //  borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[800],
                    offset: Offset(0.0, 10.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),

            ),
          ),
        ],
      ),

    ),
    );
  }
}
