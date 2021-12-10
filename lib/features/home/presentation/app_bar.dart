import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(size.width, 1000),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        height: 64,
        width: double.infinity,
        color: kPrimaryBlueColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LogoTitle(),
            Spacer(),
            Text(
              'Welcome! Stefan Harary',
              style: TextStyle(
                color: kWhiteColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.account_circle,
                  size: 40,
                  color: kWhiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar mobileAppBar(Size size) {
  return AppBar(
    backgroundColor: kPrimaryBlueColor,
    centerTitle: true,
    title: const LogoTitle(),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: size.width * 0.05),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle,
            size: 40,
          ),
        ),
      )
    ],
  );
}

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.account_balance_wallet_outlined,
          color: kWhiteColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'TOKENWIZ',
            style: TextStyle(
              color: kWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
}
