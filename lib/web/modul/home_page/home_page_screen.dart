import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stack_percentage/stack_percentage.dart';

class HomePageScreenWeb extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final String email = 'hamada.devlop@gmail.com';
  final String test =
      'https://gdj-inr5u0ip5pewom.stackpathdns.com/wp-content/uploads/2012/01/9extremely-creative-photo.jpg';

  final List<LocalData> persons = [
    LocalData(
      name: 'sara ahmed',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story: 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
    ),
    LocalData(
      name: 'Mounir said',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/a/a0/Pierre-Person.jpg',
      message:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      story:
          'https://res.cloudinary.com/grand-canyon-university/image/fetch/w_750,h_564,c_fill,g_faces/https://www.gcu.edu/sites/default/files/2020-09/programming.jpg',
    ),
    LocalData(
      name: 'alien',
      url:
          'https://mlhmvq6amqed.i.optimole.com/HIId8M4.WANK~27a14/w:940/h:788/q:auto/https://hackspirit.com/wp-content/uploads/2021/06/Copy-of-Copy-of-Copy-of-Rustic-Female-Teen-Magazine-Cover-52.jpg',
      message: 'The point of using Lorem Ipsum is that it has a more',
      story:
          'https://st3.depositphotos.com/18340478/36792/i/450/depositphotos_367922774-stock-photo-programmer-girl-works-computer-information.jpg',
    ),
    LocalData(
      name: 'mona',
      url:
          'https://miro.medium.com/max/1200/1*gBQxShAkxBp_YPb14CN0Nw.jpeg',
      message:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form',
      story:
          'https://psmag.com/.image/t_share/MTMxODI3Mjk4OTkwMDgyMDU4/shutterstock_125158133jpg.jpg',
    ),
    LocalData(
      name: 'samir',
      url:
          'https://1.bp.blogspot.com/-ndm33aqcslo/XsoU6May3lI/AAAAAAAAAUo/buf59MZ3JTIf1qRc7xOuUas3D6mxcVjBACK4BGAsYHg/images%2B%252822%2529.jpeg',
      message:
          'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'anything embarrassing ',
      story:
          'https://gdj-inr5u0ip5pewom.stackpathdns.com/wp-content/uploads/2012/01/9extremely-creative-photo.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.minWidth);
        if (constraints.minWidth >= 614)
          return Container(
            child: Row(
              mainAxisAlignment: constraints.minWidth >= 900
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ** جهات الاتصال
                if (constraints.minWidth >= 900)
                  Container(
                    color: Colors.grey[300],
                    width: 300,
                    padding: EdgeInsets.all(20),
                    height: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_horiz_rounded,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.video_call,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'جهات الاتصال',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                persons[0].name,
                              ),
                              SizedBox(
                                  width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  '${persons[0].url}',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                persons[1].name,
                              ),
                              SizedBox(
                                  width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  '${persons[1].url}',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                persons[2].name,
                              ),
                              SizedBox(
                                  width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  '${persons[2].url}',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                persons[3].name,
                              ),
                              SizedBox(
                                  width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  '${persons[3].url}',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                persons[4].name,
                              ),
                              SizedBox(
                                  width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                  '${persons[4].url}',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                // ** الصفحة الرئيسية
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    width: 614,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //** الصفحة الاساسية الثابته
                          Container(
                            width: 614,
                            color: Colors.grey[300],
                            child: Column(
                              children: [
                                //** part stories**
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  '${persons[0].story}'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    '${persons[0].url}',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional
                                                            .bottomCenter,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Text(
                                                        '${persons[0].name}',
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  '${persons[0].story}'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    '${persons[0].url}',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional
                                                            .bottomCenter,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              15.0),
                                                      child: Text(
                                                        '${persons[0].name}',
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  '${persons[0].story}'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    '${persons[0].url}',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Text(
                                                      '${persons[0].name}',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  '${persons[0].story}'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    '${persons[0].url}',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Text(
                                                      '${persons[0].name}',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  '${persons[0].story}'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    '${persons[0].url}',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: Text(
                                                      '${persons[0].name}',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 160,
                                              child: Stack(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                children: [
                                                  Card(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          flex: 2,
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    image:
                                                                        DecorationImage(
                                                              image: NetworkImage(
                                                                  'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                                                              fit: BoxFit.cover,
                                                            )),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional
                                                                    .bottomCenter,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(3.0),
                                                              child: Text(
                                                                'إنشاء قصة',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  PositionedDirectional(
                                                    top: Percent
                                                        .widgetVerticalPosition(
                                                      ratio: 50,
                                                      heightChild: 40,
                                                      heightParent: 200,
                                                    ),
                                                    child: Center(
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: Colors.white,
                                                            width: 2.3,
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                          size: 30,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 80,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.black54,
                                          size: 22,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //** part 'what do you think' and [live, image, room]
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Container(
                                      width: 550,
                                      height: 130,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 15),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                      top: 1.5,
                                                    ),
                                                    height: 38,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      color: Colors.grey[300],
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 5,
                                                        horizontal: 20,
                                                      ),
                                                      child: Text(
                                                        'بم تفكر؟',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor: Colors.blue,
                                                  backgroundImage: NetworkImage(
                                                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                              height: 0.5,
                                              width: double.infinity,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'غرفة',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.video_call,
                                                        color: Colors
                                                            .deepPurpleAccent,
                                                        size: 22,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'صورة',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Icon(
                                                        CustomIcons.gallery,
                                                        color:
                                                            Colors.lightGreen,
                                                        size: 18,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'بث مباشر',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.missed_video_call,
                                                        color:
                                                            Colors.pinkAccent,
                                                        size: 22,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                //** part posts
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Wrap(
                                      alignment: WrapAlignment.end,
                                      children: [
                                        Container(
                                          padding: EdgeInsetsDirectional.only(
                                              end: 15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .zero,
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.more_horiz_rounded,
                                                      color: Colors.grey[700],
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                        'Sara Ahmed',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        4.0),
                                                            child: Icon(
                                                              Icons
                                                                  .public_rounded,
                                                              color: Colors
                                                                  .grey[700],
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            'أمس الساعة 9:13 م',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .only(start: 15),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional
                                                              .topEnd,
                                                      child: Container(
                                                        width: 40,
                                                        height: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors.blue,
                                                          border: Border.all(
                                                            color: primaryColor,
                                                            width: 2.3,
                                                          ),
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      NetworkImage(
                                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'الزمالك هذا الموسم \nبطل الدورى لكرة القدم\n بطل الدورى المصرى لكرة اليد\n بطل دورى السوبر المصري لكرة السلة \n',
                                                textDirection:
                                                    TextDirection.rtl,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image(
                                          image: NetworkImage(
                                            'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Container(
                                            width: double.infinity,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      '${arabicNumber.convert(4777)} مشاركة ',
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      '${arabicNumber.convert(4777)} تعليقا ',
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      width: 85,
                                                      child: Stack(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${arabicNumber.convert(43576)}',
                                                                textDirection:
                                                                    TextDirection
                                                                        .rtl,
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          PositionedDirectional(
                                                            end: 0,
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .white,
                                                                      width:
                                                                          1.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18)),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/facebook_love.svg',
                                                              ),
                                                            ),
                                                          ),
                                                          PositionedDirectional(
                                                            end: 16,
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .white,
                                                                      width:
                                                                          1.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18)),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/care.svg',
                                                              ),
                                                            ),
                                                          ),
                                                          PositionedDirectional(
                                                            end: 32,
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .white,
                                                                      width:
                                                                          1.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              18)),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/icons/facebook_like.svg',
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'مشاركة',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            Icon(
                                                              CustomIcons
                                                                  .arrow_curved_to_the_left_svgrepo_com,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'تعليق',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            Icon(
                                                              CustomIcons
                                                                  .comment_svgrepo_com,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'أعجبنى',
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              CustomIcons
                                                                  .like_svgrepo_com,
                                                              color:
                                                                  Colors.grey,
                                                              size: 20,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // ** القائمة الاعدادات
                if (constraints.minWidth >= 1100)
                  Container(
                    color: Colors.deepPurple,
                    width: 300,
                    height: double.infinity,
                  ),
              ],
            ),
          );
        else
          return Container(
            color: Colors.grey[300],
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //** part stories**
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    '${persons[0].story}'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  '${persons[0].url}',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          '${persons[0].name}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    '${persons[0].story}'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  '${persons[0].url}',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional.bottomCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          '${persons[0].name}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    '${persons[0].story}'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  '${persons[0].url}',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        '${persons[0].name}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    '${persons[0].story}'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  '${persons[0].url}',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        '${persons[0].name}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    '${persons[0].story}'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  '${persons[0].url}',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        '${persons[0].name}',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 160,
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomCenter,
                                  children: [
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      clipBehavior: Clip.antiAlias,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                image: NetworkImage(
                                                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
                                                fit: BoxFit.cover,
                                              )),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional
                                                  .bottomCenter,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Text(
                                                  'إنشاء قصة',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    PositionedDirectional(
                                      top: Percent.widgetVerticalPosition(
                                        ratio: 50,
                                        heightChild: 40,
                                        heightParent: 200,
                                      ),
                                      child: Center(
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2.3,
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 80,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.black54,
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //** part 'what do you think' and [live, image, room]
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Container(
                        width: 550,
                        height: 130,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsetsDirectional.only(
                                        top: 1.5,
                                      ),
                                      height: 38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.grey[300],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 5,
                                          horizontal: 20,
                                        ),
                                        child: Text(
                                          'بم تفكر؟',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 19,
                                    backgroundColor: Colors.blue,
                                    backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 0.5,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'غرفة',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.video_call,
                                          color: Colors.deepPurpleAccent,
                                          size: 22,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'صورة',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          CustomIcons.gallery,
                                          color: Colors.lightGreen,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'بث مباشر',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.missed_video_call,
                                          color: Colors.pinkAccent,
                                          size: 22,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //** part posts
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsetsDirectional.only(end: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      padding: EdgeInsetsDirectional.zero,
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_horiz_rounded,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Sara Ahmed',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 4.0),
                                              child: Icon(
                                                Icons.public_rounded,
                                                color: Colors.grey[700],
                                                size: 16,
                                              ),
                                            ),
                                            Text(
                                              'أمس الساعة 9:13 م',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 15),
                                      child: Align(
                                        alignment: AlignmentDirectional.topEnd,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blue,
                                            border: Border.all(
                                              color: primaryColor,
                                              width: 2.3,
                                            ),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'الزمالك هذا الموسم \nبطل الدورى لكرة القدم\n بطل الدورى المصرى لكرة اليد\n بطل دورى السوبر المصري لكرة السلة \n',
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image(
                            image: NetworkImage(
                              'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '${arabicNumber.convert(4777)} مشاركة ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${arabicNumber.convert(4777)} تعليقا ',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 85,
                                        child: Stack(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '${arabicNumber.convert(43576)}',
                                                  textDirection:
                                                      TextDirection.rtl,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            PositionedDirectional(
                                              end: 0,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 1.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                child: SvgPicture.asset(
                                                  'assets/icons/facebook_love.svg',
                                                ),
                                              ),
                                            ),
                                            PositionedDirectional(
                                              end: 16,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 1.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                child: SvgPicture.asset(
                                                  'assets/icons/care.svg',
                                                ),
                                              ),
                                            ),
                                            PositionedDirectional(
                                              end: 32,
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 1.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18)),
                                                child: SvgPicture.asset(
                                                  'assets/icons/facebook_like.svg',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'مشاركة',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Icon(
                                                CustomIcons
                                                    .arrow_curved_to_the_left_svgrepo_com,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'تعليق',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Icon(
                                                CustomIcons.comment_svgrepo_com,
                                                color: Colors.grey,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'أعجبنى',
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                CustomIcons.like_svgrepo_com,
                                                color: Colors.grey,
                                                size: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
      },
    );
  }
}
