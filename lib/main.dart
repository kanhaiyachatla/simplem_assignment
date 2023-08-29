import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simplem_assignment/Page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool liked = true;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Hello, Vineetha',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        alignment: AlignmentDirectional.centerEnd,
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.bell_solid))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Where do you \nwant to explore today?',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Choose Category Section ------------------------------------
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choose Category',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Text(
                            'See all',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: size.height * 0.1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Colors.green),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 25, right: 35),
                                child: Row(children: [
                                  Container(
                                      width: 40,
                                      child: Image.asset('lib/images/img.png')),
                                  SizedBox(),
                                  Text(
                                    'Beach',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  border: Border.all()),
                              child: Padding(
                                padding: EdgeInsets.only(left: 25, right: 35),
                                child: Row(children: [
                                  Container(
                                      width: 40,
                                      child:
                                          Image.asset('lib/images/img_1.png')),
                                  SizedBox(),
                                  Text(
                                    'Mountain',
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Package Selection 1 ----------------------------------------
                Container(
                  height: size.height * 0.39,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          //TODO Create transition to page 1
                          print('trans');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FirstPage(
                                  place: 'Kuta Beach',
                                  img: 'lib/images/img_2.png')));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/img_2.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: size.width * 0.47,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.8)
                                  ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              CupertinoIcons.heart,
                                            ))),
                                    alignment: AlignmentDirectional.centerEnd,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Text(
                                            'Kuta Beach',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        (size.width > 500)
                                            ? Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        'Bali, Indonesia',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(width: 10,),
                                                      RatingBar(
                                                        ratingWidget:
                                                        RatingWidget(
                                                          full: Icon(
                                                            Icons.star,
                                                            size: 1,
                                                            color:
                                                            Colors.yellow,
                                                          ),
                                                          half: Icon(
                                                            Icons.star_half,
                                                            color:
                                                            Colors.yellow,
                                                          ),
                                                          empty: Icon(
                                                            Icons.star,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {},
                                                        initialRating: 4,
                                                        itemSize: 20,
                                                      ),
                                                      Text(
                                                        '  4.2',
                                                        style: TextStyle(
                                                            color:
                                                            Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .location_on_outlined,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        'Bali, Indonesia',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                    children: [
                                                      RatingBar(
                                                        ratingWidget:
                                                            RatingWidget(
                                                          full: Icon(
                                                            Icons.star,
                                                            size: 1,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          half: Icon(
                                                            Icons.star_half,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          empty: Icon(
                                                            Icons.star,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {},
                                                        initialRating: 4,
                                                        itemSize: 20,
                                                      ),
                                                      Text(
                                                        '  4.2',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          print('page 2');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FirstPage(
                                  place: 'Baga Beach',
                                  img: 'lib/images/img_3.png')));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('lib/images/img_3.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: size.width * 0.47,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.black.withOpacity(0.0),
                                    Colors.black.withOpacity(0.8)
                                  ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              CupertinoIcons.heart,
                                            ))),
                                    alignment: AlignmentDirectional.centerEnd,
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Align(
                                          child: Text(
                                            'Baga Beach',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        (size.width > 500) ? Row(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  'Goa, India',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Row(
                                              children: [
                                                RatingBar(
                                                  ratingWidget: RatingWidget(
                                                    full: Icon(
                                                      Icons.star,
                                                      size: 1,
                                                      color: Colors.yellow,
                                                    ),
                                                    half: Icon(
                                                      Icons.star_half,
                                                      color: Colors.yellow,
                                                    ),
                                                    empty: Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  onRatingUpdate: (rating) {},
                                                  initialRating: 4,
                                                  itemSize: 20,
                                                ),
                                                Text(
                                                  '  4.8',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ): Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on_outlined,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  'Goa, India',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                RatingBar(
                                                  ratingWidget: RatingWidget(
                                                    full: Icon(
                                                      Icons.star,
                                                      size: 1,
                                                      color: Colors.yellow,
                                                    ),
                                                    half: Icon(
                                                      Icons.star_half,
                                                      color: Colors.yellow,
                                                    ),
                                                    empty: Icon(
                                                      Icons.star,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  onRatingUpdate: (rating) {},
                                                  initialRating: 4,
                                                  itemSize: 20,
                                                ),
                                                Text(
                                                  '  4.8',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),


                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Package Selection 2 ----------------------------------------
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Package',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                    Text('See all'),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/images/img_4.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 120,
                              width: 90,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuta Resort',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "₹20,000",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    RatingBar(
                                      ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          size: 1,
                                          color: Colors.yellow,
                                        ),
                                        half: Icon(
                                          Icons.star_half,
                                          color: Colors.yellow,
                                        ),
                                        empty: Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onRatingUpdate: (rating) {},
                                      initialRating: 4,
                                      itemSize: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'A resort is a place used for \nvacation, relaxation or as',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.heart)))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(size.width / 35),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('lib/images/img_3.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 120,
                              width: 90,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Baga Beach Resort',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "₹15,000",
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    RatingBar(
                                      ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          size: 1,
                                          color: Colors.yellow,
                                        ),
                                        half: Icon(
                                          Icons.star_half,
                                          color: Colors.yellow,
                                        ),
                                        empty: Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      onRatingUpdate: (rating) {},
                                      initialRating: 4,
                                      itemSize: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'A resort is a place used for \nvacation, relaxation or as ...',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(CupertinoIcons.heart)))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
