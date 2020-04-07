import 'package:flutter/material.dart';

class OverlayedContainer extends StatelessWidget {
  final String title, image, author,authorAvatar;
  final onTap;

  const OverlayedContainer(
      {Key key, this.title, this.image, this.author, this.onTap, this.authorAvatar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 9.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          image: DecorationImage(
            image: NetworkImage(image),
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "$title",
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.white),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.network(
                      "$authorAvatar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  flex: 9,
                  child: Text(
                    "$author",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle
                        .copyWith(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
