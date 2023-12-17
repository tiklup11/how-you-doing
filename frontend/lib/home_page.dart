import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/widgets/conversation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

const List<String> tabNames = <String>[
  'Web 3D',
  'Gym',
  'Sql',
  'CSS',
  'ML',
];

const List<IconData> icons = <IconData>[
  CupertinoIcons.view_3d,
  FontAwesomeIcons.running,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
  FontAwesomeIcons.accessibleIcon,
];

class _MyHomePageState extends State<MyHomePage> {
  int screen = 0;
  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
      child: CupertinoPageScaffold(
        child: Column(children: [
          CupertinoNavigationBar(
              leading: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: const Icon(CupertinoIcons.settings),
              ),
              middle: const Text("Web 3d"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Icon(CupertinoIcons.back),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Icon(CupertinoIcons.forward),
                  ),
                ],
              )),
          Expanded(child: Align(child: Container(child: const Conversation()))),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 46,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CupertinoSlidingSegmentedControl(
                    padding: EdgeInsets.zero,
                    children: {
                      0: tabWidget("Web 3d", CupertinoIcons.view_3d),
                      1: tabWidget("Gym", FontAwesomeIcons.running),
                      2: tabWidget("CSS", FontAwesomeIcons.borderStyle),
                      3: tabWidget("Sql", FontAwesomeIcons.s),
                      4: tabWidget("Bug Bounty", FontAwesomeIcons.bug),
                      5: tabWidget("Netwrking", FontAwesomeIcons.networkWired),
                      6: tabWidget(
                          "Project 1337", FontAwesomeIcons.projectDiagram),
                      7: tabWidget("DDD", FontAwesomeIcons.d)
                    },
                    groupValue: _sliding,
                    onValueChanged: (int? newVal) {
                      setState(() {
                        _sliding = newVal;
                      });
                    },
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  tabWidget(String text, IconData idata) {
    return Column(
      children: [
        Icon(idata),
        Text(text),
      ],
    );
  }
}
