import 'package:country_calling_code_picker/picker.dart';
import 'package:flutter/material.dart';

var name = "";

class Country_code extends StatefulWidget {
  const Country_code({super.key});

  @override
  State<Country_code> createState() => _Country_codeState();
}

class _Country_codeState extends State<Country_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffab0d07),
        title: Text('Select Code'),
      ),
      body: Container(
        child: CountryPickerWidget(
          onSelected: (country) {
            print(country.callingCode);
            setState(() {
              name = country.callingCode.toString();
            });
            Navigator.pop(context, country);},
        ),
      ),
    );
  }
}
