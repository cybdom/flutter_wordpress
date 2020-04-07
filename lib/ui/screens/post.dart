import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wordpress_flutter/models/single_post.dart';

class PostScreen extends StatelessWidget {
  final SinglePost postData;

  const PostScreen({Key key, @required this.postData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, _) => Stack(
            children: <Widget>[
              Positioned.fill(
                bottom: MediaQuery.of(context).size.height * .55,
                child: Image.network(
                  "${postData.featuredImage}",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: DraggableScrollableSheet(
                  initialChildSize: .65,
                  minChildSize: .65,
                  builder: (context, controller) => Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: ListView(
                      controller: controller,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(
                            "${postData.avatarURL}",
                            height: 35,
                            width: 35,
                            fit: BoxFit.cover,
                          ),
                          title: Text(
                            "${postData.authorName}",
                            style: Theme.of(context).textTheme.subtitle,
                          ),
                        ),
                        SizedBox(height: 9),
                        Html(
                          data: "${postData.content}",
                          showImages: true,
                          onLinkTap: (url) async {
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
