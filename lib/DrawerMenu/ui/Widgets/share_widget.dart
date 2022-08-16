import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class ShareWidget extends StatelessWidget {
  const ShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.share,
        size: 30,
      ),
      title: Text('Share'),
      onTap: () {
        void _onShare(BuildContext context) async {
          final box = context.findRenderObject() as RenderBox?;
          await Share.share(
              "-",
              sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size
          );
        }

        _onShare(context);
        print('shared !');
      },
    );
  }
}
