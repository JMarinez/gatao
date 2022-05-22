import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(100)),
              child: const Icon(
                Icons.person,
                size: 90.0,
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const SizedBox(height: 10.0),
                Text(
                  'Juan Mariñez',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.edit,
          size: 30.0,
        ),
      ],
    );
  }
}
