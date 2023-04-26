import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class BuildListViewBuilder extends StatelessWidget {
  const BuildListViewBuilder({
    super.key,
    required this.servicesImgs,
    required this.servicesName,
  });

  final List servicesImgs;
  final List servicesName;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          height: 150,
          child: GestureDetector(
            onTap: () {
              debugPrint('________you Clicked on Services_________');
              Navigator.of(context).pushNamed('/topServices');
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 5,
              color: AppColors.getStartedColorEnd,
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width * 0.33,
                    //color: Colors.white,
                    color: Colors.transparent,
                    child: SizedBox(
                      //height: double.maxFinite,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: Hero(
                        tag: 'DemoTag-${servicesImgs[index]}',
                        child: Image.asset(
                          //AppImage.doctor1 + 'doctor1.jpg',
                          'assets/images/category/' + servicesImgs[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            servicesName[index],
                            style: Theme.of(context).textTheme.bodyMedium,
                            // style: TextStyle(
                            //   fontSize: 18,
                            //   color: Colors.white,
                            //   fontWeight: FontWeight.bold,
                            // ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'Dental',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.star_border,
                                color: Colors.red,
                                size: 16,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              Text(
                                '(20)',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Spacer(
                                flex: 7,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
