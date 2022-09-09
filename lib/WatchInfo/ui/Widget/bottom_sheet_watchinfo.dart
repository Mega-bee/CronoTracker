import 'package:flutter/material.dart';

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
                onTap: () {},),
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
              onTap: () {},),
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
              onTap: () {},),
          ],
        ),
      ),
    );
  }
}
