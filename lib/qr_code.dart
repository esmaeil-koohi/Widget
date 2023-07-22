
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeTest extends StatefulWidget {
  const QrCodeTest({Key? key}) : super(key: key);

  @override
  State<QrCodeTest> createState() => _QrCodeTestState();
}

class _QrCodeTestState extends State<QrCodeTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImageView(
          data: 'esmaeil_koohi',
          version: QrVersions.auto,
          size: 200.0,
        ),
      ),
    );
  }
}
