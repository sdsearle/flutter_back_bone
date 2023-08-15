// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'Interactor/ExampleInteractor.dart' as _i3;
import 'Interactor/SecondInteractor.dart' as _i6;
import 'Navigator/Navi.dart' as _i5;
import 'Repo/ExampleRepo.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.ExampleInteractor>(() => _i3.ExampleInteractor());
    gh.factory<_i4.ExampleRepo>(() => _i4.ExampleRepo());
    gh.factory<_i5.Navi>(() => _i5.Navi());
    gh.factory<_i6.SecondInteractor>(() => _i6.SecondInteractor());
    return this;
  }
}
