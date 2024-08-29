import 'package:flutter/material.dart';
import 'package:tabadol_app/core/constants/colors_manager.dart';
import 'package:tabadol_app/core/constants/styles_manager.dart';
import 'package:tabadol_app/pages/login_page.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  Set selectedTime = {'شهر'};
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: ColorsManager.offGreenColor,
      body: Stack(
        children: [
          Positioned(
            top: 57,
            left: 11,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                shadows: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.35),
                      offset: const Offset(2, 2),
                      blurRadius: 4)
                ],
                size: 40,
                color: ColorsManager.appIconColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight / 1.35,
              decoration: const BoxDecoration(
                color: ColorsManager.skinColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 170,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 42, left: 62),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'متاح',
                          style: StylesManager.getJawadtautRegularStyle(
                            fontSize: 35,
                            color: ColorsManager.greenColor2,
                          ),
                        ),
                        Text(
                          'قواعد جارتين',
                          style: StylesManager.getJawadtautRegularStyle(
                            fontSize: 35,
                            color: ColorsManager.dirtyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 6,
                    thickness: 1,
                    indent: 36,
                    endIndent: 34,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 42),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'النسخ المتاحة',
                          style: StylesManager.getJawadtautRegularStyle(
                            fontSize: 28,
                            color: ColorsManager.dirtyColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                      Image.asset('assets/images/png/book_found.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 32.29,
                  ),
                  AppButton(
                    screenWidth: screenWidth,
                    title: 'شراء الكتاب',
                    onPressed: () {},
                    backgroundColor: ColorsManager.orangeColor,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  AppButton(
                    screenWidth: screenWidth,
                    title: 'استئجار الكتاب',
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: ColorsManager.yellowColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (context, setState) {
                            return SizedBox(
                              width: double.infinity,
                              height: 380,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'مدة الإستئجار',
                                          style: StylesManager
                                              .getJawadtautRegularStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 26,
                                    ),
                                    SegmentedButton(
                                      style: SegmentedButton.styleFrom(
                                        side: BorderSide.none,
                                        elevation: 10,
                                        backgroundColor: Colors.white,
                                        selectedBackgroundColor: const Color(
                                          0xffa9a9a9,
                                        ),
                                        shadowColor: Colors.black.withOpacity(
                                          0.35,
                                        ),
                                      ),
                                      showSelectedIcon: false,
                                      segments: [
                                        ButtonSegment(
                                          label: Text(
                                            'شهر',
                                            style: StylesManager
                                                .getJawadtautRegularStyle(
                                              fontSize: 30,
                                              color: ColorsManager.dirtyColor,
                                            ),
                                          ),
                                          value: 'شهر',
                                        ),
                                        ButtonSegment(
                                          value: 'أسبوعين',
                                          label: Text(
                                            'أسبوعين',
                                            style: StylesManager
                                                .getJawadtautRegularStyle(
                                              fontSize: 30,
                                              color: ColorsManager.dirtyColor,
                                            ),
                                          ),
                                        ),
                                        ButtonSegment(
                                          value: 'أسبوع',
                                          label: Text(
                                            'أسبوع',
                                            style: StylesManager
                                                .getJawadtautRegularStyle(
                                              fontSize: 30,
                                              color: ColorsManager.dirtyColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                      selected: selectedTime,
                                      onSelectionChanged: (value) {
                                        setState(() {
                                          selectedTime = value;
                                        });
                                      },
                                    ),
                                    const SizedBox(
                                      height: 19,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'سعر التأجير',
                                          style: StylesManager
                                              .getJawadtautRegularStyle(
                                            fontSize: 35,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '20,000',
                                      style: StylesManager
                                          .getJawadtautRegularStyle(
                                        fontSize: 70,
                                        color: ColorsManager.priceColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    AppButton(
                                      screenWidth: screenWidth,
                                      title: 'استئجار الكتاب',
                                      onPressed: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                              child: Container(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      '! تم حجز الكتاب بنجاح',
                                                      style: StylesManager
                                                          .getNosiferCapsBoldStyle(
                                                        fontSize: 25,
                                                        color: ColorsManager
                                                            .yellowColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      'يرجى استلامه خلال ساعات الدوام',
                                                      style: StylesManager
                                                          .getInterRegularStyle(
                                                        fontSize: 18,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Text(
                                                      '11:00 إلى 3:00',
                                                      style: StylesManager
                                                          .getNosiferCapsBoldStyle(
                                                        fontSize: 25,
                                                        color: ColorsManager
                                                            .yellowColor,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 42.25,
                                                    ),
                                                    Container(
                                                      child: Text(''),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      backgroundColor: ColorsManager.dirtyColor,
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                      );
                    },
                    backgroundColor: ColorsManager.yellowColor,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  AppButton(
                    screenWidth: screenWidth,
                    title: 'اعارة الكتب',
                    onPressed: () {},
                    backgroundColor: ColorsManager.greenColor,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 61,
            left: 94,
            child: Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.35),
                    offset: const Offset(6, 6),
                    blurRadius: 10,
                    spreadRadius: 6,
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
                  'assets/images/png/book2.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
