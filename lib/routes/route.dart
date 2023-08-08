import 'package:go_router/go_router.dart';
import '../screens/export.dart';

class RouteClass {
  static final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: '/accueil',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/apropos-de-moi',
        builder: (context, state) => const AboutScreen(),
      ),
    ],
    redirect: (context,state){
      if (state.fullPath == "") {
        return "/accueil";
      }
      return null;
    }
  );
}