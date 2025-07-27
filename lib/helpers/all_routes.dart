import 'dart:io';
import 'package:coaching_app/common_widgets/videoplay_widget.dart';
import 'package:coaching_app/features/assessment/auth/age/presentation/age_screen.dart';
import 'package:coaching_app/features/assessment/auth/calorie/presentation/calorie_screen.dart';
import 'package:coaching_app/features/assessment/auth/complete_your_profile_screen/presentation/complete_your_profile_screen.dart';
import 'package:coaching_app/features/assessment/auth/create_new_password_screen/presentation/create_new_password_screen.dart';
import 'package:coaching_app/features/assessment/auth/experience_prior_to_training/presentation/experience_prior_to_%20training_screen.dart';
import 'package:coaching_app/features/assessment/auth/forget_password/presentation/forget_password_screen.dart';
import 'package:coaching_app/features/assessment/auth/gender/presentation/gender_screen.dart';
import 'package:coaching_app/features/assessment/auth/kg/presentation/kg_screen.dart';
import 'package:coaching_app/features/assessment/auth/otp/presentation/otp_screen.dart';
import 'package:coaching_app/features/assessment/auth/sign_in_screen/presentation/sign_in_screen.dart';
import 'package:coaching_app/features/assessment/auth/training_goal/presentation/training_goal_screen.dart';
import 'package:coaching_app/features/assessment/auth/training_plan/presentation/training_plan_screen.dart';
import 'package:coaching_app/features/assessment/auth/weeks/presentation/weeks_screen.dart';
import 'package:coaching_app/features/update_home/add/presentation/add_screen.dart';
import 'package:coaching_app/features/update_home/add_new_work/presentation/add_new_workout_screen.dart';
import 'package:coaching_app/features/update_home/categorise_meal/presentation/categorise_meal_screen.dart';
import 'package:coaching_app/features/update_home/change_password/presentation/change_password_screen.dart';
import 'package:coaching_app/features/update_home/contact_support/presentation/user_message_screen.dart';
import 'package:coaching_app/features/update_home/creat_own_work_out/presentation/training_screen.dart';
import 'package:coaching_app/features/update_home/creat_own_work_out_two_screen/presentation/creat_own_work_out_two_screen.dart';
import 'package:coaching_app/features/update_home/creat_own_work_three/creat_own_work_three_screen.dart';
import 'package:coaching_app/features/update_home/faq/presentation/qustion_screen.dart';
import 'package:coaching_app/features/update_home/how_you_trial_works/presentation/how_you_trial_works_screen.dart';
import 'package:coaching_app/features/update_home/manage_subcription/presentation/manage_subcription_screen.dart';
import 'package:coaching_app/features/update_home/meal_details/presentation/omelett_screen.dart';
import 'package:coaching_app/features/update_home/menu/presentation/menu_screen.dart';
import 'package:coaching_app/features/update_home/my_meals/presentation/my_meals_screen.dart';
import 'package:flutter/cupertino.dart';
import '../features/assessment/auth/height/presentation/height_screen.dart';
import '../features/assessment/auth/sign_up_screen/presentation/sign_up_screen.dart';
import '../features/update_home/Meals/presentation/meals_planes_screen.dart';
import '../features/update_home/creat_own_meal/presentation/creat_own_meal_screen.dart';
import '../features/update_home/home/presentation/home.dart';
import '../features/update_home/programs/presentation/programs_intro.dart';
import '../features/update_home/programs/presentation/programs_workout_details.dart';
import '../features/update_home/programs/presentation/workout_details.dart';
import '../features/update_home/workout/presentation/strength_fitness_screen.dart';
import '../features/update_home/workout/presentation/workout.dart';
import '../navigation_screen.dart';

final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;
  static const String choosePlanScreen = '/choosePlanScreen';
  static const String signInScreen = '/signInScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String signUpTwoScreen = '/signUpTwoScreen';
  static const String completeYourProfileScreen = '/completeYourProfileScreen';
  static const String trainingGoalScreen =   '/trainingGoalScreen';
  static const String genderScreen = '/genderScreen';
  static const String ageScreen = '/ageScreen';
  static const String kgScreen = '/kgScreen';
  static const String heightScreen = '/heighitScreen';
  static const String experienceToPriorToTrainingScreen = '/experienceToPriorToTrainingScreen';
  static const String trainingplanScreen = '/trainingplanScreen';
  static const String weeksScreen = '/weeksScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String createNewPassWordScreen = '/createNewPassWordScreen';
  static const String homeScreen = '/homeScreen';
  static const String videoplayWidget = '/videoplayWidget';
  static const String navigationScreen = '/navigationScreen';
  static const String workoutScreen = '/workoutScreen';
  static const String calorieScreen = '/calorieScreen';
  static const String programsIntro = '/programsIntro';
  static const String programsWorkoutDetails = '/programsWorkoutDetails';
  static const String workoutDetails = '/workoutDetails';
  static const String mealsPlansScreen = '/mealsPlansScreen';
  static const String strengthFitnessScreen = '/strengthFitnessScreen';
  static const String trainingScreen = '/trainingImageScreen';
  static const String myMealsScreen = '/myMealsScreen';
  static const String omelettScreen = '/omelettScreen';
  static const String menuScreen = '/menuScreen';
  static const String manageSubcriptionScreen = '/manageSubcriptionScreen';
  static const String userMessageScreen = '/userMessageScreen';
  static const String qustionScreen = '/qustionScreen';
  static const String categoriseMealScreen = '/categoriseMealScreen';
  static const String changePassworsScreen = '/changePassworsScreen';
  static const String howYouTrialWorksScreen = '/howYouTrialWorksScreen';
  static const String creatOwnMealScreen = '/creatOwnMealScreen';
  static const String addScreen = '/addScreen';
  static const String addNewWorkoutScreen = '/addNewWorkoutScreen';
  static const String creatOwnWorkOutTwoScreen = '/creatOwnWorkOutTwoScreen';
  static const String creatOwnWorkThreeScreen = '/creatOwnWorkThreeScreen';



}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signInScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SignInScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SignInScreen());

      case Routes.signUpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: SignUpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => SignUpScreen());

      case Routes.completeYourProfileScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: CompleteYourProfileScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => CompleteYourProfileScreen());

      case Routes.trainingGoalScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: TrainingGoalScreen(),
                settings: settings)
            : CupertinoPageRoute(
                builder: (context) => TrainingGoalScreen());

      case Routes.genderScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: GenderScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => GenderScreen());

      case Routes.ageScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: AgeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AgeScreen());

      case Routes.kgScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: KgScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => KgScreen());

      case Routes.heightScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HeightScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HeightScreen());

      case Routes.experienceToPriorToTrainingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: ExperienceToPriorToTrainingScreen(), settings: settings)
            : CupertinoPageRoute(
                builder: (context) => ExperienceToPriorToTrainingScreen());

      case Routes.homeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HomeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HomeScreen());

      case Routes.navigationScreen:
        final args = settings.arguments as Map? ?? {};
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: BottomNavBar(pageNum: args['pageNum']),
                settings: settings)
            : CupertinoPageRoute(
                builder: (context) => BottomNavBar(pageNum: args['pageNum']));

      case Routes.workoutScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: WorkoutScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => WorkoutScreen());


      case Routes.trainingplanScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: TrainingplanScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => TrainingplanScreen());

      case Routes.weeksScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: WeeksScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => WeeksScreen());

      case Routes.calorieScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CalorieScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CalorieScreen());

      case Routes.forgetPasswordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ForgetPasswordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ForgetPasswordScreen());

      case Routes.otpScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: OtpScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OtpScreen());

      case Routes.createNewPassWordScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CreateNewPassWordScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CreateNewPassWordScreen());
      case Routes.programsIntro:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ProgramsIntro(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ProgramsIntro());
      case Routes.programsWorkoutDetails:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ProgramsWorkoutDetails(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ProgramsWorkoutDetails());
      case Routes.mealsPlansScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: MealsPlansScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => MealsPlansScreen());

      case Routes.workoutDetails:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: WorkoutDetails(), settings: settings)
            : CupertinoPageRoute(builder: (context) => WorkoutDetails());
      case Routes.videoplayWidget:
      
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: VideoplayWidget(), settings: settings)
            : CupertinoPageRoute(builder: (context) => VideoplayWidget());

      case Routes.strengthFitnessScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: StrengthFitnessScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => StrengthFitnessScreen());

      case Routes.trainingScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: TrainingScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => TrainingScreen());

      case Routes.myMealsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: MyMealsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => MyMealsScreen());

      case Routes.omelettScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: OmelettScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => OmelettScreen());

      case Routes.menuScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: MenuScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => MenuScreen());

      case Routes.manageSubcriptionScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ManageSubcriptionScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ManageSubcriptionScreen());

      case Routes.userMessageScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: UserMessageScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => UserMessageScreen());


      case Routes.qustionScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: QustionScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => QustionScreen());

      case Routes.categoriseMealScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CategoriseMealScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CategoriseMealScreen());


      case Routes.changePassworsScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: ChangePassworsScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => ChangePassworsScreen());


      case Routes.howYouTrialWorksScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: HowYouTrialWorksScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => HowYouTrialWorksScreen());

      case Routes.creatOwnMealScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CreatOwnMealScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CreatOwnMealScreen());

      case Routes.addScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: AddScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AddScreen());

      case Routes.addNewWorkoutScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: AddNewWorkoutScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => AddNewWorkoutScreen());

      case Routes.creatOwnWorkOutTwoScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CreatOwnWorkOutTwoScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CreatOwnWorkOutTwoScreen());

      case Routes.creatOwnWorkThreeScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: CreatOwnWorkThreeScreen(), settings: settings)
            : CupertinoPageRoute(builder: (context) => CreatOwnWorkThreeScreen());


      case Routes.videoplayWidget:
        return Platform.isAndroid
            ? _FadedTransitionRoute(widget: VideoplayWidget(), settings: settings)
            : CupertinoPageRoute(builder: (context) => VideoplayWidget());


      default:
        return null;
    }
  }
}

// ignore: unused_element
class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
