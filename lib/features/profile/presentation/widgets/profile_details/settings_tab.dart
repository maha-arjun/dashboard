import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/widgets/default_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  final List<bool> _switch = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: textFieldTitle('Security Settings'),
        ),
        Row(
          children: [
            toggleSwitch(_switch[0], (e) {
              setState(() {
                _switch[0] = e;
              });
            }),
            toogleText('Save my Activities Log'),
          ],
        ),
        Row(
          children: [
            toggleSwitch(_switch[1], (e) {
              setState(() {
                _switch[1] = e;
              });
            }),
            toogleText('Confirm me through email before password change'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: textFieldTitle('Manage Notification'),
        ),
        Row(
          children: [
            toggleSwitch(_switch[2], (e) {
              setState(() {
                _switch[2] = e;
              });
            }),
            toogleText('Notify me by email about sales and latest news'),
          ],
        ),
        Row(
          children: [
            toggleSwitch(_switch[3], (e) {
              setState(() {
                _switch[3] = e;
              });
            }),
            toogleText('Alert me by email for unusual activity'),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Spacer(),
            Icon(
              Icons.done_all_rounded,
              color: kGreenColor,
            ),
            Text(
              ' Settings has been updated',
              style: TextStyle(color: kGreenColor),
            )
          ],
        )
      ],
    );
  }

  Text toogleText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: kGreyColor,
      ),
    );
  }

  Transform toggleSwitch(bool toggleStatus, void Function(bool)? onChanged) {
    return Transform.scale(
      scale: 0.8,
      child: CupertinoSwitch(
        activeColor: kBlueColor,
        value: toggleStatus,
        onChanged: onChanged,
      ),
    );
  }
}
