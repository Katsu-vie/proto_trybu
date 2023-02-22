import 'package:flutter/material.dart';

class MyCards {
  static Widget buildImageTwoCard() => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                InkWell(
                  child: Image.network(
                      'https://github.com/CarmoDaGama/my_images/blob/main/565aba69d74a8a23da867a1558dbc2de.jpg?raw=true',
                      height: 240,
                      fit: BoxFit.cover),
                  onTap: () {},
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    "Card With Splash",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(221, 17, 16, 119),
                        fontSize: 24),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey,
              child: Text(
                'Lizar..............Lizar..............' +
                    'Lizar..............Lizar..............Lizar' +
                    '..............Lizar..............Lizar..............',
                style: TextStyle(fontSize: 16),
                selectionColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text("SHARE")),
                TextButton(onPressed: () {}, child: Text("LEARN MORE")),
              ],
            )
          ],
        ),
      );

  static Widget buildShadowCard(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey,
        elevation: 2,
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Color.fromARGB(109, 125, 146, 173))),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 50,
                    icon: CircleAvatar(
                      radius: 100, //radius is 35.
                      backgroundImage: AssetImage(
                          'assets/user.png'), //AssetImage loads image URL.
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    children: [
                      Text(
                        'Josel Kiesse',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '@emilinabita - conta oficial',
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '21 jan 2023',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '"It is obvious, that a number of brand' +
                        ' new approaches has been tested during' +
                        'the the improvement of the basi',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints.expand(width: 500, height: 1),
                color: Colors.grey,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.heart_broken),
                    iconSize: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mode_comment_outlined),
                    iconSize: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    iconSize: 15,
                  ),
                  SizedBox(
                    width: 136,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.copy),
                    iconSize: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      );

  static Widget buildShadowImageCard(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        shadowColor: Colors.grey,
        elevation: 2,
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Color.fromARGB(109, 125, 146, 173))),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    iconSize: 50,
                    icon: CircleAvatar(
                      radius: 100, //radius is 35.
                      backgroundImage: AssetImage(
                          'assets/user1.jpg'), //AssetImage loads image URL.
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Column(
                    children: [
                      Text(
                        'Wayame Bita',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '@@wayamw2023',
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '21 jan 2023',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    '"It is obvious, that a number of brand' +
                        ' new approaches has been tested during' +
                        'the the improvement of the basi',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),

              //There are init the IMAGE widget
              Image.network(
                  'https://github.com/CarmoDaGama/my_images/blob/main/51yyHdErybL._AC_.jpg?raw=true',
                  height: 240,
                  width: 350,
                  fit: BoxFit.cover),
              //There are finish the IMAGE widget

              Container(
                constraints: BoxConstraints.expand(width: 500, height: 1),
                color: Colors.grey,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.heart_broken),
                    iconSize: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.mode_comment_outlined),
                    iconSize: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    iconSize: 15,
                  ),
                  SizedBox(
                    width: 136,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.copy),
                    iconSize: 15,
                  )
                ],
              ),
            ],
          ),
        ),
      );
}

class ColorFilters {
  static final greyscale = ColorFilter.matrix(<double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);
}

class WordOfTheDayWidget extends StatelessWidget {
  final List<String> splitWords;
  final String type;
  final String definition;
  final String example;

  const WordOfTheDayWidget({
    Key? key,
    required this.splitWords,
    required this.type,
    required this.definition,
    required this.example,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bullet = "\u2022";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Word of the Day",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          splitWords.join(bullet),
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: -1,
              color: Colors.white),
        ),
        const SizedBox(height: 12),
        Text(
          type,
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
        Text(
          definition,
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
        Text(
          example,
          style: TextStyle(color: Colors.white54, fontSize: 20),
        ),
      ],
    );
  }
}
