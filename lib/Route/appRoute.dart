import 'package:myapp/Pages/create_account.dart';
import 'package:myapp/Pages/home_page.dart';
import 'package:myapp/Pages/login_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    createAccount: (context) => CreateAccount(),
    homepage: (context) => HomePage()
  };

  static const login = '/';
  static const createAccount = '/create-account';
  static const homepage = '/home';
}
