import 'package:flutter/material.dart';
import 'package:practice_flutter/custom_shapes/button_clipper.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class BannerSection extends StatelessWidget {
  BannerSection({super.key});

  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 170,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your toady's tasks almost done",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ClipPath(
                  clipper: ButtonClipper(),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "View tasks",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: DashedCircularProgressBar.aspectRatio(
              ltr: false,
              aspectRatio: 1.2, // width ÷ height
              valueNotifier: _valueNotifier,
              progress: 85,
              maxProgress: 100,
              corners: StrokeCap.butt,
              foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              foregroundStrokeWidth: 10,
              backgroundStrokeWidth: 10,
              animation: true,
              child: Center(
                child: ValueListenableBuilder(
                  valueListenable: _valueNotifier,
                  builder: (_, double value, __) => Text(
                    '${value.toInt()}%',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.white24,
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Icon(Icons.more_horiz,color: Colors.white,),
            ),
          )),
        ],
      ),
    );
  }
}
