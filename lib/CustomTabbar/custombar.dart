// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter/src/widgets/placeholder.dart';

// class CustomTapbar extends StatefulWidget {
//   const CustomTapbar({super.key});

//   @override
//   State<CustomTapbar> createState() => _CustomTapbarState();
// }

// ignore_for_file: prefer_const_constructors

// class _CustomTapbarState extends State<CustomTapbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("Custom Tabbar"),
//         ),
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(25.0),
//             child: Container(
//               height: 250,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.blueAccent[100],
//               ),
//             ),
//           ),
//           Stack(
//             children: [
//               Container(
//                 child: Row(
//                   children: [
//                     InkWell(
//                       onTap: () {},
//                       child: Text("One"),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Text("Two"),
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: Text("One"),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://wedarranger.com/admin/upload/balaji_pht.jpg',
  'https://wedarranger.com/admin/upload/Prakash_Studio.jpg',
  'https://wedarranger.com/admin/upload/Rajesh_pande.jpg',
  'https://wedarranger.com/admin/upload/candid_shutters_Photography.jpg',
];

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({Key? key}) : super(key: key);

  @override
  State<CustomTabbar> createState() => _MainHomeState();
}

class _MainHomeState extends State<CustomTabbar> {
  /// List of Tab Bar Item
  List<String> items = [
    "Home",
    "Explore",
    // "Search",
    // "Feed",
    // "Post",
    // "Activity",
    // "Setting",
    // "Profile",
  ];

  /// List of body icon
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    // Icons.search,
    // Icons.feed,
    // Icons.post_add,
    // Icons.local_activity,
    // Icons.settings,
    // Icons.person
  ];
  int current = 0;

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],

      /// APPBAR
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          "Custom TabBar",
          style: GoogleFonts.laila(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            /// CUSTOM TABBAR
            Container(
              width: double.infinity,
              height: 40,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white70
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                      color: Colors.deepPurpleAccent, width: 0)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[current],
                    size: 20,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[0],
                    style: GoogleFonts.laila(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),

            CarouselSlider(
              items: imgList
                  .map((item) => Row(
                        children: [
                          Container(
                            child: Center(
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: 280,
                              ),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 90,
                            color: Color.fromARGB(255, 220, 192, 142),
                            child: Center(
                              child: Text(
                                " Start Rs. 25000",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          )
                        ],
                      ))
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 4.0,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
