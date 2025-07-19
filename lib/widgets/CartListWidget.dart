import 'package:flutter/material.dart';

class Cartlistwidget extends StatefulWidget {
  const Cartlistwidget({super.key});

  @override
  State<Cartlistwidget> createState() => _CartlistwidgetState();
}

class _CartlistwidgetState extends State<Cartlistwidget> {
  Color Selectcolors = Colors.black;
  List<Color> colors = [Colors.pink, Colors.black, Colors.blue, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 197, 196, 196))),
        height: 150,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/card_images.PNG",
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Most Beautiful Good Quality",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rodeo Medium ostrich-effect leat",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Wrap(
                        children: [
                          Text(
                            "Color :",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: colors.map((color) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    Selectcolors = color;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: 4),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: color,
                                    child: Visibility(
                                        visible: Selectcolors == color,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              );
                            }).toList(),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
