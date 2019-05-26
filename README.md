# FBloginGodotiOS
Contain module code for facebook login in godot engine 3.1 and 3.1.1


## For Video Check oput Below link
# [VideoLink](https://www.youtube.com/watch?v=eOmpZzYMKOE)


**NOTE:-** I used xcode 10.1 with developer account, Facebook login will work if you selecte **Log In with Phone Number or Email Address** option. If you select **Log In with the Facebook App** in login page then your application received login cancelled error.(Its a bug, Work is in progress) 

**After You Export Your Project:**


1. Copy Bolts.framework, FBSDKCoreKit.framework, FBSDKLoginKit.framework and FBSDKShareKit.framework in you project folder.[Image](https://imgur.com/jT7EFHr)
2. In Xcode, Select `Target>Build Phases>Link Binart with Libraries` add above framework. (Select + button, Add Other)
3. In Build `Settings > Other Linker Flags` set `-ObjC`
4. Add Below settings in your info.plist file, you will get this from FB developer account.

```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>fbapi</string>
  <string>fb-messenger-share-api</string>
  <string>fbauth2</string>
  <string>fbshareextension</string>
</array>
<key>CFBundleURLTypes</key>
<array>
  <dict>
  <key>CFBundleURLSchemes</key>
  <array>
    <string>fb223***AppID****565</string>
  </array>
  </dict>
</array>
<key>FacebookAppID</key>
<string>223***AppID****565</string>
<key>FacebookDisplayName</key>
<string>GodotLogin</string>

```
**NSAppTransportSecurity**
```
<key>NSAppTransportSecurity</key>
	<dict>
		<key>NSAllowsArbitraryLoads</key>
		<true/>
	</dict>
```
