import 'package:black_tortoise/backend/api.dart';
import 'package:black_tortoise/models/theme.dart';
import 'package:black_tortoise/routes/content.dart';
import 'package:dotenv/dotenv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentTabWidget extends StatelessWidget {
  final ApiResult info;

  ContentTabWidget({required this.info});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
      child: Consumer<ThemeModel>(builder: (context, model, child) {
        return Ink(
          height: 200,
          decoration: BoxDecoration(
            color: model.secondaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () => Navigator.of(context).push(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return ContentRoute(
                    heading: info.title,
                  );
                },
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  const begin = 0.0;
                  const end = 1.0;
                  const curve = Curves.ease;
                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  return ScaleTransition(
                    // scale: animation.drive(tween),
                    scale: animation.drive(tween),
                    child: child,
                  );
                },
              ),
            ),
            child: TabContents(info),
          ),
        );
      }),
    );
  }
}

class TabContents extends StatelessWidget {
  final ApiResult info;

  TabContents(this.info);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            width: 130,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500${info.posterImage}',
                errorBuilder: (context, error, stackTrace) => Center(
                  child: Icon(Icons.error_outline, size: 100),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      info.title,
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        info.desc,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
