String rename(Map<String, String> env) {
  String signedStr = "";
  if(env["isSigned"] == "true") {
    signedStr = "_signed";
  }
  String channelStr = "";
  if(env.containsKey("channel")) {
    channelStr = env["channel"]!;
  }
  String jiaguStr = "";
  if(env["isJiagu"] == "true") {
    jiaguStr = "_jiagu";
  }
  return "${env["appName"]}_${env["versionCode"]}${channelStr}${jiaguStr}${signedStr}.apk";
}
