import 'package:animation_cheat_page/shared/material_import.dart';
import 'package:animation_cheat_page/shared/network/urls.dart';
import 'package:animation_cheat_page/transitions/align.dart';
import 'package:animation_cheat_page/transitions/decorated_box.dart';
import 'package:animation_cheat_page/transitions/default_text_style.dart';
import 'package:animation_cheat_page/transitions/fade.dart';
import 'package:animation_cheat_page/transitions/positioned.dart';
import 'package:animation_cheat_page/transitions/relative_positioned.dart';
import 'package:animation_cheat_page/transitions/rotation.dart';
import 'package:animation_cheat_page/transitions/scale.dart';
import 'package:animation_cheat_page/transitions/size.dart';
import 'package:animation_cheat_page/transitions/slide.dart';

final allTransitions = [
  Example(
    title: 'SlideTransition',
    body: "Slide transition moves widget X times of it's dimention.",
    url: '$rootUrl/blob/master/lib/transitions/slide.dart',
    builder: (animation, child) => SlideExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'ScaleTransition',
    body: 'Scale transition changes the size of the widget.',
    url: '$rootUrl/blob/master/lib/transitions/scale.dart',
    builder: (animation, child) => ScaleExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'RotationTransition',
    body: 'TODO: pass the number of rotation',
    url: '$rootUrl/blob/master/lib/transitions/rotation.dart',
    builder: (animation, child) => RotationExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'SizeTransition',
    body: 'TODO: difference between size and scale',
    url: '$rootUrl/blob/master/lib/transitions/size.dart',
    builder: (animation, child) => SizeExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'FadeTransition',
    body: 'TODO',
    url: '$rootUrl/blob/master/lib/transitions/fade.dart',
    builder: (animation, child) => FadeExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'PositionedTransition',
    body: 'TODO',
    url: '$rootUrl/blob/master/lib/transitions/positioned.dart',
    builder: (animation, child) => PositionedExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'RelativePositionedTransition',
    body: 'TODO',
    url: '$rootUrl/blob/master/lib/transitions/relative_positioned.dart',
    builder: (animation, child) => RelativePositionedExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'DecoratedBoxTransition',
    body: 'A really interesting transition that allows a bunch of transtions. '
        '\nIMPORTANT: Might not work with widgets that already use box '
        'decorations like Container and Material!!',
    url: '$rootUrl/blob/master/lib/transitions/decorated_box.dart',
    builder: (animation, child) => DecoratedBoxExample(
      animation: animation,
    ),
  ),
  Example(
    title: 'AlignTransition',
    body: 'Wanna change the alignment to the parent? This is the perfect'
        ' widget!',
    url: '$rootUrl/blob/master/lib/transitions/align.dart',
    builder: (animation, child) => AlignExample(
      animation: animation,
      child: child,
    ),
  ),
  Example(
    title: 'DefaultTextStyleTransition',
    body: 'Amazing for animating all the text styles!',
    url: '$rootUrl/blob/master/lib/transitions/default_text_style.dart',
    builder: (animation, child) => DefaultTextStyleExample(
      animation: animation,
    ),
  ),
];

class Example {
  const Example({
    @required this.title,
    @required this.body,
    @required this.url,
    @required this.builder,
  })  : assert(title != null),
        assert(url != null),
        assert(body != null),
        assert(builder != null);

  final String title;
  final String body;
  final String url;
  final Widget Function(Animation<double> animation, Widget child) builder;
}
