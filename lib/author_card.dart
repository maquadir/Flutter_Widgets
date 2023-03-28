import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'circle_image.dart';
import 'fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({
    super.key,
    required this.authorName,
    required this.title,
    this.imageProvider,
  });

  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {

  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(children: [
          CircleImage(
            imageProvider: widget.imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.headline2,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.headline3,
              )
            ],
          )
        ]),
        IconButton(
          onPressed: () {
            setState(() {
              _isFavorited = !_isFavorited;
            });
          },
          icon: Icon(_isFavorited ? Icons.favorite : Icons.favorite_border),
          iconSize: 30,
          color: Colors.green[400],
        )
      ]),
    );
  }
}
