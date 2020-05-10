import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  final image, title, price, rate;

  RoomPage({this.image, this.title, this.price, this.rate});

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomSide(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
            ),
            Hero(
              tag: widget.title,
              child: Material(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image), fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              left: 0,
              top: 240,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 130,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.title,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      widget.rate != null ? widget.rate : '',
                                      style: TextStyle(fontSize: 16),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Trestreet City, Sector 70, USA',
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '\$ ' + (widget.price != null ? widget.price : '') + '/night',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              top: 390,
              left: 10,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            ),
            Positioned(
              top: 520,
              left: 10,
              child: Text(
                'Amenities',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50,
              top: 550,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: <Widget>[
                    Text(
                      'Free Wifi',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      'CCTV',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 50,
              top: 600,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: <Widget>[
                    Text(
                      'Washing Machine',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      'Fire Extinguisher',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]),
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

class BottomSide extends StatefulWidget {
  @override
  _BottomSideState createState() => _BottomSideState();
}

class _BottomSideState extends State<BottomSide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Theme
                    .of(context)
                    .primaryColor,
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: Icon(
                Icons.favorite_border,
                size: 30,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
