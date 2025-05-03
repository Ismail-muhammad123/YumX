import 'package:flutter/material.dart';
import 'package:foodi/core/constants/colors.dart';

class OngoingOrders extends StatefulWidget {
  const OngoingOrders({super.key});

  @override
  State<OngoingOrders> createState() => _OngoingOrdersState();
}

class _OngoingOrdersState extends State<OngoingOrders> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: SizedBox(
            child: Column(
              children: [
                Text("Food"),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    Column(
                      children: [
                        Row(children: [Text("Pizza Hut"), Text("#456789")]),
                        Row(children: [Text("\$21.1"), Text("| 02 items")]),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // TODO imaplement track order btn function
                      },
                      color: Color(secondaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Track Order",
                        style: TextStyle(color: Color(primaryColor)),
                      ),
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () {
                        // TODO imaplement cancel order  function
                      },

                      color: Color(primaryColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Color(secondaryColor)),
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Color(secondaryColor)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
