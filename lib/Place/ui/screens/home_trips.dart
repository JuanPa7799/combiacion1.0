import 'package:flutter/material.dart';
import 'package:combinacion1_0/Place/ui/widgets/description_place.dart';
import 'package:combinacion1_0/Place/ui/widgets/review_list.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[DescriptionPlace(), ReviewList()],
        ),
        HeaderAppBar()
      ],
    );
  }
}
