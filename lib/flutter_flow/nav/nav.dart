import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const SignUpWidget() : const SignInWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const SignUpWidget() : const SignInWidget(),
        ),
        FFRoute(
          name: 'LP1',
          path: '/lp1',
          builder: (context, params) => const Lp1Widget(),
        ),
        FFRoute(
          name: 'LP3',
          path: '/lp3',
          builder: (context, params) => const Lp3Widget(),
        ),
        FFRoute(
          name: 'LP2',
          path: '/lp2',
          builder: (context, params) => const Lp2Widget(),
        ),
        FFRoute(
          name: 'SignIn',
          path: '/signIn',
          builder: (context, params) => const SignInWidget(),
        ),
        FFRoute(
          name: 'Name',
          path: '/name',
          builder: (context, params) => const NameWidget(),
        ),
        FFRoute(
          name: 'SMURL',
          path: '/smurl',
          builder: (context, params) => const SmurlWidget(),
        ),
        FFRoute(
          name: 'MentorHome',
          path: '/mentorHome',
          builder: (context, params) => const MentorHomeWidget(),
        ),
        FFRoute(
          name: 'MentorProfile',
          path: '/mentorProfile',
          builder: (context, params) => const MentorProfileWidget(),
        ),
        FFRoute(
          name: 'TalentFavourite',
          path: '/talentFavourite',
          builder: (context, params) => const TalentFavouriteWidget(),
        ),
        FFRoute(
          name: 'NotificationPage',
          path: '/notificationPage',
          builder: (context, params) => const NotificationPageWidget(),
        ),
        FFRoute(
          name: 'MessageList',
          path: '/messageList',
          builder: (context, params) => const MessageListWidget(),
        ),
        FFRoute(
          name: 'ExpertiseSelection',
          path: '/expertiseSelection',
          builder: (context, params) => const ExpertiseSelectionWidget(),
        ),
        FFRoute(
          name: 'TalentHome',
          path: '/talentHome',
          builder: (context, params) => const TalentHomeWidget(),
        ),
        FFRoute(
          name: 'uploadingpage',
          path: '/uploadingpage',
          builder: (context, params) => const UploadingpageWidget(),
        ),
        FFRoute(
          name: 'MentorTalentSelected',
          path: '/mentorTalentSelected',
          builder: (context, params) => const MentorTalentSelectedWidget(),
        ),
        FFRoute(
          name: 'UserDOB',
          path: '/userDOB',
          builder: (context, params) => const UserDOBWidget(),
        ),
        FFRoute(
          name: 'UserRoleSelection',
          path: '/userRoleSelection',
          builder: (context, params) => const UserRoleSelectionWidget(),
        ),
        FFRoute(
          name: 'TalentSelection',
          path: '/talentSelection',
          builder: (context, params) => const TalentSelectionWidget(),
        ),
        FFRoute(
          name: 'UserProfile',
          path: '/userProfile',
          builder: (context, params) => const UserProfileWidget(),
        ),
        FFRoute(
          name: 'TalentMessage',
          path: '/talentMessage',
          builder: (context, params) => const TalentMessageWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => const SignUpWidget(),
        ),
        FFRoute(
          name: 'MentorTalentView',
          path: '/mentorTalentView',
          builder: (context, params) => MentorTalentViewWidget(
            name: params.getParam(
              'name',
              ParamType.String,
            ),
            age: params.getParam(
              'age',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'createpost',
          path: '/createpost',
          builder: (context, params) => const CreatepostWidget(),
        ),
        FFRoute(
          name: 'MentorMessage1',
          path: '/mentorMessage1',
          builder: (context, params) => const MentorMessage1Widget(),
        ),
        FFRoute(
          name: 'chat_2_Details',
          path: '/chat2Details',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2DetailsWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'chat_2_main',
          path: '/chat2Main',
          builder: (context, params) => const Chat2MainWidget(),
        ),
        FFRoute(
          name: 'chat_2_InviteUsers',
          path: '/chat2InviteUsers',
          asyncParams: {
            'chatRef': getDoc(['chats'], ChatsRecord.fromSnapshot),
          },
          builder: (context, params) => Chat2InviteUsersWidget(
            chatRef: params.getParam(
              'chatRef',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'image_Details',
          path: '/imageDetails',
          asyncParams: {
            'chatMessage':
                getDoc(['chat_messages'], ChatMessagesRecord.fromSnapshot),
          },
          builder: (context, params) => ImageDetailsWidget(
            chatMessage: params.getParam(
              'chatMessage',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'TalentHomeCopy',
          path: '/talentHomeCopy',
          builder: (context, params) => TalentHomeCopyWidget(
            post: params.getParam(
              'post',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'postviewtalent',
          path: '/postviewtalent',
          builder: (context, params) => PostviewtalentWidget(
            post: params.getParam(
              'post',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'postlikes',
          path: '/postlikes',
          asyncParams: {
            'ddddd': getDoc(['post'], PostRecord.fromSnapshot),
          },
          builder: (context, params) => PostlikesWidget(
            ddddd: params.getParam(
              'ddddd',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'MentorHomeCopy',
          path: '/mentorHomeCopy',
          builder: (context, params) => const MentorHomeCopyWidget(),
        ),
        FFRoute(
          name: 'TalentMentorView',
          path: '/talentMentorView',
          builder: (context, params) => const TalentMentorViewWidget(),
        ),
        FFRoute(
          name: 'chat_2_mentor',
          path: '/chat2Mentor',
          builder: (context, params) => const Chat2MentorWidget(),
        ),
        FFRoute(
          name: 'EditinfoMentor',
          path: '/editinfoMentor',
          builder: (context, params) => const EditinfoMentorWidget(),
        ),
        FFRoute(
          name: 'EditinfoTalent',
          path: '/editinfoTalent',
          builder: (context, params) => const EditinfoTalentWidget(),
        ),
        FFRoute(
          name: 'addsocialsMentor',
          path: '/addsocialsMentor',
          builder: (context, params) => const AddsocialsMentorWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/signIn';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/SPLASH_SCREEN.svg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}