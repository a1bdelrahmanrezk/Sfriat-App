import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safaryatproject/CustomShapeClipper.dart';
import 'package:safaryatproject/favouritePage.dart';
import 'package:safaryatproject/flightInfo.dart';
import 'package:safaryatproject/hotelInfo.dart';
import 'package:safaryatproject/myBooking.dart';
import 'package:safaryatproject/settingsPage.dart';
import 'package:safaryatproject/signup.dart';
import 'Login.dart';

void main() => runApp(MaterialApp(
  title: 'Home Page for Travel App',
  debugShowCheckedModeBanner: false,
  home: theHomePage(),
));

class theHomePage extends StatefulWidget {

  @override
  _theHomePageState createState() => _theHomePageState();
}

class _theHomePageState extends State<theHomePage> {
  int selectedPage = 0;
  final pageOptions = [
    homee(),
    MyBooking(),
    favouritePage(),
    settingsPage(),
  ];
  //Page Controller --------------
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[selectedPage],
      //---------
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Booking'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('Saved')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_outlined),
              title: Text('Settings')),
        ],
      ),
      //-------------------------
    );
  }
}

//** Start The Home Page */
class homee extends StatefulWidget {

  @override
  _homeeState createState() => _homeeState();
}

class _homeeState extends State<homee> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomeScreenTopPart(),
          flightsDestinations,
          Tourist(),
          Hotels_StayCations(pageController: _pageController),
          //put content here
        ],
      ),
    );
  }
}
//** End The Home Page */

//Start Screen Top Part
class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 350.0,
            // color: Colors.lightBlue,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/flight.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Safaryat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: TextField(
                      cursorColor: Colors.blueAccent,
                      decoration: InputDecoration(
                        hintText: 'Search Your Destinations',
                        hintStyle: TextStyle(color: Colors.grey.shade700),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 25.0, vertical: 12.0),
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.black45,
                          ),
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                  height: 30.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: 5.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> flightInfo()));
                        //Go Where U want
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                      ),
                      icon: Icon(
                        Icons.flight,
                      ),
                      label: Text(
                        'Flights',
                      ),
                    ),
                    SizedBox(
                      width: 35.0,
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> hotelInfo()));
                        //Go Where U Want
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.white.withOpacity(0.30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                      ),
                      icon: Icon(
                        Icons.home_work,
                      ),
                      label: Text(
                        'Hotels',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
//End Screen Top Part
//********************************************* */

//Start Destinations Cards For Travel
var viewAllStyle = TextStyle(fontSize: 14.0, color: Colors.blueAccent);
var flightsDestinations = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Destinations For Travel',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },
            child: Text(
              'VIEW ALL',
              style: viewAllStyle,
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 210.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: flightCards,
      ),
    ),
  ],
);

List<FlightCards> flightCards = [
  FlightCards("assets/images/card1.jpg", "Egypt", "Sept 2021", "45"),
  FlightCards("assets/images/card2.jpg", "London", "Dec 2021", "45"),
  FlightCards("assets/images/card3.jpg", "England", "Oct 2021", "45"),
  FlightCards("assets/images/card4.jpg", "Paris", "Nov 2021", "45"),
  FlightCards("assets/images/card5.jpg", "Cairo", "Jan 2022", "45"),
];

class FlightCards extends StatelessWidget {
  final String imagePath, cityName, monthYear, dicount;
  FlightCards(this.imagePath, this.cityName, this.monthYear, this.dicount);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 210.0,
                  width: 160.0,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 60.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10.0,
                  right: 8.0,
                  bottom: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cityName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.0),
                          ),
                          Text(monthYear,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 14.0)),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 2.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          "$dicount%",
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//End Destinations Cards For Travel
//********************************************* */

//Start Tourist Attractions
class Tourist extends StatefulWidget {
  @override
  _TouristState createState() => _TouristState();
}

List<String> urls = [
  "https://images.pexels.com/photos/1007431/pexels-photo-1007431.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/90972/pexels-photo-90972.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
  "https://images.pexels.com/photos/2356045/pexels-photo-2356045.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/2166553/pexels-photo-2166553.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/3290068/pexels-photo-3290068.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/2363/france-landmark-lights-night.jpg",
  "https://images.pexels.com/photos/3879071/pexels-photo-3879071.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/548077/pexels-photo-548077.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/772689/pexels-photo-772689.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  "https://images.pexels.com/photos/2225439/pexels-photo-2225439.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
];
Widget touristCard(
    String imgurl, String hotelname, String location, int rating) {
  return Card(
    margin: EdgeInsets.only(right: 22.0),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    elevation: 0.0,
    child: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imgurl),
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.color),
            fit: BoxFit.cover,
            scale: 2.0,
          ),
        ),
        width: 200.0,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for (var i = 0; i < rating; i++)
                    Icon(
                      Icons.star,
                      size: 15.0,
                      color: Color(0xFFFE8C68),
                    ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelname,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      location,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class _TouristState extends State<Tourist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              right: 16.0, left: 16.0, top: 35.0, bottom: 1.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tourist Attractions ',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child: Text(
                  'SEE MORE',
                  style: viewAllStyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                touristCard(urls[0], 'Mosque', 'Egypt, cairo', 5),
                touristCard(urls[1], 'Cambridge', 'United States', 5),
                touristCard(urls[2], 'Nozha Mountain', 'Lebenan', 3),
                touristCard(urls[3], 'Counta Till', 'Algeria', 2),
                touristCard(urls[4], 'Pyramid of Djoser', 'Taywan', 4),
                touristCard(urls[5], 'Pyramid of Glass', 'France', 4),
                touristCard(urls[6], 'Evil Tower', 'Paris', 5),
                touristCard(urls[7], 'Nolda Street', 'London', 3),
                touristCard(urls[8], 'Karnak', 'Egypt', 5),
              ],
            ),
          ),
        )
      ],
    );
  }
}
//End Tourist Attractions
//********************************************* */

//Start Hotels & StayCations
class recommendHotel {
  String name;
  String image;
  recommendHotel(this.name, this.image);
}

List<recommendHotel> recommenations = recommendationData
    .map((item) => recommendHotel(item['name'], item['image']))
    .toList();

List recommendationData = [
  {
    "name": "FiveStar Hotel, Egypt",
    "image":
    "https://images.pexels.com/photos/6010331/pexels-photo-6010331.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
  },
  {
    "name": "FourStart, London",
    "image":
    "https://images.pexels.com/photos/7214471/pexels-photo-7214471.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },
  {
    "name": "Beach Hotel, UnitedStates",
    "image":
    "https://images.pexels.com/photos/2373201/pexels-photo-2373201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },
  {
    "name": "Elgharda Hotel, Egypt",
    "image":
    "https://images.pexels.com/photos/221457/pexels-photo-221457.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },
  {
    "name": "FiveStar Hotel, Egypt",
    "image":
    "https://images.pexels.com/photos/4112236/pexels-photo-4112236.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
  },
  {
    "name": "FiveStar Hotel, Egypt",
    "image":
    "https://images.pexels.com/photos/2417842/pexels-photo-2417842.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
  },
];

class Hotels_StayCations extends StatelessWidget {
  const Hotels_StayCations({
    Key? key,
    required PageController pageController,
  })  : _pageController = pageController,
        super(key: key);

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              right: 16.0, left: 16.0, top: 35.0, bottom: 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Recommended Hotels',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child: Text(
                  'SEE MORE',
                  style: viewAllStyle,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200.0,
          margin: EdgeInsets.only(
            top: 70.0,
          ),
          child: PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  recommenations.length,
                      (int index) => Container(
                    margin: EdgeInsets.only(
                      right: 25.0,
                    ),
                    width: 335.0,
                    height: 218.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                            NetworkImage(recommenations[index].image),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                            left: 19.0,
                            bottom: 19.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: 19.2,
                                  sigmaX: 19.2,
                                ),
                                child: Container(
                                  height: 36,
                                  padding: EdgeInsets.only(
                                      left: 16.0, right: 14.5),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.pin_drop,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 9.5,
                                      ),
                                      Text(
                                        recommenations[index].name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ))),
        ),
      ],
    );
  }
}
//End Hotels & StayCations
//******************************************* */

