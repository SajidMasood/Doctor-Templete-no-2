import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  ImageDialog(this.imgUrl);

  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: MediaQuery.of(context).size.height / 1.5,
        child: Center(
          child: Image.asset(
            fit: BoxFit.fill,
            imgUrl,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
