import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:developer';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class riview_write extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
            child: Text('리뷰작성',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ))),
      ),
      body: Center(child: Column(
        children: [
          RatingBar(
            initialRating: 0,
            minRating: 0,
            maxRating: 5,
            allowHalfRating: true,
            itemSize: 30.0,
            ratingWidget: RatingWidget(
              full: const Icon(Icons.star, color: Colors.blueAccent),
              half: const Icon(Icons.star_half, color: Colors.blueAccent),
              empty: const Icon(Icons.star_border, color: Colors.blueAccent),
            ),
            onRatingUpdate: (rating) {
              // Rating is updated
              log('rating update to: $rating');
            },
          ),
        ],
      ))
    );
  }
}
