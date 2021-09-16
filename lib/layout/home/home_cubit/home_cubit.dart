import 'package:bloc/bloc.dart';
import 'package:facebook/model/local_data.dart';
import 'package:facebook/shared/components/constant.dart';
import 'package:facebook/shared/style/color.dart';
import 'package:facebook/shared/style/custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{



  final List<LocalData> persons = [
    LocalData(
      name: 'Hamada mohamed ',
      message: 'Hi, i am a software engineer ',
      url: 'https://serving.photos.photobox.com/25235201d5280a9882ac9a90e30d287c527be9a7e648e6b3207215203329d3271a4fb63b.jpg',
      story: 'https://morb3.com/wp-content/uploads/2020/01/1-iphone-wallpapers-hd-%D8%AE%D9%84%D9%81%D9%8A%D8%A7%D8%AA-%D8%A7%D9%8A%D9%81%D9%88%D9%86-%D8%A7%D9%94%D9%8A%D9%81%D9%88%D9%86-156.jpg',
      post: 'الزمالك هذا الموسم \nبطل الدورى لكرة القدم\n بطل الدورى المصرى لكرة اليد\n بطل دورى السوبر المصري لكرة السلة \n',
      post_image: 'https://pbs.twimg.com/media/E7QFvmAWQAExfwo.jpg',
      date: 'أمس الساعة${arabicNumber.convert(11)}:${arabicNumber.convert(30)}م',
      comment_count: '${arabicNumber.convert(5606)} تعليقا ',
      like_count: '${arabicNumber.convert(221873)}',
      share_count: '${arabicNumber.convert(1050)} مشاركة ',
      first_rect: 'assets/icons/facebook_love.svg',
      second_rect: 'assets/icons/care.svg',
      thirty_rect: 'assets/icons/facebook_like.svg',

    ),
    LocalData(
      name: 'sara ahmed',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      story: 'https://w0.peakpx.com/wallpaper/887/576/HD-wallpaper-clock-minimal-creative-blue-background-creative-clock.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      date: 'أمس الساعة${arabicNumber.convert(01)}:${arabicNumber.convert(45)}م',
      comment_count: '${arabicNumber.convert(120)} تعليقا ',
      like_count: '${arabicNumber.convert(500)}',
      share_count: '${arabicNumber.convert(23)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
    LocalData(
      name: 'Machiel',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      four_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      date: 'أمس الساعة${arabicNumber.convert(01)}:${arabicNumber.convert(45)}م',
      comment_count: '${arabicNumber.convert(120)} تعليقا ',
      like_count: '${arabicNumber.convert(500)}',
      share_count: '${arabicNumber.convert(23)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
    LocalData(
      name: 'asdasdfasdsdasda',
      url:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmiipzUG3KoBS7uiWIx9M7Z-VUTdT0w-Cn-g&usqp=CAU',
      message: 'asdasdasdasdasdasdds',
      story: 'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
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
        'https://elements-cover-images-0.imgix.net/dc32fd46-a38b-4b46-8bcd-c722b6c6fc94?auto=compress%2Cformat&fit=max&w=632&s=3c09a22ce4971143ddd4261636818e11'),
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
      'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
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

  final List<LocalData> persons_four = [
    LocalData(
      name: 'Machiel',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://wallpaperaccess.com/full/1968299.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      four_post_image: 'https://img.fotocommunity.com/bulb-of-knowledge-560651dc-d49b-47bb-b90f-6340596d6572.jpg?height=1080',
      date: 'اليوم الساعة${arabicNumber.convert(05)}:${arabicNumber.convert(15)}م',
      comment_count: '${arabicNumber.convert(700)} تعليقا ',
      like_count: '${arabicNumber.convert(5220)}',
      share_count: '${arabicNumber.convert(2213)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
    LocalData(
      name: 'Sara ahmed',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      four_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      date: 'أمس الساعة${arabicNumber.convert(03)}:${arabicNumber.convert(54)}م',
      comment_count: '${arabicNumber.convert(12000)} تعليقا ',
      like_count: '${arabicNumber.convert(504410)}',
      share_count: '${arabicNumber.convert(2233)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
  ];

  final List<LocalData> person_two = [
    LocalData(
      name: 'Machiel',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://wallpaperaccess.com/full/1968299.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      four_post_image: 'https://img.fotocommunity.com/bulb-of-knowledge-560651dc-d49b-47bb-b90f-6340596d6572.jpg?height=1080',
      date: 'اليوم الساعة${arabicNumber.convert(05)}:${arabicNumber.convert(15)}م',
      comment_count: '${arabicNumber.convert(700)} تعليقا ',
      like_count: '${arabicNumber.convert(5220)}',
      share_count: '${arabicNumber.convert(2213)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
    LocalData(
      name: 'Sara ahmed',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      four_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      date: 'أمس الساعة${arabicNumber.convert(03)}:${arabicNumber.convert(54)}م',
      comment_count: '${arabicNumber.convert(12000)} تعليقا ',
      like_count: '${arabicNumber.convert(504410)}',
      share_count: '${arabicNumber.convert(2233)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
  ];


  final List<LocalData> person_three = [
    LocalData(
      name: 'Machiel',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb8K3r8wnRGKL-taFuE8Pz6nf7XvsD8aOWGA&usqp=CAU',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://wallpaperaccess.com/full/1968299.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      four_post_image: 'https://img.fotocommunity.com/bulb-of-knowledge-560651dc-d49b-47bb-b90f-6340596d6572.jpg?height=1080',
      date: 'اليوم الساعة${arabicNumber.convert(05)}:${arabicNumber.convert(15)}م',
      comment_count: '${arabicNumber.convert(700)} تعليقا ',
      like_count: '${arabicNumber.convert(5220)}',
      share_count: '${arabicNumber.convert(2213)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
    LocalData(
      name: 'Sara ahmed',
      message: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      url: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=60',
      story: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      post: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout',
      post_image: 'https://img5.goodfon.com/wallpaper/nbig/2/ac/abstract-background-colorful-rounded-shapes-abstraktsiia-fon.jpg',
      two_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      three_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      four_post_image: 'https://i.pinimg.com/originals/03/32/2e/03322eae80f035d972d64ca3bd1c38cc.jpg',
      date: 'أمس الساعة${arabicNumber.convert(03)}:${arabicNumber.convert(54)}م',
      comment_count: '${arabicNumber.convert(12000)} تعليقا ',
      like_count: '${arabicNumber.convert(504410)}',
      share_count: '${arabicNumber.convert(2233)} مشاركة ',
      first_rect: 'assets/icons/facebook_haha.svg',
      second_rect: 'assets/icons/facebook_wow.svg',
      thirty_rect: 'assets/icons/facebook_sad.svg',

    ),
  ];



  HomeCubit (): super(InitialHomeState());
  static HomeCubit get(context) => BlocProvider.of(context);
}