// ignore_for_file: avoid_unnecessary_containers

import 'package:design_implementation/widgets/choice_option.dart';
import 'package:flutter/material.dart';

import '../sample_data.dart';
import '../widgets/card_list.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: const Color(0xFFFFFFFF),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(Icons.notifications,
                                  color: Colors.black),
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Padding(
                                padding: EdgeInsets.all(5),
                                child:
                                    Icon(Icons.settings, color: Colors.black)))
                      ]),
                ),
                const Text(
                  'City',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.grey),
                ),
                const Text(
                  'San Francisco',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black87,
                  height: 1.0,
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      "<\$220,000",
                      "For SAle",
                      "3-4 Beds",
                      "1000 sqft"
                    ].map((option) => ChoiceOption(text: option)).toList(),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ListView.builder(
                      physics:BouncingScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return CardView(itemData: data[index]);
                      },
                    ),
                  ),
                ),
                //Image.asset('assets/image_2.jpeg'),
                // Image.asset('assets/image_1.jpeg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
