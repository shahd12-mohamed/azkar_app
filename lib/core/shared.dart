import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget my_text({
  required String T,
  required double siz,
  required FontWeight font,
}) =>
    Text(
      T,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Amiri',
        color: const Color.fromRGBO(0, 0, 0, 1),
        fontSize: siz,
        fontWeight: font,
      ),
    );

Widget defaultButton({
  required double width,
  required Color background,
  final Function()? onpresed,
  required Function function,
  required String text,
  double raduis = 10.0,
  required int height,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          raduis,
        ),
      ),
      child: MaterialButton(
        onPressed: onpresed,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Amiri'),
        ),
      ),
    );

Widget container({
  int counter1 = 0,
  required Function()? onpressd,
  required String tex,
  required String name,
}) =>
    Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        color: Colors.amber,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              tex,
              style: const TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          my_text(T: name, siz: 40, font: FontWeight.bold),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: onpressd,
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.blueGrey),
                  fixedSize: WidgetStateProperty.all<Size>(const Size(20, 60)),
                  shape: WidgetStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(width: 2, color: Colors.black)),
                  )),
              child: const Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
    );

Widget col({
  required String tex,
  required Function()? onpressd,
  required Function()? onpresd,
  required String name,
  required Color cr,
}) =>
    Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: cr,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: my_text(T: name, siz: 25, font: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  tex,
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: onpressd,
            style: ButtonStyle(
                backgroundColor:
                WidgetStateProperty.all<Color>(Colors.purple),
                fixedSize: WidgetStateProperty.all<Size>(const Size(300, 50)),
                shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                )),
            child: const Icon(
              Icons.add,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: onpresd,
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.purple),
                fixedSize: WidgetStateProperty.all<Size>(const Size(300, 50)),
                shape: WidgetStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                )),
            child: const Text('Reset'),
          )
        ],
      ),
    );
