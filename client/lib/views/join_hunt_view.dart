import 'package:flutter/material.dart';
import 'package:praxis_afterhours/constants/colors.dart';

class JoinHuntView extends StatelessWidget {
  JoinHuntView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Join A Hunt"),
        backgroundColor: praxisRed,
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'ListTile-Hero',
            child: Material(
             child: ListTile(
              title: const Text("Recuit Mixer"),
              tileColor: praxisGrey,
              onTap: () {}
             )
            )
          ),
          Hero(
            tag: "ListTile-Hero",
            child: Material(
              child: ListTile(
                title: const Text("Friday Employee Drinks"),
                tileColor: praxisGrey,
                onTap: () {}
              )
            )
          ),
          Hero(
            tag: "ListTile-Hero",
            child: Material(
              child: ListTile(
                title: const Text("End of Quarter Party"),
                tileColor: praxisGrey,
                onTap: () {}
              )
            )
          ),
        ]
        // [
        //   // const TextField(),
        //   // const TextField(),
        //   TextButton(
        //     onPressed: () { },
        //     child: const Text("Recruit Mixer"),
        //   ), TextButton(
        //     onPressed: () {},
        //     child: const Text("Friday Employee Drinks"),
        //   )
        // ],
      ),
    );
  }
}