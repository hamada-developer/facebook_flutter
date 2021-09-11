import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stack_percentage/stack_percentage.dart';

class HomePageScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final List<LocalData> persons = [
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdfdsfdfjsdkjfsdklfsdkfhsdjkjkfdsdsdsdsdjkg',
      story:
          'https://w0.peakpx.com/wallpaper/887/576/HD-wallpaper-clock-minimal-creative-blue-background-creative-clock.jpg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
      story:
          'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story: 'https://www.ubackground.com/_ph/8/236102508.jpg',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story: 'https://wallpaperaccess.com/full/1968299.jpg',
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
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
      story:
          'https://images.unsplash.com/photo-1560421683-6856ea585c78?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3JlYXRpdml0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story:
          'https://s3.amazonaws.com/susam-files/Wallpapers/Trello+Theme+Exclusive+Creative+Brush/creative_brush_wallpaper_v2-2560x1440.png',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story: 'https://wallpaperaccess.com/full/637507.jpg',
    ),
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
          'https://images.unsplash.com/photo-1583223667854-e0e05b1ad4f3?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHAlMjBsYXB0b3B8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
    ),
    LocalData(
        name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
        url:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
        message: 'hi i fsdjgfjdfkghdf',
        story:
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/9bb6af9d-9be0-4819-9fab-d9bdfb65ac89/d1lacar-3ac262dd-3042-466a-a76d-d69cb0c52510.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzliYjZhZjlkLTliZTAtNDgxOS05ZmFiLWQ5YmRmYjY1YWM4OVwvZDFsYWNhci0zYWMyNjJkZC0zMDQyLTQ2NmEtYTc2ZC1kNjljYjBjNTI1MTAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.V-Igch416s1Wn1Khtci_q8RSZPaO5o5mFnVEjasS5SU'),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story:
          'https://img.fotocommunity.com/bulb-of-knowledge-560651dc-d49b-47bb-b90f-6340596d6572.jpg?height=1080',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story:
          'https://img.fotocommunity.com/bulb-of-knowledge-560651dc-d49b-47bb-b90f-6340596d6572.jpg?height=1080',
    ),
    LocalData(
      name: 'sara',
      url:
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      message: 'hi i am sara fsdjkfdsdsdsdsdjkg',
      story:
          'https://www.allwhitebackground.com/wp-content/uploads/5/Creative-Background-HD-Photos.jpg',
    ),
    LocalData(
      name: 'hdfghdjkghd fdsdsdsdsdsdf ghj',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      message: 'hi i fsdjgfjdfkghdf',
      story:
          'https://i.pinimg.com/736x/76/c5/5f/76c55f279c052c5eeaccf8162e3fb629.jpg',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story:
          'https://c4.wallpaperflare.com/wallpaper/465/78/448/humor-motivational-black-background-minimalism-wallpaper-preview.jpg',
    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRXs4XLutykcrFtsalR7IDFbn2iy53MB6dpg&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story:
          'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
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
                              CustomIcons.gallery,
                              color: Colors.lightGreen,
                              size: 18,
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
                                            '${persons[index].story}'),
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
              height: 15,
            ),
            itemPost(),
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

void postWidget(){
  Container(
    width: double.infinity,
    height: 600,
    padding: EdgeInsetsDirectional.only(
      end: 20,
    ),
    color: Colors.white,
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
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/887/576/HD-wallpaper-clock-minimal-creative-blue-background-creative-clock.jpg',
                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
        ),
      ],
    ),
  );
}
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

void reactions(){
  Stack(
    children: [
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
  );
}