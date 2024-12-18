import 'dart:developer';

import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/widgets/toast/toast.dart';

import '../../widgets/state/app_state.dart';

class QrScreen extends StatefulWidget {
  const QrScreen({super.key});

  @override
  AppState<QrScreen> createState() => _QrScreenState();
}

class _QrScreenState extends AppState<QrScreen> {
  MobileScannerController controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    useNewCameraSelector: true,
    detectionTimeoutMs: 1000,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AiBarcodeScanner(
      controller: controller,
      hideGalleryButton: true,
      overlayColor: Color.fromARGB(155, 0, 0, 0),
      onDetect: (BarcodeCapture barcodeCapture) {
        log(barcodeCapture.toString(), name: "QR");
        AppToast.showSuccessToast(context, text: barcodeCapture.barcodes[0].displayValue);
        context.pop();
      },
    );
  }
}
