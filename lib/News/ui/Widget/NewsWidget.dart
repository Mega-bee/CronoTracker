import 'package:cronotracker/News/model/NewsModel.dart';
import 'package:flutter/material.dart';
class NewsCard extends StatelessWidget {
  final NewsModel newsModel;
  NewsCard({Key? key, required this.newsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            children: [
              Column(
                children: [
                  Text(newsModel.text.toString()),
                  Text(newsModel.date.toString()),
                ],
              ),
              Container(
                child: Image.asset(newsModel.image.toString()),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
