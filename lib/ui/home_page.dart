import 'package:flutter/material.dart';
import 'package:mytrainingsapp/widgets/traningcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Tranings"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.77,
            color: Colors.grey[300],
            child: ListView.builder(
                itemCount: 20,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, i) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[300],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: TraningCard());
                }),
          )
        ],
      ),
    );
  }
}
