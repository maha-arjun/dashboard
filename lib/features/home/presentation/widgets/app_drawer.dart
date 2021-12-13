import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'menu_indicator.dart';
import 'menu_option_widget.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int _hoverIndex = -1;
  int _currentIndex = 0;

  void navigate(int index) {
    AppControllers.homeController.jumpToPage(index);
    setState(() => _currentIndex = index);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 0,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 0 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'Dashboard'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 0 || _currentIndex == 0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 1 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'Buy Tokens'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 1 || _currentIndex == 1,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 2 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'ICO Distribution'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 2 || _currentIndex == 2,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 3 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(3),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'Transactions'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 3 || _currentIndex == 3,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 4 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'Profile'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 4 || _currentIndex == 4,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: InkWell(
              onHover: (value) {
                setState(() {
                  value ? _hoverIndex = 5 : _hoverIndex = -1;
                });
              },
              hoverColor: Colors.transparent,
              onTap: () => navigate(5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  menuOptionWidget(size, 'Pages'),
                  const SizedBox(height: 10),
                  menuIndicator(
                    context,
                    _hoverIndex == 5 || _currentIndex == 5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          MouseRegion(
            onEnter: (f) {
              setState(() {
                _hoverIndex = 6;
              });
            },
            onExit: (f) {
              setState(() {
                _hoverIndex = -1;
              });
            },
            cursor: SystemMouseCursors.click,
            child: AnimatedContainer(
              width: ResponsiveLayout.isMobile(context) ? 200 : null,
              duration: const Duration(milliseconds: 100),
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  width: _hoverIndex == 6 || _currentIndex == 6 ? 0.75 : 0.5,
                  color: Colors.black87,
                ),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.document_scanner,
                    color: _hoverIndex == 6 || _currentIndex == 6
                        ? Colors.grey.shade700
                        : Colors.grey.shade600,
                  ),
                  Text(
                    'KYC Application',
                    style: TextStyle(
                      color: _hoverIndex == 6 || _currentIndex == 6
                          ? Colors.grey.shade700
                          : Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
