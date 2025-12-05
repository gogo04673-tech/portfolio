import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/widgets/left_side.dart';

class HomeDesktopPage extends StatefulWidget {
  const HomeDesktopPage({super.key});

  @override
  State<HomeDesktopPage> createState() => _HomeDesktopPageState();
}

class _HomeDesktopPageState extends State<HomeDesktopPage> {
  // @override
  // bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    // super.build(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height,

      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: LeftSide(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  with AutomaticKeepAliveClientMixin<HomeDesktopPage>