import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class TraningCard extends StatelessWidget {
  const TraningCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.26,
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.31,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Oct 11 - 13, 2019",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0),
                ),
                Text(
                  "08:30 am - 12:30 pm",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.0),
                ),
                Text(
                  "Convention Hall, greater Des Moines",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          DottedLine(
            direction: Axis.vertical,
            lineLength: MediaQuery.of(context).size.height * 0.23,
            lineThickness: 2.2,
            dashLength: 4.0,
            dashColor: Colors.grey,
            dashGradient: const [Colors.grey, Colors.grey],
            dashRadius: 0.0,
            dashGapLength: 5.0,
            dashGapColor: Colors.transparent,
            dashGapRadius: 0.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.52,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Filling Fast!",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Safe Scrum Master (4.6)",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0),
                ),
                Row(
                  children: [
                    Stack(children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            child: CircleAvatar(
                              radius: 26.0,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 12.0,
                                    child: Image.asset('assets/a.png'),
                                  ),
                                ),
                                radius: 38.0,
                                backgroundImage:
                                    const AssetImage('assets/a.png'),
                              ),
                            ),
                          )),
                    ]),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Keynote Speaker",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Helen Gribble",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.265,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {},
                      child: const Text("Enroll now"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
