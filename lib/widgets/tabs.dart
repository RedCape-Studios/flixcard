import 'package:black_tortoise/models/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContentTabWidget extends StatelessWidget {
  final StatelessWidget child;

  ContentTabWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder {
        return Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: Ink(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () => print('hello'),
              child: child,
            ),
          ),
        );
      }
    );
  }
}
