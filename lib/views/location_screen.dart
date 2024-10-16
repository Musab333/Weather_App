import 'package:flutter/material.dart';
import 'package:weather/utilities/functions/backgroun_image.dart';
import 'package:weather/views/city_rearch_screen.dart';

import '../utilities/style/style.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    // الحصول على الوقت الحالي
    AssetImage backgroundImage = BackgrounImage.backgroundImageInTime();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.refresh,
                        size: 40.0,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        size: 40.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CitySearchScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Paris',
                      style: kNameCityTextStyle,
                    ),
                    Text(
                      '☀',
                      style: kConditionTextStyle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '32°',
                      style: kTempTextStyle,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                const Expanded(
                  child: Text(
                    "It's 🍦 time in San Francisco!",
                    textAlign: TextAlign.left,
                    style: kMessageTextStyle,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
