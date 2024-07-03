import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'lp3_model.dart';
export 'lp3_model.dart';

class Lp3Widget extends StatefulWidget {
  const Lp3Widget({super.key});

  @override
  State<Lp3Widget> createState() => _Lp3WidgetState();
}

class _Lp3WidgetState extends State<Lp3Widget> {
  late Lp3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lp3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.19),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/Rectangle_5.svg',
                    width: 398.0,
                    height: 716.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.27, -1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/Rectangle_2_(1).svg',
                    width: 379.0,
                    height: 674.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.08, 1.14),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('SignIn');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Group_59.svg',
                      width: 262.0,
                      height: 269.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.02, -0.89),
                child: Text(
                  'Welcome to',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.09, -0.78),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/VAUICE_LOGO_NO_BG_2.png',
                    width: 300.0,
                    height: 161.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, 0.36),
                child: Text(
                  'Intro to Vauice',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.58, 0.87),
                child: Text(
                  'Next',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.44),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(90.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/Progress_bar_(3).svg',
                          width: 184.0,
                          height: 14.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.8, 0.86),
                child: Icon(
                  Icons.arrow_forward,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}