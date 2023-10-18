import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyBotton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            color: const Color.fromARGB(139, 76, 69, 69),
            borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
