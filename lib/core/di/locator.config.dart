// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:dinesh_portfolio/core/di/third_party_module.dart' as _i10;
import 'package:dinesh_portfolio/core/repo_impl/project_repo_impl.dart' as _i7;
import 'package:dinesh_portfolio/core/use_cases/get_projects.dart' as _i4;
import 'package:dinesh_portfolio/core/use_cases/get_skills_usecase.dart' as _i5;
import 'package:dinesh_portfolio/core/use_cases/upload_project_usecase.dart'
    as _i9;
import 'package:dinesh_portfolio/presentation/home/project_bloc/project_bloc.dart'
    as _i6;
import 'package:dinesh_portfolio/presentation/home/themes/theme_bloc.dart'
    as _i8;

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
    final thirdPartyModule = _$ThirdPartyModule();
    gh.singletonAsync<_i3.FirebaseFirestore>(() => thirdPartyModule.fire);
    gh.singletonAsync<_i4.GetProjects>(() => thirdPartyModule.getProjects);
    gh.singletonAsync<_i5.GetSkillsUsecase>(() => thirdPartyModule.getSkill);
    gh.factory<_i6.ProjectBloc>(() => _i6.ProjectBloc());
    gh.singletonAsync<_i7.ProjectRepoImpl>(() => thirdPartyModule.proRepo);
    gh.factory<_i8.ThemeBloc>(() => _i8.ThemeBloc());
    gh.singletonAsync<_i9.UploadProjectUsecase>(
        () => thirdPartyModule.uploadusecase);
    return this;
  }
}

class _$ThirdPartyModule extends _i10.ThirdPartyModule {}
