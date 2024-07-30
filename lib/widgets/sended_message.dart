import 'package:flutter/material.dart';

class SendedMessage extends StatelessWidget {
  const SendedMessage({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child:  Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 5,
              height: 60,
            ),
            const CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/yashu img.jpg'),
            ),
          ],
        ),
      ],
    );
  }
}
