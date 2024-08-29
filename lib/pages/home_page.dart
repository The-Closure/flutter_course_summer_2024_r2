import 'package:flutter/material.dart';
import 'package:tabadol_app/core/constants/colors_manager.dart';
import 'package:tabadol_app/core/constants/strings_manager.dart';
import 'package:tabadol_app/core/constants/styles_manager.dart';

import 'book_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List books = [
    {
      'title': 'book1',
      'imagePath': 'assets/images/png/book1.jpeg',
    },
    {
      'title': 'book2',
      'imagePath': 'assets/images/png/book2.jpeg',
    },
    // {
    //   'title': 'book3',
    //   'imagePath': 'assets/images/png/book3.png',
    // },
    // {
    //   'title': 'book4',
    //   'imagePath': 'assets/images/png/book4.jpeg',
    // },
    // {
    //   'title': 'book5',
    //   'imagePath': 'assets/images/png/book5.png',
    // },
    // {
    //   'title': 'book6',
    //   'imagePath': 'assets/images/png/book6.jpeg',
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsManager.offGreenColor,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          centerTitle: true,
          backgroundColor: ColorsManager.offGreenColor,
          leading: const Icon(
            Icons.menu,
            color: ColorsManager.appIconColor,
          ),
          title: Text(
            StringsManager.homePageHeaderTitle,
            style: StylesManager.getJawadtautRegularStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              alignment: const Alignment(0, -1),
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsManager.brownColor,
              ),
              child: Text(
                'ز',
                style: StylesManager.getJawadtautRegularStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size(0, 60),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 37,
              ),
              child: Card(
                elevation: 10,
                shadowColor: const Color(0xff484848).withOpacity(0.25),
                child: SizedBox(
                  height: 47,
                  child: Center(
                    child: TextField(
                      textAlign: TextAlign.right,
                      cursorColor: Colors.black,
                      cursorWidth: 1,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 10),
                        suffixIcon: const Icon(
                          Icons.search,
                          size: 25,
                          color: ColorsManager.hintTextColor,
                        ),
                        hintText: '..بحث',
                        hintStyle: StylesManager.getJawadtautRegularStyle(
                          fontSize: 25,
                          color: ColorsManager.hintTextColor.withOpacity(0.6),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.only(top: 34),
          // itemCount: (books.length / 2).ceil(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.bottomCenter,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/images/png/book_shelf.png',
                  ),
                ),
              ),
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 155 / 240,
                  crossAxisSpacing: 22,
                  mainAxisExtent: 240,
                  mainAxisSpacing: 79,
                ),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            offset: const Offset(6, 4),
                            blurRadius: 5,
                            spreadRadius: 3,
                          ),
                        ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            15,
                          ),
                        ),
                        child: Image.asset(
                          books[index]['imagePath'],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}

// GridView.builder(
//         padding:
//             const EdgeInsets.only(left: 29, right: 29, top: 34, bottom: 34),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 155 / 240,
//           crossAxisSpacing: 22,
//           mainAxisExtent: 240,
//           mainAxisSpacing: 79,
//         ),
//         itemCount: books.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             decoration: BoxDecoration(
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.25),
//                   offset: const Offset(6, 4),
//                   blurRadius: 5,
//                   spreadRadius: 3,
//                 ),
//               ],
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(
//                   15,
//                 ),
//               ),
//             ),
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(
//                   15,
//                 ),
//               ),
//               child: Image.asset(
//                 books[index]['imagePath'],
//                 width: 155,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           );
//         },
//       ),