# 分abi打包脚本
flutter build apk --split-per-abi
LOCAL_DIR=$(
    cd $(dirname $0)
    pwd
)
PROJECT_DIR=$LOCAL_DIR/../..
mkdir $PROJECT_DIR/dist/ 2>/dev/null
cp -f $PROJECT_DIR/build/app/outputs/flutter-apk/app-arm64-v8a-release.apk $PROJECT_DIR/dist/
cp -f $PROJECT_DIR/build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk $PROJECT_DIR/dist/
cp -f $PROJECT_DIR/build/app/outputs/flutter-apk/app-x86_64-release.apk $PROJECT_DIR/dist/
