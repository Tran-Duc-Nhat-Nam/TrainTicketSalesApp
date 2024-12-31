import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/core/auth/auth_helper.dart';
import 'package:mobile/screens/login/add_info_screen.dart';
import 'package:mobile/screens/login/create_password_sceen.dart';
import 'package:mobile/screens/login/forget_password_screen.dart';
import 'package:mobile/screens/login/login_screen.dart';
import 'package:mobile/screens/login/otp_screen.dart';
import 'package:mobile/screens/login/signup_screen.dart';
import 'package:mobile/screens/main/activity/activity_history_screen.dart';
import 'package:mobile/screens/main/account/account_screen.dart';
import 'package:mobile/screens/main/activity/activity_screen.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_customer.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_payment_screen.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_receipt_screen.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_screen.dart';
import 'package:mobile/screens/main/home/ticket/booking/ticket_booking_ticket_screen.dart';
import 'package:mobile/screens/main/home/trip/trip_screen.dart';
import 'package:mobile/screens/main/home/trip/trip_list_screen.dart';
import 'package:mobile/screens/main/home/ticket/ticket_detail.dart';
import 'package:mobile/screens/qr/qr_screen.dart';
import 'package:mobile/screens/settings_screen.dart';
import 'package:mobile/screens/splash_screen.dart';
import 'package:mobile/widgets/app_drawer.dart';
import 'package:mobile/widgets/app_nav_bar.dart';
import 'package:mobile/widgets/transition/fade_transition.dart';

final _parentKey = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();
final drawerKey = GlobalKey<ScaffoldState>();

final GoRouter router = GoRouter(
  navigatorKey: _parentKey,
  initialLocation: "/splash",
  routes: [
    GoRoute(
      path: '/splash',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const SplashScreen(),
      ),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const SettingsScreen(),
      ),
    ),
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const LoginScreen(),
      ),
      redirect: (context, state) async {
        return (await AuthHelper.getAuth(),) == true ? '/' : null;
      },
    ),
    GoRoute(
      path: '/forgetPassword',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const ForgetPasswordScreen(),
      ),
    ),
    GoRoute(
      path: '/signup',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const SignupScreen(),
      ),
    ),
    GoRoute(
      path: '/otp',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        OtpScreen(),
      ),
    ),
    GoRoute(
      path: '/createPassword',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const CreatePasswordSceen(),
      ),
    ),
    GoRoute(
      path: '/addInfo',
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const AddInfoScreen(),
      ),
    ),
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _parentKey,
      pageBuilder: (context, state, navigationShell) => fadingNavigation(
        context,
        state,
        Builder(
          builder: (context) => Scaffold(
            key: drawerKey,
            drawer: const AppDrawer(),
            body: AppNavBar(
              navigationShell: navigationShell,
            ),
          ),
        ),
      ),
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellKey,
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) => fadingNavigation(
                context,
                state,
                const TripScreen(),
              ),
              routes: [
                GoRoute(
                  path: 'trip',
                  pageBuilder: (context, state) => fadingNavigation(
                    context,
                    state,
                    const TripListScreen(),
                  ),
                  routes: [
                    GoRoute(
                      path: 'booking',
                      pageBuilder: (context, state) => fadingNavigation(
                        context,
                        state,
                        const TicketBookingScreen(),
                      ),
                      routes: [
                        GoRoute(
                          path: 'customer',
                          pageBuilder: (context, state) => fadingNavigation(
                            context,
                            state,
                            const TicketBookingCustomerScreen(),
                          ),
                        ),
                        GoRoute(
                          path: 'ticket',
                          pageBuilder: (context, state) => fadingNavigation(
                            context,
                            state,
                            const TicketBookingTicketScreen(),
                          ),
                        ),
                        GoRoute(
                          path: 'payment',
                          pageBuilder: (context, state) => fadingNavigation(
                            context,
                            state,
                            const TicketBookingPaymentScreen(),
                          ),
                        ),
                        GoRoute(
                          path: 'receipt',
                          pageBuilder: (context, state) => fadingNavigation(
                            context,
                            state,
                            const TicketBookingReceiptScreen(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GoRoute(
                  path: 'ticket',
                  pageBuilder: (context, state) => fadingNavigation(
                    context,
                    state,
                    TicketDetail(),
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/activity',
                pageBuilder: (context, state) => fadingNavigation(
                      context,
                      state,
                      const ActivityScreen(),
                    ),
                routes: [
                  GoRoute(
                    path: 'history',
                    pageBuilder: (context, state) => fadingNavigation(
                      context,
                      state,
                      const ActivityHistoryScreen(),
                    ),
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/account',
              pageBuilder: (context, state) => fadingNavigation(
                context,
                state,
                const AccountScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: "/qr",
      pageBuilder: (context, state) => fadingNavigation(
        context,
        state,
        const QrScreen(),
      ),
    ),
  ],
);
