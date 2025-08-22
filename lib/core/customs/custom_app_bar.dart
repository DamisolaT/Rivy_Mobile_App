import 'package:flutter/material.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: onBack ?? () => Navigator.pushReplacementNamed(
                      context,
                      NamedRouter.onboarding4Screen,
                    )
      ),
      elevation: 0,
      backgroundColor: const Color(0xFF2D5A4A),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
