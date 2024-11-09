import 'package:flutter/material.dart';

import '../../core/utilities/utils.dart';

class BuildBottomSheetWidget extends StatelessWidget {
  final VoidCallback onCameraPress;
  final VoidCallback onGalleryPress;

  const BuildBottomSheetWidget({
    super.key,
    required this.onCameraPress,
    required this.onGalleryPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, dividedBy: 5),
      decoration: BoxDecoration(
        color: Colors.black87,
        border: Border.symmetric(
          horizontal: BorderSide(),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight(context, dividedBy: 13),
            width: screenWidth(context, dividedBy: 3),
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                onCameraPress(); // Call the camera press callback
              },
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: screenHeight(context, dividedBy: 13),
            width: screenWidth(context, dividedBy: 3),
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                onGalleryPress(); // Call the gallery press callback
              },
              child: Icon(
                Icons.image_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
