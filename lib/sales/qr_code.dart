import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';


class QRScanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {


  String qrCode = ' ';
  double _progress = 0.5;


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xFF8CA6DB),
      title: Text("QR Code Scanner",
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(
          fontSize: 20,
        ),
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Scan Result',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 8),
          Text(
            '$qrCode',
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 20,
            ),
          ),
          SizedBox(height: 72),

          FlatButton(
            color: Color(0xFF8CA6DB),
              onPressed: (){
                scanQRCode();
              },
              child: Text("Start QR scan",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                ),
              ),
          ),

        ],
      ),
    ),
  );

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Failed to get platform version.';
    }
  }
}