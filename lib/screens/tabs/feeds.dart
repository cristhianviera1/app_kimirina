import 'package:flutter/material.dart';
import 'package:kimirina_app/models/feed.dart';
import 'package:kimirina_app/widgets/feed_card1.dart';
import 'package:kimirina_app/widgets/feed_card2.dart';
import 'package:kimirina_app/widgets/feed_card3.dart';
import 'package:kimirina_app/screens/select_option_its_page.dart';

import '../../_routes/routes.dart';


class FeedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 30.0),
      child: Text(
        "Feed",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 40.0,
        ),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          padding: EdgeInsets.only(top: 40.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    FeedCard1(feed: feeds[0]),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard2(
                      feed: feeds[1],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    FeedCard3(
                      feed: feeds[2],
                    ),
                    FlatButton(
                      onPressed: () {
                        /*...*/
                        Navigator.of(context)
                        .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                        return new SelectOptionItsPage();
                      }));
                      },
                      child: Text(
                        "Flat Button",
                      ),
                    ), FlatButton(
                      onPressed: () => Navigator.pushNamed(context, riesgoViewRoute),
                      child: Text(
                        "Riesgo",
                      ),
                    ), FlatButton(
                      onPressed: () => Navigator.pushNamed(context, autotestViewRoute),
                      child: Text(
                        "autotest",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
