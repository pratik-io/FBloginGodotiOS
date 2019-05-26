def can_build(env, plat):
    return plat=="android" or plat=="iphone"

def configure(env):
    if (env['platform'] == 'android'):
        env.android_add_maven_repository("url 'https://maven.google.com'")
        #env.android_add_default_config("manifestPlaceholders = [FACEBOOK_APP_ID: '843075892565403']")
        env.android_add_dependency("compile 'com.facebook.android:facebook-android-sdk:4.33.+'")
        env.android_add_to_manifest("android/AndroidManifestChunk.xml")
        env.android_add_java_dir("android/src/")
        env.android_add_res_dir("android/res/")
        #env.disable_module()
    if env['platform'] == "iphone":
        env.Append(FRAMEWORKPATH=['modules/GodotFacebook/ios/'])
        env.Append(LINKFLAGS=['-ObjC', '-framework', 'FBSDKCoreKit', '-framework', 'FBSDKLoginKit', '-framework', 'FBSDKShareKit', '-framework', 'Bolts'])
	pass
