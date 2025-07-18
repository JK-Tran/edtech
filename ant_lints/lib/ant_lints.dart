import 'src/index.dart';

PluginBase createPlugin() => _AntLintsPlugin();

class _AntLintsPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) {
    return [
      const MissingRunBlocCatching(),
      const AvoidUnnecessaryAsyncFunction(),
      const AvoidHardCodedColors(),
      const LinesLongerThan100Chars(),
      const PreferNamedParameters(),
      const MissingCallingResponsive(),
      const AvoidHardCodedTextStyle(),
      const MissingListenWhen(),
      const MissingBuildWhen(),
      const MissingBuildWhenOrListenWhen(),
      const PreferIsEmptyString(),
      const PreferIsNotEmptyString(),
      const IncorrectTodoComment(),
    ];
  }
}
