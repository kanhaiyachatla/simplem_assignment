import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FirstPage extends StatelessWidget {

  String place;
  String img;

   FirstPage({Key? key, required this.place, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.heart,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(img), fit: BoxFit.cover),
        ),
        child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black.withOpacity(0),Colors.black.withOpacity(0), Colors.black.withOpacity(0.9)],begin: Alignment.topCenter,end: Alignment.bottomCenter)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  place,
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Goa, India',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4.0),
                              child: Text(
                                'One of the most happening beaches in Goa, Baga Beach is where you will find water sports, fine dining restaurants, bars, and clubs. Situated in North Goa, Baga Beach is bordered by Calangute and Anjuna Beaches.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '4.8',
                                    style: TextStyle(fontSize: 16, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "₹15,000/person",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(11)
                                      ),
                                        backgroundColor: Colors.yellow,
                                    ),
                                    child: Text('Book now'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
    );
  }
}
