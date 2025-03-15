import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/controllers/home/home_controller.dart';
import 'package:pdp_foundation/app/data/models/home/home_model.dart';
import 'package:pdp_foundation/app/features/screens/auth/auth_page.dart';
import 'package:pdp_foundation/app/features/screens/splash/splash_page.dart';
import 'package:pdp_foundation/app/routes/app_routes.dart';
import 'package:pdp_foundation/app/widgets/cashed_network_image_widget.dart';
import 'package:pdp_foundation/app/widgets/heatmap_widget.dart';
import 'package:pdp_foundation/domain/entities/home/heatmap_entity.dart';
import 'package:pdp_foundation/domain/entities/home/streak_entity.dart';
import 'package:pdp_foundation/utils/constants/brand_constants.dart';
import 'package:pdp_foundation/utils/constants/icon_constants.dart';
import 'package:pdp_foundation/utils/extenstions/button_extenstion.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';
import 'package:pdp_foundation/utils/extenstions/context_extension.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';
import 'package:pdp_foundation/utils/services/token_service.dart';
import 'package:table_calendar/table_calendar.dart';


import '../../../../domain/entities/home/home_user_entity.dart';
import '../../../widgets/streak_calendar_widget.dart';

part 'home_page.dart';
part 'home_animations.dart';
part 'home_widgets.dart';
