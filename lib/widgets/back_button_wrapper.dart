import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rivy_app/routes/namedroutehandler.dart'; // needed for SystemNavigator.pop


class BackHandler extends StatelessWidget {
  final Widget child;
  final BackActionType actionType;

  const BackHandler({
    super.key,
    required this.child,
    required this.actionType,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, 
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          switch (actionType) {
            case BackActionType.exitApp:
              SystemNavigator.pop(); 
              break;

            case BackActionType.goToOnboarding4:
              Navigator.pushReplacementNamed(
                context,
                NamedRouter.onboarding4Screen,
              );
              break;
          }
        }
      },
      child: child,
    );
  }
}

enum BackActionType {
  exitApp,
  goToOnboarding4,
}
