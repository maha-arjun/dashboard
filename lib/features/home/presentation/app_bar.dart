import 'package:dashboard/core/app_colors.dart';
import 'package:dashboard/core/app_controllers.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_indicator.dart';
import 'package:dashboard/features/home/presentation/widgets/menu_option_widget.dart';
import 'package:dashboard/core/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {

  int _hoverIndex = -1;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(size.width, 1000),
      child: Column(
        children: [
          Container(
            height: 64,
            color: kPrimaryBlueColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoTitle(),
                const SizedBox(width: 800),
                const Text(
                  'Welcome! Stefan Harary',
                  style: TextStyle(
                    color: kWhiteColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.account_circle,
                      size: 40,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          if(ResponsiveLayout.isDesktop(context))
            Container(
              height: 50,
              width: size.width,
              color: Colors.white,
              child: Center(
                child: SizedBox(
                  width: 1200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //dashboard
                      SizedBox(
                        width: 125,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 0 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(0);
                            setState(() => _currentIndex = 0);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'Dashboard'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 0 || _currentIndex == 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //buy tokens
                      SizedBox(
                        width: 130,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 1 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(1);
                            setState(() => _currentIndex = 1);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'Buy Tokens'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 1 || _currentIndex == 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //ico distribution
                      SizedBox(
                        width: 155,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 2 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(2);
                            setState(() => _currentIndex = 2);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'ICO Distribution'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 2 || _currentIndex == 2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //transactions
                      SizedBox(
                        width: 130,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 3 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(3);
                            setState(() => _currentIndex = 3);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'Transactions'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 3 || _currentIndex == 3,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //profile
                      SizedBox(
                        width: 95,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 4 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(4);
                            setState(() => _currentIndex = 4);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'Profile'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 4 || _currentIndex == 4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //pages
                      SizedBox(
                        width: 90,
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              value ? _hoverIndex = 5 : _hoverIndex = -1;
                            });
                          },
                          hoverColor: Colors.transparent,
                          onTap: () {
                            AppControllers.homeController.jumpToPage(5);
                            setState(() => _currentIndex = 5);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              menuOptionWidget(size, 'Pages'),
                              const SizedBox(height: 10),
                              menuIndicatorDesktop(
                                context,
                                _hoverIndex  == 5 || _currentIndex == 5,
                              ),
                            ],
                          ),
                        ),
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
                              width: _hoverIndex  == 6 || _currentIndex == 6 ? 0.75 : 0.5,
                              color: Colors.black87,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.document_scanner,
                                color: _hoverIndex  == 6 || _currentIndex == 6
                                    ? Colors.grey.shade700
                                    : Colors.grey.shade600,
                              ),
                              Text(
                                'KYC Application',
                                style: TextStyle(
                                  color: _hoverIndex  == 6 || _currentIndex == 6
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
              ),
            )
        ],
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
          icon: const Icon(
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
          padding: EdgeInsets.symmetric(horizontal: 8.0),
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
