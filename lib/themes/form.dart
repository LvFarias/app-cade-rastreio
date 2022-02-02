import 'package:flutter/material.dart';

InputDecoration myInputDecoration({required String hintText}) {
  return InputDecoration(
    hintText: hintText,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 20.0,
    ),
  );
}
