// Create a ListView in which there are 10 children refer to the below image for the child of ListView.
// The given image must be the child of the Listview. In the

import 'package:flutter/material.dart';

class Assignment43 extends StatelessWidget {
  const Assignment43({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return Container(
            margin: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/images/core2web.jpeg",
                    height: 50,
                    width: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 7.5,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 90,
                        margin: const EdgeInsets.all(2.5),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Core2web"),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        margin: const EdgeInsets.all(2.5),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Biencaps"),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        margin: const EdgeInsets.all(2.5),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Incubators"),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                  ),
                  child: const Icon(Icons.check),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
