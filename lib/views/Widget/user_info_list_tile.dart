import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile( 
      {super.key, required this.model,  
     });
  
final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          model.image,
          width: 100,
          height: 100,
        ),
        title: Column(
          children: [
            Text(
             model.title,
              style: AppStyles.styleSemiBold16(context),
            ),
            Text(
              model.subTiitle,
              style: AppStyles.styleRegular12(context),
            ),
          ],
        ),
      ),
    );
  }
}
