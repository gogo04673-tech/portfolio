import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/responsive/responsive_builder.dart';
import 'package:portfolio/core/service_locator/main_service_locator.dart';
import 'package:portfolio/features/services/presentation/bloc/budget_event.dart';
import 'package:portfolio/features/services/presentation/bloc/budgets_bloc.dart';
import 'package:portfolio/features/services/presentation/layouts/services_desktop.dart';
import 'package:portfolio/features/services/presentation/layouts/services_mobile.dart';
import 'package:portfolio/features/services/presentation/layouts/services_tablet.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ServicesBloc>()..add(LoadServices()),
      child: const ResponsiveBuilder(
        mobile: ServicesMobile(),
        tablet: ServicesTablet(),
        web: ServicesDesktop(),
      ),
    );
  }
}
