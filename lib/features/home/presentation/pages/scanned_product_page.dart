import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScannedProductPage extends StatefulWidget {
  const ScannedProductPage({super.key, required this.barcode});

  final String barcode;

  @override
  State<ScannedProductPage> createState() => _ScannedProductPageState();
}

class _ScannedProductPageState extends State<ScannedProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(widget.barcode),
    ));
  }
}
