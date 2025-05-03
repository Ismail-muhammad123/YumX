import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodi/core/constants/colors.dart';

class ChefList extends StatefulWidget {
  final TextEditingController searchController;
  const ChefList({super.key, required this.searchController});

  @override
  State<ChefList> createState() => _ChefListState();
}

class _ChefListState extends State<ChefList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 300,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner2.png"),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(14.0),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Color(secondaryColor),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 6,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Color(secondaryColor),
                            ),
                            const SizedBox(width: 5),
                            // TODO: implement location service
                            const Text("No: 123 kano."),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(backgroundColor),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "What do you want to eat?",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    prefixIcon: const Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(12),
                  ),
                  controller: widget.searchController,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: IconButton(
                icon: const Icon(
                  Icons.tune,
                  size: 30,
                  color: Color(secondaryColor),
                ),
                onPressed: () {},
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14.0),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text("Cuisines"),
                  SizedBox(width: 10),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                    color: Color(secondaryColor),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(14.0),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text("Rrated 4.5+"),
            ),
            Container(
              padding: const EdgeInsets.all(14.0),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text("Promo"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Container(
                height: 100,
                width: double.maxFinite,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/meal.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Chef Name"),
                        const SizedBox(height: 5),
                        const Text("Chef Description"),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.motorcycle,
                              color: Colors.green,
                              size: 15,
                            ),
                            const Text(
                              "N 2000",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(secondaryColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              color: Color(secondaryColor),
                              size: 15,
                            ),
                            const Text(
                              "30 mins . 1km",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(secondaryColor),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.star,
                              color: const Color.fromARGB(255, 255, 131, 29),
                              size: 15,
                            ),
                            const Text(
                              "3.9 . 1400+ ratings",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(secondaryColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
