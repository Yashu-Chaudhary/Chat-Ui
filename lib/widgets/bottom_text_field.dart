import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BottomTextField extends StatefulWidget {
  const BottomTextField({
    super.key,
  });

  @override
  State<BottomTextField> createState() => _BottomTextFieldState();
}

TextEditingController controller = TextEditingController();
String text = '';

class _BottomTextFieldState extends State<BottomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
           Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Aa',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                text = controller.text;
                print(text);
              });
            },
            icon: const Icon(
              Icons.send,
              size: 30,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }
}
