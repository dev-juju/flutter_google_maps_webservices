library flutter_google_maps_webservices.staticmap.example;

import 'dart:io';

import 'package:flutter_google_maps_webservices/places.dart';
import 'package:flutter_google_maps_webservices/staticmap.dart';

final apiKey = Platform.environment['API_KEY'] ?? '';

void main() {
  final staticMap = StaticMap(
    apiKey,
    markers: List.from([
      Location(lat: 23.721160, lng: 90.394435),
      Location(lat: 23.732322, lng: 90.385142),
    ]),
    path: Path(
      enc: 'svh~F`j}uOusC`bD',
      color: 'black',
    ),
    scale: false,
  );

  print(staticMap.getUrl());
}
