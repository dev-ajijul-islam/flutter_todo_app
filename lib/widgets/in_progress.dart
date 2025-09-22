import 'package:flutter/material.dart';
import 'package:practice_flutter/widgets/in_progress_card.dart';

class InProgress extends StatelessWidget {
  const InProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "In Progress ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(width: 5),
              Container(
                width: 30,
                height: 30,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.purple[50],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text("6", textAlign: TextAlign.center),
              ),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InProgressCard(
                  color: Colors.blue.shade50,
                  title: "Grocery shopping app design",
                  icon: Icon(Icons.shopping_bag, color: Colors.pink),
                  progress: 0.7,
                  projectType: "Office project",
                  progressColor: Colors.blue,
                ),
                SizedBox(width: 10),
                InProgressCard(
                  color: Colors.red.shade50,
                  title: "Grocery shopping app design",
                  icon: Icon(Icons.shopping_bag, color: Colors.pink),
                  progress: 0.3,
                  projectType: "Office project",
                  progressColor: Colors.red,
                ),
                SizedBox(width: 10),
                InProgressCard(
                  color: Colors.green.shade50,
                  title: "Grocery shopping app design",
                  icon: Icon(Icons.shopping_bag, color: Colors.pink),
                  progress: 0.5,
                  projectType: "Office project",
                  progressColor: Colors.green,
                ),
                SizedBox(width: 10),
                InProgressCard(
                  color: Colors.yellow.shade50,
                  title: "Grocery shopping app design",
                  icon: Icon(Icons.shopping_bag, color: Colors.pink),
                  progress: 0.95,
                  projectType: "Office project",
                  progressColor: Colors.yellow,
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
