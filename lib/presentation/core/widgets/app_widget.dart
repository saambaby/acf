import 'package:acf/presentation/core/page_view_wrapper.dart';
import 'package:acf/presentation/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/size_config.dart';

class AcfApp extends StatelessWidget {
  const AcfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfiguration(
      builder: (_) => MaterialApp(
          title: 'Acf',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          home: const PageWrapper()),
    );
    // return MultiBlocProvider(
    //   providers: [],
    //   child:
    // );
  }
}
