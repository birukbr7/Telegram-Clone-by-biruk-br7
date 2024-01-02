import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teleragmclonebybiruk/constant/color.dart';
import 'package:teleragmclonebybiruk/widget/chat_list.dart';
import 'package:teleragmclonebybiruk/widget/floating_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List<Widget> tabList = [
  RepeatedTab(
    label: 'All',
  ),
  RepeatedTab(
    label: 'Personal',
  ),
  RepeatedTab(
    label: 'Groups',
  ),
  RepeatedTab(
    label: 'Channels',
  ),
  RepeatedTab(
    label: 'Bots',
  ),
];

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabList.length,
      child: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            bottom: TabBar(
              labelColor: textActiveColor,
              unselectedLabelColor: iconBg,
              dividerColor: primaryColor,
              isScrollable: true,
              indicatorColor: textColor,
              indicatorWeight: 4,
              tabs: [...tabList],
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.white,
              )
            ],
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            backgroundColor: secondaryColor,
            title: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.blue
                      ], // Replace with your desired colors
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        'https://thispersondoesnotexist.com',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  '1 Story',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                for (int i = 0; i < 10; i++) ChatList(),
              ],
            ),
          ),
          floatingActionButton:
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            FloatingButton(
              icon: Icons.edit,
              size: 40,
              bgColor: floatingiconColor,
              iconColor: iconBg,
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingButton(
              icon: Icons.camera_alt,
              size: 50,
              bgColor: textColor,
              iconColor: Colors.white,
            ),
          ])),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;

  RepeatedTab({required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 5),
          Container(
            height: 20,
            width: 24,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                Random().nextInt(50).toString(),
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
