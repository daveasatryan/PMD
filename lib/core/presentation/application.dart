import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:pmd_solutions/core/data/utilities/bloc/bloc_factory.dart';
import 'package:pmd_solutions/core/data/utilities/sl/service_locator_factory.dart';
import 'package:pmd_solutions/core/presentation/utilities/routes/app_routes.dart';
import 'package:pmd_solutions/core/presentation/views/product_list_screen/bloc/product_list_bloc.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_state.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends BaseState<Application> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => context.read<BlocFactory>().create<ProductListBloc>(),
      child: MultiProvider(
        providers: [
          Provider(create: (context) => BlocFactory(getIt: GetIt.instance)),
          Provider(create: (context) => SlFactory(getIt: GetIt.instance)),
        ],
        child: Builder(
          builder: (context) {
            return LayoutBuilder(
              builder: (context, constraints) {
                return ScreenUtilInit(
                  designSize: Size(constraints.maxWidth, constraints.maxHeight),
                  minTextAdapt: true,
                  splitScreenMode: true,
                  builder: (context, _) {
                    return ResponsiveWrapper.builder(
                      MaterialApp.router(
                        debugShowCheckedModeBanner: false,
                        routerConfig: AppRoutes.router,
                      ),

                      minWidth: 450,
                      defaultScale: true,
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
