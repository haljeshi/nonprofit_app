import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
import 'package:oscharity/models/goal.dart';
import 'package:oscharity/screens/goal_details.dart';

class GoalCard extends StatelessWidget {
  final Goal goal;

  GoalCard({@required this.goal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image(
                image: AssetImage(goal.imageMain),
                height: 300,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                goal.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                goal.shortDesc,
                style: TextStyle(
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: NiceButton(
                    elevation: 5,
                    radius: 20,
                    text: "المزيد",
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                    background: Colors.blueGrey,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GoalDetails(goal: goal,)));
                    },
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: NiceButton(
                    elevation: 5,
                    radius: 20,
                    text: "تبرع",
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                    background: Colors.green,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}