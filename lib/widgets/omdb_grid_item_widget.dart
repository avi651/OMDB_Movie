import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OMDBGridViewItem extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final bool? isFav;
  const OMDBGridViewItem({Key? key,
    required this.image,
    required this.width,
    required this.height,
    required this.isFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                right: 10.0,
                child: Icon(Icons.favorite,
                    size: 30.0, color: isFav == true ? Colors.greenAccent[400]:  Colors.red[400]), //Icon
              ),
            ],
          ),
        ),
      ),
    );
  }
}