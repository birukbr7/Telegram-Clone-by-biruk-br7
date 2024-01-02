import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:teleragmclonebybiruk/constant/color.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final randomName = faker.person.firstName();

    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 25,
            child: ClipOval(
              child: Image(
                image: NetworkImage(
                  'https://thispersondoesnotexist.com',
                  headers: {
                    'Cache-Control': 'no-cache',
                  },
                ),
              ),
            ),
          ),
          title: Text(randomName, style: const TextStyle(color: Colors.white)),
          subtitle: Text(
            'Last Message',
            style: TextStyle(color: textBg),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${Random().nextInt(12)}:${Random().nextInt(60)} PM',
                style: TextStyle(
                  color: textBg,
                ),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: textColor.withOpacity(0.7),
                child: Text(
                  Random().nextInt(10).toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.1,
          color: Colors.black,
        ),
      ],
    );
  }
}
