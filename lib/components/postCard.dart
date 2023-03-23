import 'package:flutter/material.dart';

import '../data.dart';

class PostCard extends StatefulWidget {
  Post p;

  PostCard({p}) : this.p = p;

  State<PostCard> createState() => _PostCardState(p: p);
}

class _PostCardState extends State<PostCard> {
  Post p;
  bool tapped = false;

  _PostCardState({p}) : this.p = p;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.all(5.0),
        child: GestureDetector(
            onTap: () => setState(() {
                  tapped = !tapped;
                }),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    p.title,
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Image.asset(p.image),
                  )
                ],
              ),
              Container(
                  height: tapped ? 100 : 0,
                  child: Text(
                    p.description,
                    style: TextStyle(color: Colors.blue),
                  ))
            ])));
  }
}
