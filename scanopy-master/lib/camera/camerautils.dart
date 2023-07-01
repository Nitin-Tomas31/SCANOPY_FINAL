import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

double getAspectRatio(CameraController controller) {
  return controller.value.aspectRatio;
}
