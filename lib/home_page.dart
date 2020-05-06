import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.sort,
            size: 40,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 40,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text(
                'Find Your Room',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[600],
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.tune,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    createRoom(),
                    createRoom(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget createRoom(){
    return Container(
      width: 190,
      margin: EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/room1.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.topRight,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Bedroom in Luxory Home',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '\$170/night',
                style: TextStyle(fontSize: 14),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                      size: 18,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '5.0',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}
