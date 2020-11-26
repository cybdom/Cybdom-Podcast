import 'dart:math';

import 'package:cybdom_podcast/global.dart';
import 'package:cybdom_podcast/ui/widgets/my_random_widget.dart';
import 'package:flutter/material.dart';

class FavoritesContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, 'listen'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          children: [
            Positioned.fill(
              top: 5,
              bottom: 30,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(.1),
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Animation in UI Design",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(profilePicture),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "By Cybdom",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              bottom: 5,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Colors.black.withOpacity(.1),
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.blueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
