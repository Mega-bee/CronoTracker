import 'package:flutter/material.dart';
import '../../../AlertMessage/ui/widget/alert_message_card.dart';
class FavBottomSheet extends StatefulWidget {
  const FavBottomSheet({Key? key}) : super(key: key);
  @override
  State<FavBottomSheet> createState() => _FavBottomSheetState();
}
class _FavBottomSheetState extends State<FavBottomSheet> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.24,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              selectedTileColor: Colors.black12,
              selectedColor: Colors.black,
              minLeadingWidth: 20,
              leading: Icon(
                Icons.favorite,
                color: Color(0xFF555555),
              ),
              title: Text(
                "Add",
                style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDeleteDialog(
                        title: 'Confirm',
                        content:
                            'Would you like to add this watch to your favorites ?',
                        yesBtn: () {
                          Navigator.pop(context);
                        },
                        noBtn: () {
                          Navigator.pop(context);
                        },
                      );
                    });
              },
            ),
            ListTile(
              selectedTileColor: Colors.black12,
              selectedColor: Colors.black,
              minLeadingWidth: 20,
              leading: Icon(
                Icons.notification_add,
                color: Color(0xFF555555),
              ),
              title: Text(
                "Notify Me",
                style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDeleteDialog(
                        title: 'Confirm',
                        content:
                            'Would you like to be instantly notified when this watch is listed in the next live action ?',
                        yesBtn: () {
                          Navigator.pop(context);
                        },
                        noBtn: () {
                          Navigator.pop(context);
                        },
                      );
                    });
              },
            ),
            ListTile(
              selectedTileColor: Colors.black12,
              selectedColor: Colors.black,
              minLeadingWidth: 20,
              leading: Icon(
                Icons.open_in_new,
                color: Color(0xFF555555),
              ),
              title: Text(
                "Open Url (Photo)",
                style: TextStyle(
                    color: Color(0xFF555555),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rubik'),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDeleteDialog(
                        title: 'Confirm',
                        content:
                            'Would you like to open URL ?',
                        yesBtn: () {
                          Navigator.pop(context);
                        },
                        noBtn: () {
                          Navigator.pop(context);
                        },
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
