import 'package:dashboard/responsive_layout.dart';
import 'package:flutter/material.dart';

import 'menu_indicator.dart';
import 'menu_option_widget.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final List<bool> _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 5,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[0],
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
                    value ? _isHovering[1] = true : _isHovering[1] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[1],
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
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[2],
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
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[3],
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
                    value ? _isHovering[4] = true : _isHovering[4] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[4],
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
                    value ? _isHovering[5] = true : _isHovering[5] = false;
                  });
                },
                hoverColor: Colors.transparent,
                onTap: () {},
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
                      _isHovering[5],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MouseRegion(
              onEnter: (f) {
                setState(() {
                  _isHovering[6] = true;
                });
              },
              onExit: (f) {
                setState(() {
                  _isHovering[6] = false;
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
                    width: _isHovering[6] ? 0.75 : 0.5,
                    color: Colors.black87,
                  ),
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.document_scanner,
                      color: _isHovering[5]
                          ? Colors.grey.shade700
                          : Colors.grey.shade600,
                    ),
                    Text(
                      'KYC Application',
                      style: TextStyle(
                        color: _isHovering[5]
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
      ),
    );
  }
}
