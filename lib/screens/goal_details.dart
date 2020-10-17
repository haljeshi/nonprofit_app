import 'package:flutter/material.dart';
import 'package:oscharity/models/goal.dart';

class GoalDetails extends StatelessWidget {
  final Goal goal;
  GoalDetails({@required this.goal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              floating: true,
              pinned: true,
              snap: true,
              actionsIconTheme: IconThemeData(opacity: 0.0),
              flexibleSpace: Stack(
                children: <Widget>[
                  Positioned.fill(
                      child: Image.asset(
                    goal.imageMain,
                    fit: BoxFit.cover,
                  ))
                ],
              ),
            ),

          ];
        },
        body: Center(
          child: Text("Sample text"),
        ),
      ),
    ));
  }
}
