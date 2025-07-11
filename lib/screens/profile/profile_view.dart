import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'profile_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProfileViewModel(),
      child: Consumer<ProfileViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => context.go('/about_us'),
                child: Text('Go to About Us'),
              ),
            ),
          );
        },
      ),
    );
  }
}
