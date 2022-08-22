import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class ShareWidget extends StatelessWidget {
  const ShareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      selectedColor: Colors.white,
      child: ListTile(
        selectedTileColor: Colors.black12,
        selectedColor: Colors.white54,
        minLeadingWidth: 20,
        leading: Icon(Icons.share),
        title: Text("Share"),
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
      ),
    );
  }
}