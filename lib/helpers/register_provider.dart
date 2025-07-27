import 'package:coaching_app/provider/catagori.dart';
import 'package:coaching_app/provider/singelvideo_play_provider.dart';
import 'package:coaching_app/provider/video_provider.dart';
import 'package:provider/provider.dart';
import '../provider/address.dart';
import '../provider/allow_contact_provider.dart';
import '../provider/auth_provider.dart';
import '../provider/email.dart';
import '../provider/provides.dart';

var providers = [
  //New
  ChangeNotifierProvider<AuthProvider>(create: ((context) => AuthProvider())),
  // Old
  ChangeNotifierProvider<EmailProvider>(create: ((context) => EmailProvider())),

  ChangeNotifierProvider<AllowContactProvider>(
    create: ((context) => AllowContactProvider()),
  ),

  ChangeNotifierProvider<AddressProvider>(
    create: ((context) => AddressProvider()),
  ),
  ChangeNotifierProvider<ItemOptionIndex>(
    create: ((context) => ItemOptionIndex()),
  ),
  // ChangeNotifierProvider<DateTimeProvider>(
  //   create: ((context) => DateTimeProvider()),
  // ),
  ChangeNotifierProvider<VoucherProvider>(
    create: ((context) => VoucherProvider()),
  ),
  ChangeNotifierProvider<PlcaeMarkAddress>(
    create: ((context) => PlcaeMarkAddress()),
  ),
  ChangeNotifierProvider<GenericBool>(create: ((context) => GenericBool())),
  ChangeNotifierProvider<SelectedSubCat>(
    create: ((context) => SelectedSubCat()),
  ),
  ChangeNotifierProvider<GenericProvider>(
    create: ((context) => GenericProvider()),
  ),
  ChangeNotifierProvider<CartCounter>(create: ((context) => CartCounter())),
  ChangeNotifierProvider<CatagoriProvider>(
    create: ((context) => CatagoriProvider()),
  ),
  ChangeNotifierProvider<VideoProvider>(
    create: ((context) => VideoProvider()),
  ),
  ChangeNotifierProvider<SingelvideoPlayProvider>(
    create: ((context) => SingelvideoPlayProvider()),
  ),
];
