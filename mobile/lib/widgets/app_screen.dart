import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/routes.dart';

import '../common/styles/text_styles.dart';

import 'dart:math' as math;

class AppScreen extends StatefulWidget {
  const AppScreen({
    super.key,
    this.title = '',
    required this.child,
    this.isAppBar = true,
    this.subtitle,
    this.isDrawer = true,
    this.isChildScrollView = false,
    this.footer,
  });

  final bool isAppBar;
  final bool isDrawer;
  final bool isChildScrollView;
  final Widget? footer;
  final String title;
  final String? subtitle;
  final Widget child;

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: widget.isAppBar
          ? AppBar(
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.onPrimaryContainer,
                      Theme.of(context).colorScheme.primary
                    ],
                    begin: Alignment(-1.0, 0.0),
                    end: Alignment(1.0, 0.0),
                    stops: [0.0, 1.0],
                    transform: GradientRotation(math.pi / 4),
                  ),
                ),
              ),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              centerTitle: true,
              title: widget.subtitle != null
                  ? Column(
                      children: [
                        Text(widget.title),
                        Text(widget.subtitle!),
                      ],
                    )
                  : GestureDetector(
                child: Text(widget.title),
              ),
              titleTextStyle: AppTextStyles.appBarTitle,
              automaticallyImplyLeading: false,
              leading: context.canPop() ? Padding(
                padding: const EdgeInsets.only(left: 12),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white,),
                  iconSize: 28,
                  onPressed: () => context.pop(),
                ),
              ) : null,
              actions: [
                IconButton(
                  icon: Icon(Icons.menu, color: Colors.white,),
                  iconSize: 28,
                  onPressed: () {
                    drawerKey.currentState!.openDrawer();
                  },
                ),
                const SizedBox(width: 12,)
              ],
            )
          : null,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: widget.isChildScrollView
              ? widget.child
              : LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: constraints.copyWith(
                          minHeight: constraints.maxHeight,
                          maxHeight: double.infinity,
                        ),
                        child: widget.child,
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
