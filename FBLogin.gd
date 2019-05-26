extends Node2D

var facebookObj
var facebook_app_id = "FacebookID" #Don't add Facebook id Like fb123423765, Add only Digits


func _ready():
	if Engine.has_singleton("GodotFacebook"):
		print("*******\n Facebook found \n*******")
		facebookObj = Engine.get_singleton("GodotFacebook")
		facebookObj.init(facebook_app_id)
		facebookObj.setFacebookCallbackId(get_instance_id())
	
	pass # Replace with function body.


func _on_BtnFb_pressed():
	if facebookObj != null:
		facebookObj.login(["public_profile", "email"])
	pass # Replace with function body.


func login_success(token):
	print('Facebook login success: %s'%token)
	getUserDataFromFB()

func login_cancelled():
	print('Facebook login cancelled')

func login_failed(error):
	print('Facebook login failed: %s'%error)


func getUserDataFromFB():
	print("getUserDataFromFB")
	var callbckID = facebookObj.getFacebookCallbackId()
	print("\n ******* : callbckID : ",callbckID)
	facebookObj.userProfile(callbckID,"_fetch_UserProfile")

func _fetch_UserProfile(data):
	print("\n******Godot User Data")
	print("data : ",data)
	$TextEdit.text = str(data)