import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:get/get.dart';
import 'package:pdp_foundation/app/controllers/study/quiz_controller.dart';
import 'package:pdp_foundation/app/data/models/quiz/question_model.dart';
import 'package:pdp_foundation/app/widgets/input_widget.dart';
import 'package:pdp_foundation/utils/constants/font_constants.dart';
import 'package:pdp_foundation/utils/extenstions/button_extenstion.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';
import 'package:pdp_foundation/utils/extenstions/text_style_extention.dart';

import '../../../../utils/extenstions/code_style.dart';
import '../../../data/models/quiz/classic_question_model.dart';
import '../../../data/models/quiz/code_completion_question_model.dart';
import '../../../data/models/quiz/code_output_prediction_question_model.dart';
import '../../../data/models/quiz/fill_in_blank_question_model.dart';
import '../../../data/models/quiz/multiple_choice_question_model.dart';
import '../../../data/models/quiz/quiz_model.dart';

part 'quiz_page.dart';
part 'quiz_animations.dart';
part 'quiz_widgets.dart';
