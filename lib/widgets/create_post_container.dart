import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/models/user_model.dart';
import 'package:facebook_ui/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

import 'responsive.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  CreatePostContainer({@required this.currentUser});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: isDesktop ? 5.0 : 0.0,
      ),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
        height: 150.0,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "What'/s on your mind?"),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10.0,
            ),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text("Live"),
                  ),
                  VerticalDivider(
                    width: 10.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text("Library"),
                  ),
                  VerticalDivider(
                    width: 10.0,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    label: Text("Video Call"),
                  ),
                  VerticalDivider(
                    width: 10.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
