import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final onTap;
  final String title, author,image;

  const PostContainer({Key key, this.onTap, this.title, this.author, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9.0),
      child: ListTile(
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(9.0),
          child: Image.network("$image"),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "$title",
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height: 5),
            Text("$author",style: Theme.of(context).textTheme.body2,),
          ],
        ),
      ),
    );
  }
}
