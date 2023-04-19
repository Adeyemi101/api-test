import 'package:flutter/material.dart';
import 'package:giftify/views/404.dart';
import 'package:giftify/views/home/chart_page.dart';
import 'package:giftify/views/home/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    dynamic args = settings.arguments;
    switch (settings.name) {
      case '/HomePage':
        return MaterialPageRoute(builder: (_) => HomePage());
      // case '/ChartPage':
      //   return MaterialPageRoute(builder: (_) =>  ChartPage());
      // case '/ShoeDetails':
      //   return MaterialPageRoute(
      //       builder: (_) => ShoeDetails(routeArgument: args));
      // case '/LiveView':
      //   return MaterialPageRoute(builder: (_) => LiveView(routeArgument: args, shoeName: '', shoeUrl: '',));
      // case '/Register':
      //   return MaterialPageRoute(builder: (_) => RegisterPage());
      // case '/RegisterPlayer':
      // return MaterialPageRoute(builder: (_) => RegisterPlayerPage());
      // case '/RegisterCashier':
      // return MaterialPageRoute(builder: (_) => RegisterCashierPage());
      // case '/FindPlayer':
      //   return MaterialPageRoute(builder: (_) => FindPlayerPage());
      // case '/ChangePassword':
      //   return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      // case '/ContactUs':
      //   return MaterialPageRoute(builder: (_) => ContactUsPage());
      // case '/InfoPage':
      //   return MaterialPageRoute(builder: (_) => InfoPage(routeArgument: args));
      // case '/LeaderboardPage':
      //   return MaterialPageRoute(
      //       builder: (_) => LeaderboardPage(routeArgument: args));
      // case '/Home':
      //   return MaterialPageRoute(
      //       builder: (_) => IndexPage(
      //             currentTab: 0,
      //           ));
      // case '/Bets':
      //   return MaterialPageRoute(
      //       builder: (_) => IndexPage(
      //             currentTab: 1,
      //           ));
      // case '/Play':
      //   return MaterialPageRoute(
      //       builder: (_) => IndexPage(
      //             currentTab: 2,
      //           ));
      // case '/Deposit':
      //   return MaterialPageRoute(
      //       builder: (_) => IndexPage(
      //             currentTab: 3,
      //           ));
      // case '/Account':
      //   return MaterialPageRoute(
      //       builder: (_) => IndexPage(
      //             currentTab: 4,
      //           ));
      // case '/Profile':
      //   return MaterialPageRoute(builder: (_) => ProfilePage());
      // case '/Terms-Conditions':
      //   return MaterialPageRoute(builder: (_) => TermsAndConditionsPage());
      // case '/PrivacyPolicy':
      //   return MaterialPageRoute(builder: (_) => PrivacyPolicyPage());
      // case '/Privacy-Policy':
      //   return MaterialPageRoute(builder: (_) => PrivacyPolicyPage());
      // case '/PlayPage':
      //   return MaterialPageRoute(builder: (_) => Play(routeArgument: args));
      // case '/WithdrawPage':
      //   return MaterialPageRoute(builder: (_) => WithdrawPage());
      // case '/DepositPage':
      //   return MaterialPageRoute(builder: (_) => FundAccountPage());
      // case '/TransactionPage':
      //   return MaterialPageRoute(
      //       builder: (_) => TransactionPage(routeArgument: args));
      // case '/CashierPage':
      //   return MaterialPageRoute(builder: (_) => CashierHome());
      // case '/TransferPage':
      //   return MaterialPageRoute(
      //       builder: (_) => TransferPage(routeArgument: args));
      // case '/CommissionPage':
      //   return MaterialPageRoute(
      //       builder: (_) => CommissionPage(routeArgument: args));
      // case '/LeaderboardPage':
      //   return MaterialPageRoute(
      //       builder: (_) => LeaderboardPage(routeArgument: args));
      // case '/CheckTicket':
      //   return MaterialPageRoute(builder: (_) => CheckTicketPage());
      // case '/TicketInfoPage':
      //   return MaterialPageRoute(builder: (_) => TicketInfoPage());
      // case '/SeachTournamentPage':
      //   return MaterialPageRoute(builder: (_) => TournamentHomePage());
      // case '/CreateTournament':
      //   return MaterialPageRoute(builder: (_) => CreateTournamentPage());
      // case '/JoinTournament':
      //   return MaterialPageRoute(
      //       builder: (_) => JoinTournamentPage(routeArgument: args));
      // case '/ClaimBetForm':
      //   return MaterialPageRoute(
      //       builder: (_) => ClaimBetForm(routeArgument: args));
      // case '/PlayerBetPage':
      //   return MaterialPageRoute(
      //       builder: (_) => PlayerBetPage(routeArgument: args));
      default:
        return MaterialPageRoute(
            builder: (_) => NotFound(page: settings.name!));
    }
  }
}
