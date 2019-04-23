import 'dart:math';
import 'package:flutter/material.dart';
import  'dart:async';


class Carousel extends StatelessWidget{
  @override
  final List images;
  final Curve animationCurve;
  final Duration animationDuration;
  final double dotSize;
  final double dotIncreaseSize;
  final double dotSpacing;
  final Color dotColor;
  final Color dotBColor;
  final bool showIndicator;
  final double indicatorBgPadding;
  final BoxFit boxFit;
  final bool borderRadius;
  final Radius radius;
  final double moveIndicatorFromBotton;
  final bool noRadiusForIndicator;
  final bool overlayShadow;
  final Color overlayShadowColors;

  final double overlayShadowSize;
  final bool autoplay;
  final Duration autoplayDuration;

  Carousel({
    this.images,
    this.animationCurve = Curves.ease,
    this.animationDuration = const Duration(milliseconds: 300),
    this.dotSize = 8.0,
    this.dotSpacing = 25.0,
    this.dotIncreaseSize = 2.0,
    this.dotColor = Colors.white,
    this.dotBColor,
    this.showIndicator = true,
    this.indicatorBgPadding =20.0,
    this.boxFit = BoxFit.cover,
    this.borderRadius = false,
    this.radius,
    this.moveIndicatorFromBotton = 0.0,
    this.noRadiusForIndicator = false,
    this.overlayShadow = false,
    this.overlayShadowColors,
    this.overlayShadowSize = 0.5,
    this.autoplay = true,
    this.autoplayDuration = const Duration(seconds: 3),
  }
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  
}