import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:ican/screens/home/controller.dart';

class HomeAds extends StatelessWidget {
  final HomePageController controller;
  const HomeAds({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        SizedBox(
          // height: 178,
          height: 188,
          child: PageView.builder(
            itemCount: controller.pages.length,
            controller: controller.pageController,
            onPageChanged: (page) => controller.currentPage = page,
            itemBuilder: (context, index) {
              return FlipCard(
                fill: Fill
                    .fillBack, // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL, // default
                side: CardSide.FRONT, // The side to initially display.
                front: ValueListenableBuilder(
                  valueListenable: controller.currentPageValue,
                  builder: (context, page, _) {
                    return AnimatedContainer(
                      margin: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: controller.currentPage != index ? 18 : 8,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      duration: const Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(controller.front[index]),
                              fit: BoxFit.cover),
                          color: const Color.fromARGB(255, 89, 88, 88),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                back: ValueListenableBuilder(
                  valueListenable: controller.currentPageValue,
                  builder: (context, page, _) {
                    return AnimatedContainer(
                      margin: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: controller.currentPage != index ? 18 : 8,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      duration: const Duration(milliseconds: 300),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(controller.back[index]),
                              fit: BoxFit.cover),
                          color: const Color.fromARGB(255, 89, 88, 88),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.25),
                              blurRadius: 4,
                              offset: const Offset(0, 4),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 8,
          child: Center(
            child: ListView.separated(
              itemCount: controller.pages.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                return ValueListenableBuilder(
                  valueListenable: controller.currentPageValue,
                  builder: (context, page, _) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      
                      height: 8,
                      width: controller.currentPage == index ? 20 : 8,
                      decoration: BoxDecoration(
                        color:  Colors.yellow,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
