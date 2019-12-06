import 'dart:collection';
import 'dart:ffi';
import 'package:camera/camera.dart';

class GraphicOverlay{
  final Object mLock = new Object();
  int mPreviewWidth;
  Float mWidthScaleFactor = 1.0 as Float;
  int mPreviewHeight;
  Float mHeightScaleFactor = 1.0 as Float;
  int mFacing = CameraController.;
  Set<Graphic> mGraphics = new HashSet<>();
}