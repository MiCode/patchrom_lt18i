#
# Makefile for lt18i 
#

# The original zip file, MUST be specified by each product
local-zip-file     := lt18i_4.1.C.0.7.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
#local-out-zip-file := MIUI_lt18i.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SemcCamera3D

local-modified-jars := #HTCExtension

local-miui-modified-apps := MiuiHome #ThemeManager Mms TelephonyProvider MiuiSystemUI

local-miui-removed-apps  := Phone MediaProvider

# All apps need to be removed from original ZIP file
local-remove-apps   := AdobeFlashPlayer Conversations datatrafficswitch DigitalClockWidget EventStream EventStreamPluginCallLog EventStreamPluginFacebook EventStreamPluginTelephony EventStreamPluginTwitter FBIAppShare FBMediaDiscovery FBSetupwizard FBCalendarSync FBMusicLike FBNotificationPublisher GenieWidget JapaneseIME letsgolf_ay livewaremanager MagicSmokeWallpapers Maps MediaWidget MusicWidget officesuite PhotoWidget playnowclientarvato POBoxSknPink POBoxSknWood PostViewer retaildemo SemcDeskClock SemcDlna SEMCFacebookProxy SemcVideoEdit StatusSwitch storefront SyncWizard Talk TimescapeRssPlugin TimescapeSpline TimescapeWidget trackid TtsService usersupport VisualizationWallpapers WallpaperPicker WeatherWidget widgetdigitalclock widgetfavouritepeople widgetonoff WikipediaPlugin wisepilot YouTube YouTubeKaraokePlugin YouTubePlugin facebook SemcTelephonyProvider SemcContactsProvider LocalContacts SimContacts Phonebook SemcMusic SemcCalendar SemcGallery3D UpdateCenter SEMCSetupWizard PhaseBeam OmaDatasyncService Home Galaxy4 NoiseField SystemUI InfiniteView Gallery2 SemcSettings OemCryptoReceiver Videos textinput-tng

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
#	cp misc/com.google.android.maps.jar $(ZIP_DIR)/system/framework/
#	@echo Add google apks
#	cp misc/apk/* $(ZIP_DIR)/system/app/
#	@echo Replace build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp other/Lt18iSettings.apk $(ZIP_DIR)/system/app/Lt18iSettings.apk

local-test:
	echo "an example action"
