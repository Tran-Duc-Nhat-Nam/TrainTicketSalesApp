import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/models/ticket/ticket.dart';

import '../../../../common/styles/text_styles.dart';
import '../../../../widgets/app_screen.dart';

class TicketDetail extends StatefulWidget {
  const TicketDetail({super.key});

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  List<Tab> tabs = [];
  List<Widget> pages = [];
  late int id = GoRouterState.of(context).extra! as int;
  late Ticket ticket;

  @override
  void initState() {
    super.initState();
    for (int i = 1; i <= 6; i++) {
      tabs.add(
        Tab(
          text: "Toa $i",
        ),
      );
      pages.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('Toa $i'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      title: "Test",
      subtitle: 'Gia Sài Gòn -> Ga Hà Nội',
      child: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.surfaceContainer,
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelStyle: AppTextStyles.underlineLargeText,
                unselectedLabelStyle: AppTextStyles.largeText,
                indicatorColor: Theme.of(context).colorScheme.primary,
                tabs: tabs,
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                children: pages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
