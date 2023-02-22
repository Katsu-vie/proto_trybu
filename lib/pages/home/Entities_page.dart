import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class EntitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        children: [
          //Instagram Stories
          Container(
              height: 70,
              child: Center(
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: BorderSide(
                            color: Color.fromARGB(109, 125, 146, 173))),
                    color: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Encontrar seus contactos na Trybu",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    )),
              )),
          //List INSTRUCIONAL...
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Instrucional',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 222,
              ),
              Icon(
                Icons.arrow_forward,
                size: 25,
              )
            ],
          ),

          Expanded(
            child: Card(
                clipBehavior: Clip.antiAlias,
                shadowColor: Colors.grey,
                elevation: 2,
                color: Theme.of(context).colorScheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side:
                        BorderSide(color: Color.fromARGB(109, 125, 146, 173))),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    //Init Row Card
                    buildRowCard(context, AssetImage('assets/user1.jpg'),
                        "Global Seguros", 'Gestora de finanças'),
                    buildWidgetSeparater(),
                    buildRowCard(context, AssetImage('assets/girl.jpg'), "Ruia",
                        'Gestora de Stock'),
                    buildWidgetSeparater(),
                    buildRowCard(context, AssetImage('assets/user3.jpg'),
                        "Gomes José", 'Analista de Stock'),
                    buildWidgetSeparater(),
                    buildRowCard(context, AssetImage('assets/user4.jpg'),
                        "Emilia Rui Gomes Bia", 'Gestora de Stock'),
                    buildWidgetSeparater(),
                    buildRowCardMore(context)
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget buildWidgetSeparater() {
    return Container(
      constraints: BoxConstraints.expand(width: 590, height: 1),
      color: Color.fromARGB(109, 125, 146, 173),
    );
  }

  Widget buildRowCard(BuildContext context, ImageProvider<Object>? img,
      String userName, String userFuncion) {
    return
        //Init Row Card
        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: Theme.of(context).colorScheme.primary,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Row(children: [
                    IconButton(
                      icon: CircleAvatar(
                        radius: 30, //radius is 35.
                        backgroundImage: img, //AssetImage loads image URL.
                      ),
                      onPressed: () {},
                      iconSize: 35,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 4,
                          ),
                        ),
                        Text(
                          userFuncion,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  //side: BorderSide(color: Colors.red)
                                )),
                                backgroundColor: MaterialStateColor.resolveWith(
                                    (states) => Theme.of(context)
                                        .colorScheme
                                        .secondary)),
                            onPressed: () {},
                            child: Text(
                              "Seguir",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 30,
                                  color: Theme.of(context).colorScheme.primary),
                            )),
                      ),
                    )
                  ]),
                ),
              )
            ],
          )),
    );
    //End Row Card
  }

  Widget buildRowCardMore(BuildContext context) {
    return
        //Init Row Card
        Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Row(children: [
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {},
                      iconSize: 25,
                      padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Ver mais',
                        style: TextStyle(
                            wordSpacing: 0,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ButtonStyle(),
                    )
                  ]),
                )
              ],
            )),
      ),
    );
    //End Row Card
  }
}
