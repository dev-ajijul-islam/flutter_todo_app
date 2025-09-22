import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InProgressCard extends StatelessWidget {
  final Widget icon;
  final String projectType, title;
  final double progress;
  final Color progressColor;
  final Color color;

  const InProgressCard({
    super.key,
    required this.icon,
    required this.projectType,
    required this.progress,
    required this.title,
    required this.color,
    required this.progressColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 140,
      height: 190,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    projectType,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: icon,
                  ),
                ],
              ),
              const SizedBox(height: 10),
               Text(
                title,
                style: TextStyle(
                  height: 1.1,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 3000,
                lineHeight: 13.0,
                percent: progress,
                barRadius: const Radius.circular(30),
                backgroundColor: Colors.white,
                progressColor: progressColor,
                alignment: MainAxisAlignment.start,
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
