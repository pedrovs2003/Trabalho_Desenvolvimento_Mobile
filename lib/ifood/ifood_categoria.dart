import 'package:flutter/material.dart';

Row categoria(BuildContext context, String imagem1, String imagem2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              height: 100,
              width: 235,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  imagem1,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
              width: 15,
            ),
            Expanded(
              child: Container(
                height: 100,
                width: 235,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imagem2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 115,
        width: 15,
      ),
    ],
  );
}
