import 'package:black_tortoise/widgets/custom_search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'search',
      child: Scaffold(
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () =>
                          Navigator.popAndPushNamed(context, '/home'),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Flexible(
                    flex: 20,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CustomSearchField(),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
