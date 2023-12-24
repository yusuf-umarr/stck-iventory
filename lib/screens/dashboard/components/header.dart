import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/profile_card.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Dashboard",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white)),
        const Spacer(
          flex: 2,
        ),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}
