import 'package:dashboard/core/app_colors.dart';
import 'package:flutter/material.dart';

Widget chooseCurrencyWidget() => Container(
      height: 1110,
      width: 800,
      decoration: const BoxDecoration(
          color: AppColors.kWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //icon
            const SizedBox(
              height: 20,
              width: 200,
              child: Text('STEP 1'),
            ),
            const Text(
              'Choose currency and calculate TWZ tokens price',
              style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(37, 57, 146, 1),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You can buy our TWZ tokens using ETH, BTC, LTC or USD to become part of Our project.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(230, 239, 251, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ETH'),
                        Text('0.00011'),
                      ],
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(230, 239, 251, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ETH'),
                        Text('0.00011'),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(230, 239, 251, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ETH'),
                        Text('0.00011'),
                      ],
                    )),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(230, 239, 251, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('ETH'),
                        Text('0.00011'),
                      ],
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 20,
              width: 200,
              child: Text('STEP 2'),
            ),
            const Text(
              'Amount of contribute',
              style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(37, 57, 146, 1),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enter your amount, you would like to contribute and calculate the amount of token you will received.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'The calculator helps to convert required currency to tokens.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(
                  color: const Color.fromRGBO(210, 221, 233, 1),
                ),
              ),
              height: 50,
              width: 150,
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 80,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                      child: VerticalDivider(
                        width: 1,
                        thickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'ETH',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '0.35 ETH minimum contribution require.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Container(
                height: 120,
                padding: const EdgeInsets.only(
                    top: 20, left: 20, bottom: 15, right: 150),
                decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                    width: 2,
                    color: const Color.fromRGBO(210, 221, 233, 1),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('+ 20% SALE BONUS',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                            Text('15,000',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 146, 1),
                                  fontSize: 20,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('+ 30% AMOUNT BONUS',
                                style: TextStyle(
                                  fontSize: 12,
                                )),
                            Text('15,000',
                                style: TextStyle(
                                  color: Color.fromRGBO(37, 57, 146, 1),
                                  fontSize: 20,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('TOTAL TWZ',
                                style: TextStyle(
                                    color: Color.fromRGBO(73, 84, 99, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                            Text('1,823,500.84',
                                style: TextStyle(
                                    color: Color.fromRGBO(44, 128, 255, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your Contribution will be calculated based on exchange rate at the moment your transaction is confirm.',
              style: TextStyle(
                color: Color.fromRGBO(255, 104, 104, 1),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 20,
              width: 200,
              child: Text('STEP 3'),
            ),
            const Text(
              'Make a payment',
              style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(37, 57, 146, 1),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'To get tokens please make a payment. You can send payment directly to our address or you may pay online. Once you paid, you will receive an email about the successfull deposit.',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                MaterialButton(
                  minWidth: 230,
                  height: 50,
                  color: const Color.fromRGBO(230, 239, 251, 1),
                  onPressed: () {},
                  child: const Text('Get address for Payment'),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(73, 84, 99, 1),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  minWidth: 230,
                  height: 50,
                  color: const Color.fromRGBO(44, 128, 255, 1),
                  onPressed: () {},
                  child: const Text(
                    'Get address for Payment',
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Tokens will appear in your account after payment successfully made and approved by our team. Please note that, TWZ tokens will distributed end of ICO Token Sales.',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 12,
                color: Color.fromRGBO(73, 84, 99, 1),
              ),
            ),
          ],
        ),
      ),
    );
