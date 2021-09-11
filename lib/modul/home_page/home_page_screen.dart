import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/model/user_model.dart';
import 'package:facebook/shared/components/component.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_percentage/stack_percentage.dart';

class HomePageScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  final List<LocalData> persons = [
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdfdsfdfjsdkjfsdklfsdkfhsdjkjkfdsdsdsdsdjkg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 20,
                      start: 10,
                      end: 10,
                    ),
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
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.2,
                              ),
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
                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'صورة',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.image,
                              color: Colors.lightGreen,
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsetsDirectional.only(
                end: 15,
                top: 10,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: persons.length,
                      itemBuilder: (context, index) => Container(
                        width: 115,
                        height: double.infinity,
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
                                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 2.3,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${persons[index].url}',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '${persons[index].name}',
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
                    widget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
            ),
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 20,
                      start: 10,
                      end: 10,
                    ),
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
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.2,
                              ),
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
                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'صورة',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.image,
                              color: Colors.lightGreen,
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsetsDirectional.only(
                end: 15,
                top: 10,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: persons.length,
                      itemBuilder: (context, index) => Container(
                        width: 115,
                        height: double.infinity,
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
                                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 2.3,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${persons[index].url}',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '${persons[index].name}',
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
                    widget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
            ),
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 20,
                      start: 10,
                      end: 10,
                    ),
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
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.2,
                              ),
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
                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'صورة',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.image,
                              color: Colors.lightGreen,
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsetsDirectional.only(
                end: 15,
                top: 10,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: persons.length,
                      itemBuilder: (context, index) => Container(
                        width: 115,
                        height: double.infinity,
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
                                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 2.3,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${persons[index].url}',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '${persons[index].name}',
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
                    widget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
            ),
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                      top: 20,
                      start: 10,
                      end: 10,
                    ),
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
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.2,
                              ),
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
                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'صورة',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.image,
                              color: Colors.lightGreen,
                              size: 22,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              color: Colors.white,
              width: double.infinity,
              padding: EdgeInsetsDirectional.only(
                end: 15,
                top: 10,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: persons.length,
                      itemBuilder: (context, index) => Container(
                        width: 115,
                        height: double.infinity,
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
                                            'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 2.3,
                                    ),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          '${persons[index].url}',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                '${persons[index].name}',
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
                    widget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget widget() => Container(
      width: 115,
      height: double.infinity,
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
                          'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
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
              ratio: 60,
              heightChild: 40,
              heightParent: 200,
            ),
            start: Percent.widgetHorizontalPosition(
              ratio: 50,
              widthChild: 40,
              widthParent: 115,
            ),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
        ],
      ),
    );

Widget widget2() => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: [
          Container(
            height: double.infinity,
            child: Row(
              children: [
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 200,
                  itemBuilder: (c, v) => Text(
                    '1',
                  ),
                ),
              ],
            ),
          ),
          Text('mohamed'),
        ],
      ),
    );
