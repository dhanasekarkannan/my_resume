import 'package:flutter/material.dart';

import '../utils/utils.dart';

class CircleImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomRight,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(400),
            topRight: Radius.circular(400),
            bottomLeft: Radius.circular(400),
          ),
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(),
            child: Container(
              child: Image.network(
                UrlLinks.profilePicURL,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
