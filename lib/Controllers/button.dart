import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(400, 50),
  backgroundColor: Colors.redAccent.shade700,
  elevation: 0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15)
  )
);