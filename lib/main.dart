import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Zomato(),
    );
  }
}

class Zomato extends StatefulWidget {
  const Zomato({super.key});

  @override
  State<Zomato> createState() => _ZomatoState();
}

class _ZomatoState extends State<Zomato> {
  int page = 1;
  int count = 0;
  int count1 = 0;
  int item = 179;
  @override
  Widget build(BuildContext context) {
    if (page == 1) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 350,
                        height: 70,
                        // decoration:
                        //     BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Icon(
                                  Icons.location_on,
                                  size: 40,
                                  color: Colors.red,
                                )),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Narhe, Pune Division,Maharashtra",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "8 minutes",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 239, 183, 179),
                                    borderRadius: BorderRadius.circular(25)),
                                alignment: Alignment.center,
                                child: const Text("D",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: const Offset(0, 2), // Shadow offset (x, y)
                          ),
                        ],
                      ),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 244, 17, 17),
                            ),
                            hintText: "Search ",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(232, 255, 255, 255),
                                )),
                            suffixIcon: const Icon(
                              Icons.mic,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "WHAT'S ON YOUR MIND",
                        style: TextStyle(
                          color: Color.fromARGB(255, 184, 183, 183),
                        ),
                      ),
                      Container(
                        width: 100, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 370,
                    height: 280,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            //  decoration: BoxDecoration(
                            //                 border: Border.all(color: Colors.black)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/rC2DNkVBNCdmNQh9dNowUIrH6P-CCUlxNtmQVzOwxDE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA2LzEyLzMyLzY3/LzM2MF9GXzYxMjMy/NjcxNl9oOE1oOVBv/RzRLYXFlb001WThO/R2I4WWJOak9qTUlY/ei5qcGc",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Biryani"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://img.freepik.com/free-photo/fried-rice-with-crab-meat-white-plate_74190-2589.jpg?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Fried Rice"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/rZK6UvgRTZ18u3QaGTpd-UWO3G3GTRVSTbNO7AkcqNI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by90YXN0eS1waXp6/YV8xMjU4MzA2LTI3/NjguanBnP3NpemU9/NjI2JmV4dD1qcGc",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Pizza"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/STAsWyRgpp__MKVB2dJmKla2zcWlUiTUmOEORvQJ63I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzA1LzE1LzUz/LzM2MF9GXzcwNTE1/NTM4Ml9RS3pMSGJO/ZWxUbE5MRE4yOGFh/RUdBY01rbHI1YXJ3/VS5qcGc",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Thali"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: GestureDetector(
                                        onTap: () {
                                          page = 2;
                                          setState(() {});
                                        },
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.network(
                                              "https://imgs.search.brave.com/jRBR60nUOUEVq40PTc4tpACAWKDADi8nOcYB4TQACHo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTU3/Njk2MjM1L3Bob3Rv/L3NpbXBsZS1tZWF0/LWJ1cmdlci1pc29s/YXRlZC1vbi13aGl0/ZS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9enpGSzVDaE1G/eTBaVjhqVkpSZFBI/azltdXc3ZEduTG5L/UHZjOGl0SWRQWT0",
                                              // fit: BoxFit.cover,
                                            ))),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Burger King"),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/3qQbMaPVo8x8iEfUdEL7uDEbfO6wo-dV1vw7LKxiiws/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTQw/NDY1Njg4L3Bob3Rv/L3ZhbmlsbGEtaWNl/LWNyZWFtLWNvbmUu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PU5XR1JaaWExMFJF/M25FVmJ3VU11b3dK/RmMtTlhoWTJlWENM/SnFfY3Y4R3M9",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Ice Cream"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/qHV-a8LGncKfkF8CY5NVZZCpNtnIA_7evcb99Wv5mMs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY1/ODI0MTc3L3Bob3Rv/L3dvbWFucy1oYW5k/LXVzZXMtY2hvcHN0/aWNrcy10by1zZXJ2/ZS10aGFpLWNoaWNr/ZW4tbm9vZGxlLWRp/c2guanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPVI5MHRGc0N4/Sk92aUpaZENjaFR4/NUx4UDQ0MWFtNEhP/bVdJYVV1dmE1SUE9",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Noodles"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/DmQxJh7if025AyRqeOFFyk8BELToyTURqNxrm1tAHtk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE1/NzI5MzA1My9waG90/by9wYW5lZXItY3Vy/cnkuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPVdSeFVWNzFk/WFpKVDVBTEpFRDhi/NlVlTkpqaDkyOTQ1/Q3EzX1B4QURqa0k9",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Paneer"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://img.freepik.com/free-photo/top-view-composition-different-pakistan-goodies_23-2148821564.jpg?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("North Indian"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/6KdOR_sO9SouW-YuS6zi7MBlY2e4B0gbu1yJ3MTB5Tw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA0LzE5LzA0Lzk0/LzM2MF9GXzQxOTA0/OTQxNl83NmljRHFR/ZkFXUTJrd0s4azZp/QWo0Y1hMVUFaSUND/Ri5qcGc",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Idli"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 100, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "All RESTAURANTS",
                        style: TextStyle(
                          color: Color.fromARGB(255, 184, 183, 183),
                        ),
                      ),
                      Container(
                        width: 100, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 185, 183, 183)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          children: [
                            Icon(Icons.sort),
                            Text("Sort"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 125,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 185, 183, 183)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.bolt_sharp,
                              color: Colors.green,
                            ),
                            Text("Near and Fast"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 125,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 185, 183, 183)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              alignment: Alignment.center,
                              child: const Text(
                                "New",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text("Schedule")
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "1398 restaurants delivering to you",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                       SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                             Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Image.network(
                              "https://imgs.search.brave.com/STAsWyRgpp__MKVB2dJmKla2zcWlUiTUmOEORvQJ63I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzA1LzE1LzUz/LzM2MF9GXzcwNTE1/NTM4Ml9RS3pMSGJO/ZWxUbE5MRE4yOGFh/RUdBY01rbHI1YXJ3/VS5qcGc"),
                        ),
                         Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Image.network(
                              "https://imgs.search.brave.com/S0imb0ewYQb6qIREOHuC9Tgb99jqygXRofVEq_pQmdw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDk2/MjAyNTUxL3Bob3Rv/L21pc2FsLXBhdi5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/b3lSdmo4MEVOekJS/REJidkJuLXc0TE1F/am5vRTJfX2xyLU1Z/c3ZHQzA1OD0",
                              fit: BoxFit.cover,
                              ),
                            
                        ),
                         Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Image.network(
                              "https://imgs.search.brave.com/itUSrxSMWytM7mZi1TLL7-duH3PU8TvuxTvpLkaiaww/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9pbmRpYW4tbWlu/aS1tZWFsLXBhcmNl/bC1wbGF0dGVyLWNv/bWJvLXRoYWxpLXdp/dGgtcmFqbWEtbWFz/YWxhLXJvdGktZGFs/LXRhZGthLWplZXJh/LXJpY2Utc2FsYWRf/NDY2Njg5LTg3MzE2/LmpwZw",
                              fit: BoxFit.cover,
                              ),
                            
                        ),
                          ],
                        )
                       ),
                        Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "25 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Siddhanath Pure Veg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 33, 108, 36),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.0",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Pure Veg . North Indian . \u20B9259 for one ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Extra 15% OFF",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(
                                            255, 108, 107, 107))),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("40% OFF up to \u20B980",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 108, 107, 107)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/G1Kg4SmaJiffPvstP5sEKc85CUqX_zY3LUvcSXi_Ff0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzc1LzA4LzMx/LzM2MF9GXzE3NTA4/MzExM19IdjgxUEZs/OFhVUU8yTWZlbDhO/d2ZrZklPZk9xUEU3/Vy5qcGc",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "27 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Hotel Murli Pure Veg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 26, 96, 29),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Pure Veg . North Indian . \u20B9259 for one ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Extra 15% OFF",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(
                                            255, 108, 107, 107))),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("40% OFF up to \u20B980",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 108, 107, 107)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/Zy6WZWDaeNPdYbhSYUjnGbIrLBg4pDzu7PjsyJH9VqA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAzLzEyLzEzLzg2/LzM2MF9GXzMxMjEz/ODY1Nl9FNTVCZ1Ft/R1c2NEVrZG1rVkNU/YmlQZk5admtUNVRj/QS5qcGc",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    size: 15,
                                    color: Color.fromARGB(255, 255, 152, 7),
                                  ),
                                  Text(
                                    " 48 mins . 4 kam",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 65, 63, 63)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "The Pizzaiolo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.7",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Sandwich . Pizza . \u20B9259 for one ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Extra 10% OFF",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromARGB(
                                            255, 108, 107, 107))),
                                const SizedBox(
                                  width: 20,
                                ),
                                // Container(
                                //   width: 20,
                                //   height: 20,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(15),

                                //   ),
                                //   child: ClipRRect(
                                //       borderRadius: BorderRadius.circular(15),
                                //       child: Image.network(
                                //           "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                // ),
                                // SizedBox(
                                //   width: 5,
                                // ),
                                // Text("40% OFF up to \u20B980",
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         color: const Color.fromARGB(
                                //             255, 108, 107, 107)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/3biGpcbcoBDXBevnQAAxSCpebbuWZus_lb4kdI8j1os/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9ycC1t/ZWRpYS5mYWFzb3Mu/aW8vY2F0YWxvZy9p/bWFnZXMvV0VGS1hN/MktHTy5qcGVn",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "25 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Behrous Biryani",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "3.9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Biryani . Kebab . \u20B9400 for one ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                                // Container(
                                //   width: 20,
                                //   height: 20,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(15),
                                //   ),
                                //   child: ClipRRect(
                                //       borderRadius: BorderRadius.circular(15),
                                //       child: Image.network(
                                //           "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                // ),
                                // SizedBox(
                                //   width: 5,
                                // ),
                                // Text("Extra 30% OFF",
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         color: const Color.fromARGB(
                                //             255, 108, 107, 107))),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("40% OFF up to \u20B980",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 108, 107, 107)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/h12SLl56l7uctsFTj5BFysI1sFanANBQYCfRHHmtfmA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzY2Lzg0LzMx/LzM2MF9GXzc2Njg0/MzEzOF85TUlnc043/eFdmNzRrTHlacFJG/SEhENklPMFppR29t/cS5qcGc",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(13)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "25 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Shreeji Pure Veg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "3.9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Pure Veg . North Indian . \u20B9259 for one ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                                // Container(
                                //   width: 20,
                                //   height: 20,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(15),
                                //   ),
                                //   child: ClipRRect(
                                //       borderRadius: BorderRadius.circular(15),
                                //       child: Image.network(
                                //           "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                // ),
                                // SizedBox(
                                //   width: 5,
                                // ),
                                // Text("Extra 15% OFF",
                                //     style: TextStyle(
                                //         fontSize: 12,
                                //         color: const Color.fromARGB(
                                //             255, 108, 107, 107))),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                    "Falt \u20B9200 off above \u20B9200 for one ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 108, 107, 107)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50,),
                ],
              ),
            ),
          ));
    } else if (page == 2) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 350,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color:
                                Colors.black.withOpacity(0.2), // Shadow color
                            spreadRadius: 0.11, // Spread radius
                            blurRadius: 4, // Blur radius
                            offset: const Offset(0, 2), // Shadow offset (x, y)
                          ),
                        ],
                      ),
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon:GestureDetector(
                              onTap: (){
                                setState(() {
                                  page = 1;
                                });
                              },
                              child: const Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 244, 17, 17),
                            )
                            ),
                            hintText: "Burger ",
                            hintStyle: const TextStyle(
                              color: Colors.black,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(232, 255, 255, 255),
                                )),
                            suffixIcon: const Icon(
                              Icons.cancel,
                              color: Colors.red,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Colors.red,
                            width: 2.0,
                          )),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Restaurants",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Text(
                        "Dishes",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 370,
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            //  decoration: BoxDecoration(
                            //                 border: Border.all(color: Colors.black)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/ejfZbV2JVEDALhA4MGsLn5LYX6U38YPpCjOzUV7bPeI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTgy/NzQ0OTQzL3Bob3Rv/L2J1cmdlci5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cGky/MElpZVhmOFVOazZT/ZUp5LWNIeHViYVZE/N0w1Um53MmkwUW84/dk55TT0",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                      color: Colors.red,
                                      width: 3.0,
                                    )),
                                  ),
                                  child: const Text("Burger"),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/8aVBCeln-OGMIUi8Gyfp2z8wDAxrUyXgoNcvrP0g5ig/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY2/NTQzMDE5L3Bob3Rv/L3ZlZ2dpZS1idXJn/ZXIuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPUtWdUN4TGdm/WTVsYjU5VEJpRW9a/b29qOVVoUk1TSnRv/VVhIOGR6a1A0Qnc9",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Veg"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: GestureDetector(
                                        onTap: () {
                                          count = 1;
                                          setState(() {});
                                        },
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            child: Image.network(
                                              "https://imgs.search.brave.com/jRBR60nUOUEVq40PTc4tpACAWKDADi8nOcYB4TQACHo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTU3/Njk2MjM1L3Bob3Rv/L3NpbXBsZS1tZWF0/LWJ1cmdlci1pc29s/YXRlZC1vbi13aGl0/ZS5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9enpGSzVDaE1G/eTBaVjhqVkpSZFBI/azltdXc3ZEduTG5L/UHZjOGl0SWRQWT0",
                                              // fit: BoxFit.cover,
                                            ))),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Aloo Tikki"),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/uf9it0nGqNDtlEFDCiS4MmSFzcegJ-lPeJG_q_pGwgI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE1/MDQyNjg3L3Bob3Rv/L2hhbWJ1cmdlci1v/dmVyLXdoaXRlLWJh/Y2tncm91bmQuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPWlE/T0JvVXlBLWRZWTBI/RjVobUE4Nkw0M19Z/eUNBb2k3NUxLX2FR/Qkk4LUk9",
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Panner"),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 110,
                            height: 300,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          "https://imgs.search.brave.com/yZ-tLAAh_akJCYWEam_EFHtIXluW53FGX9V40p-qBBA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDcx/NDU2MDYxL3Bob3Rv/L2hhbWJ1cmdlci5q/cGc_cz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/SjJEV2R4TU51M1A5/NkJEQ2J1TWRJM0R1/TG8zMjRzNEJBaVZD/dXExUDQzZz0",
                                          // fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text("Corn"),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 1, 1, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          children: [
                            Icon(Icons.sort),
                            Text("Sort"),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 125,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 185, 183, 183)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.bolt_sharp,
                              color: Colors.green,
                            ),
                            Text("Near and Fast"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(255, 185, 183, 183)),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Pure Veg")
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 30, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "All RESTAURANTS  DELIVERING BURGER",
                        style: TextStyle(
                          color: Color.fromARGB(255, 184, 183, 183),
                        ),
                      ),
                      Container(
                        width: 20, // Adjust the width of the underline
                        height: 2, // Height of the underline (thickness)
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Color.fromARGB(
                                  255, 225, 219, 219), // Color of the underline
                              width: 1.0, // Thickness of the underline
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 350,
                                height: 200,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(13)),
                                child: GestureDetector(
                                  onTap: (){
                                    page = 3;
                                    setState(() {
                                      
                                    });
                                  },
                                  child:Image.network(
                                    "https://imgs.search.brave.com/qI2oBG8LWwM1eQZG5eRVCD2fkPw7jS-ejLrI2WJad2g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/Zm9vZGJlYXN0LmNv/bS93cC1jb250ZW50/L3RoZW1lcy9mb29k/YmVhc3QvYXNzZXRz/L2ltYWdlcy9idXJn/ZXItYWxsLnBuZw"),
                              )),
                              Container(
                                width: 350,
                                height: 200,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(13)),
                                child: Image.network(
                                    "https://imgs.search.brave.com/HI8twDaQeWepdr7DZBx-n5c1m_BFal_zB2bfuANC66o/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9hcGkvbWVk/aWEvc21hbGwvMTgy/NDE0MzQ2L3N0b2Nr/LXBob3RvLWZyZXNo/LXRhc3R5LWJ1cmdl/cg"),
                              ),
                               Container(
                                width: 350,
                                height: 200,
                                decoration: BoxDecoration(
                                    // border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(13)),
                                child:ClipRRect(
                                  
                                  child:Image.network(
                                    "https://imgs.search.brave.com/-UPcDLNzHiSpszlSzpohQE6PhlpM-QHTeQmvg4v3RL0/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/Y3JlYXRlLnZpc3Rh/LmNvbS9hcGkvbWVk/aWEvc21hbGwvNzgx/OTY1MDIvc3RvY2st/cGhvdG8tZGVsaWNp/b3VzLWhhbWJ1cmdl/cnM"),
                              ),)
                            ],
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(13), // Curve top-left corner
                              bottomRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                           
                            // borderRadius: BorderRadius.circular(13)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "27 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Burger King",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width:180,
                                  ),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 33, 108, 36),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.1",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    " Burger .Fast Food. \u20B9259 for one ",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 63, 62, 62)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(children: [
                               
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("30% OFF up to \u20B9100",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color:
                                            Color.fromARGB(255, 5, 5, 5)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/ZBGrAa9nz7lvWpdkbWOAx4MnobFC5jmk3COD92sqW3s/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTIz/NzUyNzk5L3Bob3Rv/L21jZG9uYWxkcy1m/cmllcy1hbmQtaGFt/YnVyZ2VyLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1CaWwz/U3hJSTFYVzBsSEtf/b05nVDRPRk5ZSXZT/TnQwdjB6TVZBYUgx/a3pzPQ",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(13), // Curve top-left corner
                              bottomRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                           

                            // borderRadius: BorderRadius.circular(13)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Icon(
                                    Icons.bolt_sharp,
                                    size: 15,
                                    color: Color.fromARGB(255, 13, 159, 18),
                                  ),
                                  Text(
                                    "27 mins . 4 kam",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 17, 150, 21)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "McDonald's",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 26, 96, 29),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Burger . Fast Food. \u20B9259 for one ",
                                    style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(children: [
                                const SizedBox(
                                  width: 1,
                                ),
                                
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("40% OFF up to \u20B980",
                                    style: TextStyle(
                                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 310,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(13)),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(13), // Curve top-left corner
                              topRight:
                                  Radius.circular(13), // Curve top-right corner
                            ), // Same radius as the Container for smooth edges
                            child: Image.network(
                              "https://imgs.search.brave.com/HaBaP_R8vsp8JC2SPNYx5sYlBskY7KKR6cFTCQklFoc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzYxLzc4LzY5/LzM2MF9GXzU2MTc4/Njk1MV9JZFFidFIw/YmdhM1J6SVNnb2RH/dklSTUZFQnFtamZj/bi5qcGc",
                              fit: BoxFit
                                  .cover, // Ensures the image covers the entire container area
                            ),
                          ),
                        ),
                        Container(
                          width: 350,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(13), // Curve top-left corner
                              bottomRight:
                                  Radius.circular(13), // Curve top-right corner
                            ),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(
                                    0.1), // Light black (transparent)
                                Colors.black.withOpacity(0.9), // Darker black
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),

                            // borderRadius: BorderRadius.circular(13)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             const SizedBox(height: 10,),
                              Row(
                                children: [
                                  const SizedBox(width: 10,),
                                  const Text(
                                    "Magic Mikes Burger Therapy",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color:   Colors.white,
                                        fontSize: 20),
                                  ),
                                const SizedBox(width: 20,),
                                  Container(
                                    width: 45,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 26, 96, 29),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: const Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "4.9",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "  Pure Veg . North Indian . \u20B9259 for one ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(children: [
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/10785/10785611.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("Extra 15% OFF",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                          "https://cdn-icons-png.freepik.com/256/2100/2100477.png?ga=GA1.1.1810402975.1728422481&semt=ais_hybrid")),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("40% OFF up to \u20B980",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white))
                              ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
    } else if(page == 3){
      return  Scaffold(
          backgroundColor: Colors.white,
                 body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(height: 90,),
                   const SizedBox(width: 20,),
                 GestureDetector(
                      onTap: (){
                        setState(() {
                          page = 2;
                        });
                      },
                      child:const Icon(Icons.arrow_back_ios),
                      
                    ) ,
                  
                ],
              ),
              // const Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                width: 400,
                height: 280,
                child: Image.network(
                  "https://t4.ftcdn.net/jpg/05/61/82/83/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10), // Shift the text to the right using left padding
                child: Row(
                  children: [
                    Image.network("https://i.pinimg.com/736x/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.jpg",
                    width: 20,
                    height: 20,),
                    const SizedBox(width: 10,),
                    const Text(
                      "Whopper Jr Veg+ Crisp Veg.",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 70,),
                    const Icon(Icons.bookmark_border,color:Colors.red,)
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
               Icon(Icons.star,color: Color.fromARGB(255, 221, 59, 5),size: 20,),
               Icon(Icons.star,color: Color.fromARGB(255, 221, 59, 5),size: 20,),
               Icon(Icons.star,color: Color.fromARGB(255, 221, 59, 5),size: 20,),
               Icon(Icons.star,color: Color.fromARGB(255, 221, 59, 5),size: 20,),
               Icon(Icons.star_border,color: Color.fromARGB(255, 1, 1, 1),size: 20,),
               Padding(padding: EdgeInsets.only(left: 10)),
               Text("577 rating",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 103, 101, 101)
               ),)
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                    "Our signature veg whopper in a smaller size + crispy veg patty burger",
                    style: TextStyle(
                      color:Color.fromARGB(255, 85, 83, 83),
                    ),),
              ),
              Row(
                children: [
                  const Padding(padding:EdgeInsets.only(left: 20)),
                      Container(
                        width: 350,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 252, 249, 249),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.only(left: 7),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        
                          children: [
                           
                            const Text("Make it a Meal",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                            const Text("Select up to 1 option",
                            style: TextStyle(
                             color: Color.fromARGB(255, 119, 117, 117),
                            ),),
                            const Padding(padding: EdgeInsets.only(top: 5)),
                            Container(
                              width: 120,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.red,
                            borderRadius: BorderRadius.circular(3)
                              ),
                              alignment: Alignment.center,
                              child: const Text("Most Order",
                              style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                             const Padding(padding: EdgeInsets.only(top: 10)),
                             Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children: [
                                  Image.network("https://i.pinimg.com/736x/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.jpg",
                                  width: 20,
                                  height: 20,),
                                  const Padding(padding: EdgeInsets.only(left: 10)),
                                  const Text("Fries (Reg) + Coke(Save Rs 56)",
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 50),
                                 
                                  const Text("119",
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                   const Padding(padding: EdgeInsets.only(left: 3)),
                                  const Icon(Icons.circle_outlined,color: Colors.red,), 
                              ],
                             ),
                             const Padding(padding: EdgeInsets.only(top: 10)),
                               Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              children: [
                                  Image.network("https://i.pinimg.com/736x/e4/1f/f3/e41ff3b10a26b097602560180fb91a62.jpg",
                                  width: 20,
                                  height: 20,),
                                  const Padding(padding: EdgeInsets.only(left: 10)),
                                  const Text("Fries (M) + Coke(Save Rs 66)",
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                  const SizedBox(width: 60),
                                 
                                  const Text("149",
                                  style: TextStyle(fontWeight: FontWeight.bold),),
                                   const Padding(padding: EdgeInsets.only(left: 3)),
                                  const Icon(Icons.circle,color: Colors.red,), 
                              ],
                             ),
                          ],
                        ),
                      )
                ],
              ),
              const SizedBox(height:50 ),
              Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    Container(
                      width: 150,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.red
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                        onTap: () {
                          if (count >1) {
                            --count;
                            item = item~/count;
                          }
                          setState(() {});
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 25,color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                         const Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("$count")),
                    ),
                     const Padding(padding: EdgeInsets.only(left: 10)),
                    GestureDetector(
                      onTap: () {
                        count++;
                        item=item*count;
                        setState(() {});
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 25,
                            color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                        ]
                       ),
                      ),
                      const SizedBox(width: 10,),
                  Center(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                      page = 4;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Center(
                          child:  Text(
                        "Add item  \u20B9 $item",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                )
                  ],
                ),
             
            ]),
      ),

      );
    }else if(page == 4){
      return  Scaffold(
        backgroundColor: Colors.white,
         appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Burger King",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          // centerTitle: true,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                color: const Color.fromARGB(255, 248, 207, 207),
                height: 1,
              )),
          leading: GestureDetector(
            onTap: (){
              page = 3;
                setState(() {});
            },
            child: const Icon(Icons.arrow_back_ios),
          
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child:Icon(Icons.share_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(74, 243, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    // Image Container
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://t4.ftcdn.net/jpg/05/61/82/83/360_F_561828375_KCtTuNdpQTjHrMqDrcoCpoLaYhLrZQdI.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    // Text Container
                    Container(
                      width: 220,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Highlighted: Center content vertically
                        children: [
                          // Product Name
                          const Text(
                            "whopper jr Veg+ crispy Veg.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines:
                                1, // Highlighted: Limit the product name to 1 line
                            overflow: TextOverflow
                                .ellipsis, // Highlighted: Handle overflow for product name
                          ),
                          // Product Description
                          SizedBox(
                            width: 200, // Adjust width as needed
                            child: const Text(
                              "Our signature veg whopper in crispy veg patty",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 108, 108, 108),
                              ),
                              maxLines:
                                  2, // Highlighted: Limit to 2 lines for the description
                              overflow: TextOverflow
                                  .ellipsis, // Highlighted: Handle overflow for description
                            ),
                          ),
                          // Price and Decrease Button Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Highlighted: Space between text and button
                            children: [
                              // Price
                              const Text(
                                "\u20B9129.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              // Decrease Button
                              GestureDetector(
                                onTap: () {
                                  if (count1 > 1) {
                                    count1--;
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: const Color.fromARGB(75, 210, 207, 207),
                                  )),
                                  alignment: Alignment
                                      .center, // Highlighted: Center the text
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize:
                                          20, // Highlighted: Larger font size for visibility
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                alignment: Alignment.center,
                                child: Text(
                                  "$count1", // Display the current count
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  count1++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: const Color.fromARGB(75, 210, 207, 207),
                                  )),
                                  alignment: Alignment
                                      .center, // Highlighted: Center the text
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize:
                                          20, // Highlighted: Larger font size for visibility
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Container(
                height: 120,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(74, 243, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    // Image Container
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "https://t4.ftcdn.net/jpg/05/74/68/47/360_F_574684775_Vw9D3VkXofqdoeWdPkI6ORTafqA6zhqg.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    // Text Container
                    Container(
                      width: 220,
                      height: 120,
                      decoration: const BoxDecoration(
                         color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the left
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Highlighted: Center content vertically
                        children: [
                          // Product Name
                          const Text(
                            "Veg Pizza",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines:
                                1, // Highlighted: Limit the product name to 1 line
                            overflow: TextOverflow
                                .ellipsis, // Highlighted: Handle overflow for product name
                          ),
                          // Product Description
                          SizedBox(
                            width: 200, // Adjust width as needed
                            child: const Text(
                              "Pan Tossed,Double Cheese Margherita",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 108, 108, 108),
                              ),
                              maxLines:
                                  2, // Highlighted: Limit to 2 lines for the description
                              overflow: TextOverflow
                                  .ellipsis, // Highlighted: Handle overflow for description
                            ),
                          ),
                          // Price and Decrease Button Row
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Highlighted: Space between text and button
                            children: [
                              // Price
                              const Text(
                                "\u20B950.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              // Decrease Button
                              GestureDetector(
                                onTap: () {
                                  if (count > 1) {
                                    count--;
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: const Color.fromARGB(75, 210, 207, 207),
                                  )),
                                  alignment: Alignment
                                      .center, // Highlighted: Center the text
                                  child: const Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize:
                                          20, // Highlighted: Larger font size for visibility
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                alignment: Alignment.center,
                                child: Text(
                                  "$count", // Display the current count
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  count++;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: const Color.fromARGB(75, 210, 207, 207),
                                  )),
                                  alignment: Alignment
                                      .center, // Highlighted: Center the text
                                  child: const Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize:
                                          20, // Highlighted: Larger font size for visibility
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
               
              color: const Color.fromARGB(255, 249, 247, 247),
              borderRadius: BorderRadius.circular(15)),
              child: const Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 5,),
                      Icon(Icons.verified,color: Colors.green,),
                      SizedBox(width: 5,),
                     Text("Iteams starting @\u20B9179 only applied!", style: TextStyle(fontWeight: FontWeight.bold)),
                     Spacer(),
                      Text("-\u20B930.00",
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      
                    ],
                  ),
                   Spacer(),
                   Row(
                    children: [
                      SizedBox(width: 5,),
                      Icon(Icons.percent_rounded,color: Colors.blue,),
                      SizedBox(width: 5,),
                     Text("No restaurant coupons available", style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey)), 
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SizedBox(width: 5,),
                      Icon(Icons.payments_rounded),
                      SizedBox(width: 5,),
                     Text("View all payment coupons", style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromARGB(255, 1, 1, 1))), 
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
             Container(
              child: const Row(
                children: [
                  SizedBox(width: 30,),
                  Icon(Icons.delivery_dining_rounded,color: Colors.red,),
                  SizedBox(width: 5,),
                  Text("Delivery in "),
                  Text("21 mins ",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
             const SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 249, 247, 247),
                borderRadius: BorderRadius.circular(20),
              ),
             
              child: Row(
                children: [
                  
                  Container(
                    height:30,
                    width:30,
                     margin: const EdgeInsets.all(10),
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     ),
                     child:ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQll9l8nU_8W5ogZhua1aX2oFxw8-sjF8YWVw&s"),
                     )
                     ),
                     const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                          Text("Zomato Money",
                          style: TextStyle(
                            fontWeight:FontWeight.bold
                          ),),
                          SizedBox(height: 5,),
                          Text("Single tap payments, Zero failures",
                          style: TextStyle(
                           fontSize: 12
                          ),),
                          Spacer(),
                          
                      ],
                     ),
                     const Spacer(),
                     const Icon(Icons.arrow_right,size: 45,color: Colors.red,)
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  " \u20B9179.00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
           
          ],
        )
      );
    }else{
      return const Scaffold(
          
      );
    }
  }
}




//  Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                      Column(
//                       children: [
                        
                     
//                       ],
//                      ),
//                      Column(
//                       children: [
                         
//                       Padding(
//                         padding: EdgeInsets.only(left: 10),
//                         child: Container(
//                           width: 100,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50)
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(50),
//                             child: Image.network("https://imgs.search.brave.com/cGBh_UDKGcBySVZVt4XVojAS8rcfKq9pq2jktxfxoh8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTc5/MDg1NDk0L3Bob3Rv/L2luZGlhbi1iaXJ5/YW5pLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1WSkFVZml1/YXZGWUI3UFh3aXN2/VWhMcVdGSjIwLTlt/MDg3LWN6VUpwOUZz/PQ",fit: BoxFit.cover,)),
//                         ),
//                       ),
                    
//                       ],
//                      )
//                     ],
//                   ),
