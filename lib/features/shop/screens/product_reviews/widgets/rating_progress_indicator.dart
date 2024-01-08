
import 'package:flutter/material.dart';
import 'package:sukjunub/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';

class SukjunubOverallProductRating extends StatelessWidget {
    const SukjunubOverallProductRating({
      super.key,
    });
  
    @override
    Widget build(BuildContext context) {
      return Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(
                '4.8',
                style: Theme.of(context).textTheme.displayLarge,
              )),
          const Expanded(
            flex: 7,
            child: Column(
              children: [
                SukjunubRatingProgressIndicator(text: '5', value: 1.0,),
                SukjunubRatingProgressIndicator(text: '4', value: 0.8,),
                SukjunubRatingProgressIndicator(text: '3', value: 0.6,),
                SukjunubRatingProgressIndicator(text: '2', value: 0.4,),
                SukjunubRatingProgressIndicator(text: '1', value: 0.2,),
              ],
            ),
          ),
        ],
      );
    }
  }
  