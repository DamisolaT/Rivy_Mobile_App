import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivy_app/routes/namedroutehandler.dart';
import 'package:rivy_app/routes/namedrouter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: false,
      fontSizeResolver: FontSizeResolvers.height,
      child: MaterialApp(
        routes: Iroutes,
        debugShowCheckedModeBanner: false,
         // use centralized route name
        initialRoute: NamedRouter.splash,          
      ),
    );
  }
}
