import 'dart:io';

import 'package:edubee/scan/plants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../home/Map.dart';

class Scan extends StatefulWidget {
  const Scan({super.key});

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      // controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (result != null) {
      dynamic plant = getPlant(result!.code);
      if (plant != null) {
        plant.isFound = true;
        result = null;
      }
    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.flash_on),
                  color: Colors.white,
                  onPressed: () async {
                    await controller!.toggleFlash();
                    setState(() {});
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  color: Colors.white,
                  onPressed: () async {
                    await controller!.flipCamera();
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        // controller.pauseCamera();
        controller.stopCamera();
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
