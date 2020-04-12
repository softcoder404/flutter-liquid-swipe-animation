import 'package:animi/utils/custom_widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:math';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int page = 0;
  double pos;
  UpdateType updateType;

  final pages = [
    page1(),
    page2(),
    page3(),
  ];

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page ?? 0) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return new Container(
      width: 25.0,
      child: new Center(
        child: new Material(
          color: Colors.yellow,
          type: MaterialType.circle,
          child: new Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: page == 0
            ? Colors.blue
            : (page == 1 ? Colors.redAccent : Colors.white),
        body: Stack(
          children: <Widget>[
            LiquidSwipe(
              slideIconWidget: GestureDetector(
                onVerticalDragUpdate: (DragUpdateDetails d) {
                  double p = d.globalPosition.dy;

                  if (p < 350.0) {
                    pos = ((350.0 - p) / 350.0) * -1.0;
                  } else {
                    pos = (p - 350.0) / 350.0;
                  }
                  setState(() {});
                },
                child: Container(
                  width: 25,
                  height: 70,
                  decoration: BoxDecoration(
                    color: page == 0
                        ? Colors.blue
                        : (page == 1 ? Colors.redAccent : Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        bottomLeft: Radius.circular(45)),
                  ),
                  child: CircleAvatar(
                    backgroundColor: page == 0
                        ? Colors.blue
                        : (page == 1 ? Colors.redAccent : Colors.white),
                    child: Icon(Icons.keyboard_arrow_left,
                        size: 32,
                        color: page == 2 ? Colors.black : Colors.white),
                  ),
                ),
              ),
              pages: pages,
              fullTransitionValue: 200,
              enableSlideIcon: true,
              enableLoop: true,
              positionSlideIcon: pos ?? 0.1,
              onPageChangeCallback: pageChangeCallback,
              currentUpdateTypeCallback: updateTypeCallback,
              waveType: WaveType.liquidReveal,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    //  print(lpage);
    setState(() {
      page = lpage;
    });
    Navigator.of(context).pop();
  }

  updateTypeCallback(UpdateType updateType) {
    //print(updateType);
  }
}
