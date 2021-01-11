import 'package:flutter/material.dart';
import 'package:model_viewer/model_viewer.dart';

class CustomModelView extends StatefulWidget {
  CustomModelView({Key key, this.modelUrl}) : super(key: key);
  final modelUrl;

  @override
  _CustomModelViewState createState() => _CustomModelViewState();
}

class _CustomModelViewState extends State<CustomModelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Model Viewer")),
      body: ModelViewer(
        backgroundColor: Color.fromARGB(0xFF, 0xAA, 0xEE, 0xEE),
        src: widget.modelUrl,
        alt: "A 3D model of an astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}
