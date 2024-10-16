import 'package:flutter/material.dart';
import 'package:weather/shared/colors_app.dart';
import 'package:weather/utilities/functions/backgroun_image.dart';

import '../widgets/text_form_field_widget.dart';

class CitySearchScreen extends StatefulWidget {
  const CitySearchScreen({super.key});

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CitySearchScreen> {
  AssetImage backgroundImage = BackgrounImage.backgroundImageInTime();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: null,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormFieldWidget(
                text: 'Enter City Name...',
                keyPadType: TextInputType.text,
                prefixIcon: Icon(
                  Icons.location_city_outlined,
                  color: primaryColor,
                ),
                validate: (value) {
                  if (value!.isEmpty) {
                    return 'Title must not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 70,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  color: Colors.white,
                  height: 50,
                  child: Icon(
                    Icons.search,
                    color: primaryColor,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
