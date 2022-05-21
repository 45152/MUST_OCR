import 'package:flutter/material.dart';

import 'ar_tour_tab.dart';
import 'filter_tab.dart';
import 'ocr_tab.dart';

class CameraTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Keme",
        style: Theme.of(context).textTheme.subtitle1,
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, OcrTab.routeName);
                },
                icon: Icon(
                  Icons.enhance_photo_translate,
                ),
                label: Text("Translate with camera"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orangeAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, ArTourTab.routeName);
                },
                icon: Icon(
                  Icons.tour,
                ),
                label: Text("tour with camera"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orangeAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, FilterTab.routeName);
                },
                icon: Icon(
                  Icons.face,
                ),
                label: Text("Fiters"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orangeAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
