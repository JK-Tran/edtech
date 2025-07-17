ifeq ($(OS),Windows_NT)
    BUILD_CMD=.\build_and_run_app.bat
    METRICS_CMD=.\tools\dart_code_metrics.bat
    COMMIT_CHECK_CMD=.\tools\check_commit_message.bat
else
    BUILD_CMD=./build_and_run_app.sh
    METRICS_CMD=./tools/dart_code_metrics.sh
    COMMIT_CHECK_CMD=./tools/check_commit_message.sh
endif

update_app_icon:
	cd app && dart run flutter_launcher_icons -f app_icon/app-icon-production.yaml

update_app_icon_stg:
	cd app && dart run flutter_launcher_icons -f app_icon/app-icon-staging.yaml

update_splash:
	cd app && dart run flutter_native_splash:create flutter_native_splash.yaml

remove_splash:
	cd app && dart run flutter_native_splash:remove flutter_native_splash.yaml

l10n:
	@melos run l10n

test:
	@melos run test

test_app:
	@melos run test_app

test_shared:
	@melos run test_shared

clean:
	@melos clean

pub_get:
	@melos bootstrap

format:
	@melos run format

analyze:
	@melos run analyze

analyze_app:
	@melos run analyze_app

analyze_shared:
	@melos run analyze_shared

lint:
	@melos run lint

metrics:
	@melos run metrics

metrics_app:
	@melos run metrics_app

metrics_shared:
	@melos run metrics_shared

format_lint:
	@melos run format_lint

test_coverage:
	@melos run test_coverage

check_unused_files:
	@melos run check_unused_files

sync:
	@melos bootstrap
	@melos run l10n
	@melos run force_build_shared
	@melos run force_build_app

build_all:
	@melos run build_all
build_app:
	@melos run build_app
build_domain:
	@melos run build_domain
build_data:
	@melos run build_data
build_shared:
	@melos run build_shared
force_build_all:
	@melos run force_build_all
force_build_app:
	@melos run force_build_app
force_build_shared:
	@melos run force_build_shared
watch_all:
	@melos run watch_all
watch_app:
	@melos run watch_app
watch_shared:
	@melos run watch_shared
force_watch_all:
	@melos run force_watch_all
force_watch_app:
	@melos run force_watch_app
force_watch_shared:
	@melos run force_watch_shared

run_dev:
	cd tools && $(BUILD_CMD) develop run

run_qa:
	cd tools && $(BUILD_CMD) qa run

run_stg:
	cd tools && $(BUILD_CMD) staging run
	
run_prod:
	cd tools && $(BUILD_CMD) production run

build_dev_apk:
	cd tools && $(BUILD_CMD) develop build apk

build_qa_apk:
	cd tools && $(BUILD_CMD) qa build apk

build_stg_apk:
	cd tools && $(BUILD_CMD) staging build apk

build_prod_apk:
	cd tools && $(BUILD_CMD) production build apk

build_dev_bundle:
	cd tools && $(BUILD_CMD) develop build appbundle

build_qa_bundle:
	cd tools && $(BUILD_CMD) qa build appbundle

build_stg_bundle:
	cd tools && $(BUILD_CMD) staging build appbundle

build_prod_bundle:
	cd tools && $(BUILD_CMD) production build appbundle

build_dev_ios:
	cd tools && $(BUILD_CMD) develop build ios

build_qa_ios:
	cd tools && $(BUILD_CMD) qa build ios

build_stg_ios:
	cd tools && $(BUILD_CMD) staging build ios

build_prod_ios:
	cd tools && $(BUILD_CMD) production build ios

build_dev_ipa:
	cd tools && $(BUILD_CMD) develop build ipa --export-options-plist=ios/exportOptions.plist

build_qa_ipa:
	cd tools && $(BUILD_CMD) qa build ipa --export-options-plist=ios/exportOptions.plist

build_stg_ipa:
	cd tools && $(BUILD_CMD) staging build ipa --export-options-plist=ios/exportOptions.plist

build_prod_ipa:
	cd tools && $(BUILD_CMD) production build ipa --export-options-plist=ios/exportOptions.plist

pub_get_app:
	@melos run pub_get_app
pub_get_shared:
	@melos run pub_get_shared

dart_code_metrics:
	$(METRICS_CMD)s

check_commit_message:
	$(COMMIT_CHECK_CMD) "$(shell git log --format=%B -n 1 --no-merges $(BITBUCKET_COMMIT))"

gen_env:
	dart pub get --directory=tools/gen_env
	dart run tools/gen_env/lib/main.dart

pub_upgrade:
	melos pub_upgrade
	
pub_sync:
	cd tools && ./sync_all_pub_versions.sh
	melos bootstrap