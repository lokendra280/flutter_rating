import 'package:flutter/material.dart';

class CustomRatingBar extends StatefulWidget {
  final double rating;
  final double starSize;
  final Color color;
  final int itemCount;

  const CustomRatingBar({
    Key? key,
    required this.rating,
    required this.starSize,
    required this.itemCount,
    required this.color,
  }) : super(key: key);

  @override
  _CustomRatingBarState createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.itemCount, (index) {
        IconData iconData;
        if (index >= widget.rating) {
          iconData = Icons.star_border;
        } else if (index > widget.rating - 1 && index < widget.rating) {
          iconData = Icons.star_half;
        } else {
          iconData = Icons.star;
        }
        return Icon(
          iconData,
          size: widget.starSize,
          color: widget.color,
        );
      }),
    );
  }
}
