library flutter_google_maps_webservices.directions.example;

import 'dart:async';
import 'dart:io';

import 'package:flutter_google_maps_webservices/directions.dart';

final directions =
    GoogleMapsDirections(apiKey: Platform.environment['API_KEY']);

Future<void> main() async {
  var res =
      await directions.directionsWithAddress('Paris, France', 'Rennes, France');

  print(res.status);
  if (res.isOkay) {
    print('${res.routes.length} routes');
    for (var r in res.routes) {
      print(r.summary);
      print(r.bounds);
    }
  } else {
    print(res.errorMessage);
  }

  directions.dispose();
}
