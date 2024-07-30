import 'package:flutter/material.dart';

class RecivedMessage extends StatelessWidget {
  const RecivedMessage({
    super.key, required this.text,
  });

  final String text;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/yashu img.jpg'),
            ),
            const SizedBox(
              width: 5,
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(40)),
              child:  Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
        const SizedBox(),
            
            
          ],
        ),
      ],
    );
  }
}
