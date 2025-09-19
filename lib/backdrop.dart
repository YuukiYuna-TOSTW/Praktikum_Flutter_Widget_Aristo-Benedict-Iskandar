import 'package:flutter/material.dart';

import 'model/product.dart';

// TODO: Add velocity constant (104)
const double _kFlingVelocity = 2.0;

class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  const Backdrop({
    required this.currentCategory,
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
    Key? key,
  }) : super(key: key);

  @override
  _BackdropState createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  // Animation controller
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      value: 1.0,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(covariant Backdrop oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentCategory != oldWidget.currentCategory) {
      _toggleBackdropLayerVisibility();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // fungsi untuk cek front layer
  bool get _frontLayerVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  void _toggleBackdropLayerVisibility() {
    _controller.fling(
        velocity: _frontLayerVisible ? -_kFlingVelocity : _kFlingVelocity);
  }

  // buildStack dengan context dan constraints
  Widget _buildStack(BuildContext context, BoxConstraints constraints) {
    const double layerTitleHeight = 48.0;
    final Size layerSize = constraints.biggest;
    final double layerTop = layerSize.height - layerTitleHeight;

    // RelativeRectTween Animation
    Animation<RelativeRect> layerAnimation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(
          0.0, layerTop, 0.0, layerTop - layerSize.height),
      end: const RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
    ).animate(_controller.view);

    return Stack(
      key: _backdropKey,
      children: <Widget>[
        // backLayer dibungkus ExcludeSemantics
        ExcludeSemantics(
          child: widget.backLayer,
          excluding: _frontLayerVisible,
        ),
        // frontLayer pakai PositionedTransition
        PositionedTransition(
          rect: layerAnimation,
          child: _FrontLayer(
            child: widget.frontLayer,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      // TODO: Replace leading menu icon with IconButton (104)
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: _toggleBackdropLayerVisibility,
      ),
      title: const Text('SHRINE'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search, semanticLabel: 'search'),
          onPressed: () {
            // TODO: Add open login (104)
          },
        ),
        IconButton(
          icon: const Icon(Icons.tune, semanticLabel: 'filter'),
          onPressed: () {
            // TODO: Add open login (104)
          },
        ),
      ],
    );

    return Scaffold(
      appBar: appBar,
      // TODO: Return a LayoutBuilder widget (104)
      body: LayoutBuilder(builder: _buildStack),
    );
  }
}

// FrontLayer
class _FrontLayer extends StatelessWidget {
  // TODO: Add on-tap callback (104)
  const _FrontLayer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // TODO: Add a GestureDetector (104)
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
