import 'package:flutter/material.dart';

import '../data.dart';

class PostCard extends StatefulWidget {
  Post p;

  PostCard({p}) : this.p = p;

  State<PostCard> createState() => _PostCardState(p: p);
}

class _PostCardState extends State<PostCard> {
  Post p;

  _PostCardState({p}) : this.p = p;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Row(
        children: [Text(p.title)],
      ),
      Row(
        children: [
          Expanded(
            flex: 10,
            child: Image.asset(p.image),
          )
        ],
      )
    ]);
  }
}
