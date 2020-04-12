//import 'package:animi/utils/constants/gen_style.dart';
import 'package:flutter/material.dart';

Container page1() {
  return Container(
    color: Colors.white,
    height: double.infinity,
    width: 345,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('GameCoins',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.purple.withOpacity(.6))),
                Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.purple.withOpacity(.6)),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/gamer.png',
            fit: BoxFit.cover,
            height: 230.0,
            width: 250,
          ),
          SizedBox(height: 40.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Online",
                style: TextStyle(
                    fontSize: 32.0, color: Colors.purple.withOpacity(.6)),
              ),
              Text(
                "Gambling",
                style: TextStyle(fontSize: 42.0, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 20.0),
                child: Text(
                  "lorem donor ipsum gaming and gambling online with lorem donor ipsum",
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.purple.withOpacity(.6)),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container page2() {
  return Container(
    color: Colors.blue,
    height: double.infinity,
    width: 345,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('GameCoins',
                    style: TextStyle(
                        fontSize: 18.0, color: Colors.white.withOpacity(.6))),
                Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white.withOpacity(.6)),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/gamer.png',
            fit: BoxFit.cover,
            height: 230.0,
            width: 250,
          ),
          SizedBox(height: 40.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "For",
                style: TextStyle(
                    fontSize: 32.0, color: Colors.white.withOpacity(1)),
              ),
              Text(
                "Gamers",
                style: TextStyle(fontSize: 42.0, color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 20.0),
                child: Text(
                  "lorem donor ipsum gaming and gambling online with lorem donor ipsum",
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.white.withOpacity(.9)),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Container page3() {
  return Container(
    color: Colors.redAccent,
    height: double.infinity,
    width: 345,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
               Text('GameCoins',
                  style: TextStyle(
                      fontSize: 18.0, color: Colors.white.withOpacity(.9))),
              Text(
                'Skip',
                style: TextStyle(
                    fontSize: 18.0, color: Colors.white.withOpacity(1)),
              )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Image.asset(
            'assets/gamer.png',
            fit: BoxFit.cover,
            height: 230.0,
            width: 250,
          ),
          SizedBox(height: 40.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Text(
              "Online",
              style:
                  TextStyle(fontSize: 32.0, color: Colors.white.withOpacity(1)),
            ),
            Text(
              "Gambling",
              style: TextStyle(fontSize: 42.0, color: Colors.black),
            ),
              Padding(
                padding: const EdgeInsets.only(right: 50, top: 20.0),
                child: Text(
                  "lorem donor ipsum gaming and gambling online with lorem donor ipsum",
                  style: TextStyle(
                      fontSize: 20.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
/*
Container page4() {
  return Container(
    color: Colors.yellowAccent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/1.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
        ),
        Column(
          children: <Widget>[
            Text(
              "Can be",
              style: kGenStyle,
            ),
            Text(
              "Used for",
              style: kGenStyle,
            ),
            Text(
              "Onboarding Design",
              style: kGenStyle,
            ),
          ],
        ),
      ],
    ),
  );
}

Container page5() {
  return Container(
    color: Colors.redAccent,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.asset(
          'assets/1.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
        ),
        Column(
          children: <Widget>[
            Text(
              "Do",
              style: kGenStyle,
            ),
            Text(
              "Try It",
              style: kGenStyle,
            ),
            Text(
              "Thank You",
              style: kGenStyle,
            ),
          ],
        ),
      ],
    ),
  );
}

*/
