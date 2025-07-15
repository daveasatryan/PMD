import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pmd_solutions/core/presentation/utilities/count_provider.dart';
import 'package:pmd_solutions/core/presentation/utilities/routes/app_routes.dart';
import 'package:pmd_solutions/core/presentation/widgets/base_stateless_widget.dart';
import 'package:provider/provider.dart';

class BaseAppBarWidget extends BaseStatelessWidget
    implements PreferredSizeWidget {
  BaseAppBarWidget({
    super.key,
    required this.title,
    this.routeFromCard = false,
  });
  final bool routeFromCard;
  final String title;
  @override
  Widget baseBuild(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: colors.lableColor)),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Stack(
            children: [
              IconButton(
                onPressed: clickToCardIcon,
                icon: Icon(Icons.shopping_basket, color: colors.lableColor),
              ),

              Consumer<CountProvider>(
                builder: (context, cuntProvider, child) {
                  return cuntProvider.count != 0 && cuntProvider.count != null
                      ? Positioned(
                        right: 8,
                        top: 8,
                        child: Container(
                          padding: EdgeInsets.all(1.sp),
                          decoration: BoxDecoration(
                            color: colors.redColor,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            cuntProvider.count.toString(),
                            style: TextStyle(
                              color: colors.whiteColor,
                              fontSize: 10,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                      : const SizedBox();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  void clickToCardIcon() {
    routeFromCard == false
        ? GoRouter.of(context).push(AppRoutes.cardRoute)
        : ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('You are in Card screen')));
  }

  @override
  Size get preferredSize => Size.fromHeight(71.sp);
}
