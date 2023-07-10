import 'package:fashion_app/controllers/address/address_cubit.dart';
import 'package:fashion_app/config/routes/route_context.dart';
import 'package:fashion_app/core/extensions/theme_extension.dart';
import 'package:fashion_app/core/utils/strings.dart';
import 'package:fashion_app/view/delivery/pages/edit_address_page.dart';
import 'package:fashion_app/view/widgets/common/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomDeliveryAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDeliveryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const TextUtils(text: AppStrings.deliveryAddress),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          context.back();
        },
        icon: Icon(Icons.arrow_back_ios, color: context.primaryColor),
      ),
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                context.goTo(
                  BlocProvider.value(
                    value: BlocProvider.of<AddressCubit>(context),
                    child: const EditAddressPage(),
                  ),
                );
              },
              child: const TextUtils(text: AppStrings.add),
            ),
          ],
        ),
        const SizedBox(width: 10)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
