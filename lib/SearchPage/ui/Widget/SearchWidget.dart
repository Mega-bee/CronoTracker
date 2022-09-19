import 'package:flutter/material.dart';
class SearchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText,
  }) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}
class _SearchWidgetState extends State<SearchWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final styleHint = TextStyle(color: Colors.grey);
    final styleActive = TextStyle(color: Colors.black);
    final style = widget.text.isEmpty ? styleHint : styleActive;
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Theme.of(context).primaryColor)),
        filled: true,
        fillColor: Color(0xFFF4F4F4),
        // suffixIcon: const ImageIcon(
        //   AssetImage("assets/images/down,-filter,-list,-sort.png"),
        //   color: Color.fromRGBO(18, 108, 242, 1),
        // ),
        hintText: widget.hintText,
        hintStyle: style,
        prefixIcon: IconButton(
            icon: Icon(Icons.search,color: Colors.black,),
            onPressed: () {}
        ),
        suffixIcon: widget.text.isNotEmpty
            ? GestureDetector(
          child: Icon(Icons.close, color: Colors.black),
          onTap: () {
            controller.clear();
            widget.onChanged('');
            FocusScope.of(context).requestFocus(FocusNode());
          },
        )
            : null,
      ),
      cursorColor: Colors.purple,
      style: style,
      onChanged:widget.onChanged,
    );
  }
}
