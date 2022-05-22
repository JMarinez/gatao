import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyAccountList extends StatelessWidget {
  const EmptyAccountList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            // TODO: Investigate if we it's best to store the image in Firebase instead of storing it locally
            child: SvgPicture.asset(
              'assets/credit_card.svg',
              height: 200.0,
              placeholderBuilder: (context) {
                return CircularProgressIndicator(
                    color: Theme.of(context).primaryColor);
              },
            ),
          ),
          const SizedBox(height: 15.0),
          Text(
            'You have no wallets created.',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            'Tap the button below to create your first wallet!',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
