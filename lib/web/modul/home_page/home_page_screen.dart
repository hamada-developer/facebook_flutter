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
  final List<LocalData> persons = [
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
        'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
    LocalData(
      name: 'sara',
      url:
      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
      'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        print(constraints.minWidth);
        if(constraints.minWidth >= 614)
          return Container(
            child: Row(
              mainAxisAlignment: constraints.minWidth >= 900?
              MainAxisAlignment.start: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ** جهات الاتصال
                if(constraints.minWidth >= 900)
                  Container(
                    color: Colors.deepPurple,
                    width: 300,
                    height: double.infinity,
                  ),
                // ** الصفحة الرئيسية
                Expanded(
                  child: Container(
                    color: Colors.blue,
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
                                                          borderRadius: BorderRadius.circular(20),
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
                                                    alignment: AlignmentDirectional.bottomCenter,
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
                                                          borderRadius: BorderRadius.circular(20),
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
                                                    alignment: AlignmentDirectional.bottomCenter,
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
                                                          borderRadius: BorderRadius.circular(20),
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
                                                          borderRadius: BorderRadius.circular(20),
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
                                                          borderRadius: BorderRadius.circular(20),
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
                                                      ratio: 50,
                                                      heightChild: 40,
                                                      heightParent: 200,
                                                    ),
                                                    child: Center(
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
                                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
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
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                                  onPressed: (){},
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
                                              ),
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: (){},
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
                                                  onPressed: (){},
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
                                          padding: EdgeInsetsDirectional.only(
                                              end: 15.0
                                          ),
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
                                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                                                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                                                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                                                textDirection: TextDirection.rtl,
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
                                                                      width: 1.5
                                                                  ),
                                                                  borderRadius: BorderRadius.circular(18)
                                                              ),
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
                                                                      width: 1.5
                                                                  ),
                                                                  borderRadius: BorderRadius.circular(18)
                                                              ),
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
                                                                      width: 1.5
                                                                  ),
                                                                  borderRadius: BorderRadius.circular(18)
                                                              ),
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
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              'مشاركة',
                                                              style: TextStyle(
                                                                color: Colors.grey,
                                                                fontWeight: FontWeight.w600,
                                                              ),
                                                            ),
                                                            Icon(
                                                              CustomIcons.arrow_curved_to_the_left_svgrepo_com,
                                                              color: Colors.grey,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
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
                                                          mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                    ),
                  ),
                ),
                // ** القائمة الاعدادات
                if(constraints.minWidth >= 1100)
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
                                          borderRadius: BorderRadius.circular(20),
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
                                    alignment: AlignmentDirectional.bottomCenter,
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
                                          borderRadius: BorderRadius.circular(20),
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
                                    alignment: AlignmentDirectional.bottomCenter,
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
                                          borderRadius: BorderRadius.circular(20),
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
                                          borderRadius: BorderRadius.circular(20),
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
                                          borderRadius: BorderRadius.circular(20),
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
                                      ratio: 50,
                                      heightChild: 40,
                                      heightParent: 200,
                                    ),
                                    child: Center(
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
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                  onPressed: (){},
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
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: (){},
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
                                  onPressed: (){},
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
                          padding: EdgeInsetsDirectional.only(
                              end: 15.0
                          ),
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
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
                                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                                    padding: const EdgeInsetsDirectional.only(start: 15),
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
                                                textDirection: TextDirection.rtl,
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
                                                      width: 1.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(18)
                                              ),
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
                                                      width: 1.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(18)
                                              ),
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
                                                      width: 1.5
                                                  ),
                                                  borderRadius: BorderRadius.circular(18)
                                              ),
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
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'مشاركة',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Icon(
                                              CustomIcons.arrow_curved_to_the_left_svgrepo_com,
                                              color: Colors.grey,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
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
                                          mainAxisAlignment: MainAxisAlignment.center,
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


// void columnBase(){
//   Column(
//     mainAxisSize: MainAxisSize.min,
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       // ***search***
//       Padding(
//         padding:  EdgeInsetsDirectional.only(
//           start: 20,
//           top: 20,
//           end: 20,
//           bottom: 20,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: Container(
//                 margin: EdgeInsetsDirectional.only(
//                   top: 1.5,
//                 ),
//                 height: 38,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   border: Border.all(
//                     color: Colors.grey,
//                     width: 1.2,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 5,
//                     horizontal: 20,
//                   ),
//                   child: Text(
//                     'بم تفكر؟',
//                     textAlign: TextAlign.end,
//                     style: TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Container(
//               width: 40,
//               height: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.blue,
//                 border: Border.all(
//                   color: primaryColor,
//                   width: 2.3,
//                 ),
//                 image: DecorationImage(
//                     image: NetworkImage(
//                       'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
//                     ),
//                     fit: BoxFit.cover),
//               ),
//             ),
//           ],
//         ),
//       ),
//       SizedBox(
//         height: 15,
//       ),
//       //** separated **
//       Container(
//         height: 1,
//         width: double.infinity,
//         color: Colors.grey,
//       ),
//       SizedBox(
//         height: 15,
//       ),
//       // ** room and live and image
//       Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'غرفة',
//                   style: TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//                 Icon(
//                   Icons.video_call,
//                   color: Colors.deepPurpleAccent,
//                   size: 22,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'صورة',
//                   style: TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//                 Icon(
//                   CustomIcons.gallery,
//                   color: Colors.lightGreen,
//                   size: 18,
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'بث مباشر',
//                   style: TextStyle(
//                     fontSize: 16,
//                   ),
//                 ),
//                 Icon(
//                   Icons.missed_video_call,
//                   color: Colors.pinkAccent,
//                   size: 22,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       SizedBox(
//         height: 15,
//       ),
//       //** stories ***/
//       Container(
//         height: 200,
//         color: Colors.grey[200],
//         width: double.infinity,
//         padding: EdgeInsetsDirectional.only(
//           end: 15,
//           top: 10,
//           bottom: 10,
//         ),
//         child: Stack(
//           alignment: AlignmentDirectional.centerStart,
//           children: [
//             Padding(
//               padding: EdgeInsetsDirectional.only(
//                 bottom: 20,
//                 top: 20,
//                 end: 20,
//                 start: Percent.borderHorizontalPosition(
//                   ratio: 5,
//                   widthParent: constraints.minWidth,
//                 ),
//               ),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${persons[0].story}'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Align(
//                               alignment: AlignmentDirectional.topEnd,
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: primaryColor,
//                                     width: 2.3,
//                                   ),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         '${persons[0].url}',
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: AlignmentDirectional.bottomCenter,
//                             child: Padding(
//                               padding: const EdgeInsets.all(15.0),
//                               child: Text(
//                                 '${persons[0].name}',
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${persons[0].story}'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Align(
//                               alignment: AlignmentDirectional.topEnd,
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: primaryColor,
//                                     width: 2.3,
//                                   ),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         '${persons[0].url}',
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: AlignmentDirectional.bottomCenter,
//                             child: Padding(
//                               padding: const EdgeInsets.all(15.0),
//                               child: Text(
//                                 '${persons[0].name}',
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${persons[0].story}'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Align(
//                               alignment: AlignmentDirectional.topEnd,
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: primaryColor,
//                                     width: 2.3,
//                                   ),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         '${persons[0].url}',
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               '${persons[0].name}',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${persons[0].story}'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Align(
//                               alignment: AlignmentDirectional.topEnd,
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: primaryColor,
//                                     width: 2.3,
//                                   ),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         '${persons[0].url}',
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               '${persons[0].name}',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               '${persons[0].story}'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(10.0),
//                             child: Align(
//                               alignment: AlignmentDirectional.topEnd,
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: primaryColor,
//                                     width: 2.3,
//                                   ),
//                                   image: DecorationImage(
//                                       image: NetworkImage(
//                                         '${persons[0].url}',
//                                       ),
//                                       fit: BoxFit.cover),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               '${persons[0].name}',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: 160,
//                       child: Stack(
//                         alignment: AlignmentDirectional.bottomCenter,
//                         children: [
//                           Card(
//                             color: Colors.white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 2,
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: NetworkImage(
//                                               'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
//                                           fit: BoxFit.cover,
//                                         )),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Align(
//                                     alignment: AlignmentDirectional.bottomCenter,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(3.0),
//                                       child: Text(
//                                         'إنشاء قصة',
//                                         style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           PositionedDirectional(
//                             top: Percent.widgetVerticalPosition(
//                               ratio: 50,
//                               heightChild: 40,
//                               heightParent: 200,
//                             ),
//                             child: Center(
//                               child: Container(
//                                 width: 40,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   color: Colors.blue,
//                                   border: Border.all(
//                                     color: Colors.white,
//                                     width: 2.3,
//                                   ),
//                                 ),
//                                 child: Icon(
//                                   Icons.add,
//                                   color: Colors.white,
//                                   size: 30,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsetsDirectional.only(
//                 start: Percent.borderHorizontalPosition(
//                   ratio: 1.5,
//                   widthParent: constraints.minWidth,
//                 ),
//               ),
//               child: Card(
//                 shape: CircleBorder(),
//                 child: Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                   ),
//                   child: Icon(
//                     Icons.arrow_back,
//                     color: Colors.grey,
//                     size: 30,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }

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
                          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80'),
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


Widget itemPost()=> Container(
  color: Colors.white,
  child: Wrap(
    alignment: WrapAlignment.end,
    children: [
      Container(
        padding: EdgeInsetsDirectional.only(
            end: 15.0
        ),
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
                  crossAxisAlignment: CrossAxisAlignment.end,
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
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
                  padding: const EdgeInsetsDirectional.only(start: 15),
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
          'https://w0.peakpx.com/wallpaper/887/576/HD-wallpaper-clock-minimal-creative-blue-background-creative-clock.jpg',
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
                              textDirection: TextDirection.rtl,
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
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.circular(18)
                            ),
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
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.circular(18)
                            ),
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
                                    width: 1.5
                                ),
                                borderRadius: BorderRadius.circular(18)
                            ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'مشاركة',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            CustomIcons.arrow_curved_to_the_left_svgrepo_com,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
);

// void container(){
//   Expanded(
//     child: Container(
//       width: 115,
//       height: double.infinity,
//       child: Stack(
//         alignment: AlignmentDirectional.bottomCenter,
//         children: [
//           Card(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             clipBehavior: Clip.antiAlias,
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage(
//                               '${persons[0].story}'),
//                           fit: BoxFit.cover,
//                         )),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Align(
//               alignment: AlignmentDirectional.topEnd,
//               child: Container(
//                 width: 40,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: Colors.blue,
//                   border: Border.all(
//                     color: primaryColor,
//                     width: 2.3,
//                   ),
//                   image: DecorationImage(
//                       image: NetworkImage(
//                         '${persons[0].url}',
//                       ),
//                       fit: BoxFit.cover),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text(
//               '${persons[0].name}',
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
