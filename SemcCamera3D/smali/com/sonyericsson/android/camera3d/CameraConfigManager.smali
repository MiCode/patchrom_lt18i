.class public Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$1;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$DestinationToSave;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$SweepDirection;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Toggle;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$TouchCapture;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Microphone;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$SelfTimer;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$PhotoLight;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoFormat;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Geotag;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$SmileLevel;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Sound;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$FocusMode;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Scene;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Resolution;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$CapturingMode;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraMode;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$ExposureCompensation;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;,
        Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO_16_BY_9:I = 0x1

.field public static final ASPECT_RATIO_4_BY_3:I = 0x0

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_RUNTIME:Ljava/lang/String; = "runtime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DATA_FOLDER_PATH:Ljava/lang/String; = "/data/data/"

.field static final EV:[Ljava/lang/String; = null

.field public static final FORCE_SHUTTER_SOUND_KEY:Ljava/lang/String; = "ro.camera.sound.forced"

.field public static final FORCE_SHUTTER_SOUND_VALUE:Ljava/lang/String; = "1"

.field public static final FREE_SHUTTER_SOUND_VALUE:Ljava/lang/String; = "0"

.field public static final INFINITE:I = -0x1

.field private static final PREFIX_CAMERA:Ljava/lang/String; = "CAMERA_"

.field private static final PREFIX_CAMERA_3D:Ljava/lang/String; = "CAMERA_3D_"

.field public static final PREFIX_CAMERA_ORDER:Ljava/lang/String; = "CAMERA_ORDER_CATEGORY_"

.field private static final PREFIX_DEVICE_FRONT:Ljava/lang/String; = "DEVICE_FRONT_"

.field private static final PREFIX_DEVICE_MAIN:Ljava/lang/String; = "DEVICE_MAIN_"

.field private static final PREFIX_FORCE_CHANGED_VALUE:Ljava/lang/String; = "FORCE_CHANGED_"

.field private static final PREFIX_MODE_NORMAL:Ljava/lang/String; = "MODE_NORMAL_"

.field private static final PREFIX_MODE_SCENE_RECOG:Ljava/lang/String; = "MODE_SCENE_RECOG_"

.field private static final PREFIX_MODE_SMILE_SHUT:Ljava/lang/String; = "MODE_SMILE_SHUT_"

.field public static final PREFIX_ORDER:Ljava/lang/String; = "SORT_ORDER_OF_"

.field private static final PREFIX_RESOLUTION:Ljava/lang/String; = "RESOLUTION_"

.field private static final PREFIX_SWEEP_DIRECTION:Ljava/lang/String; = "SWEEP_DIRECTION_"

.field private static final PREFIX_VIDEO:Ljava/lang/String; = "VIDEO_"

.field public static final PREFIX_VIDEO_ORDER:Ljava/lang/String; = "VIDEO_ORDER_CATEGORY_"

.field public static final SHARED_PREFERENCES_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.shared_preferences"

.field public static final SHARED_PREFERENCES_CAMERA_3D:Ljava/lang/String; = "com.sonyericsson.android.camera3d.shared_preferences"

.field private static final SHARED_PREFS_EXT:Ljava/lang/String; = ".xml"

.field private static final SHARED_PREFS_PATH:Ljava/lang/String; = "/shared_prefs/"

.field private static final TAG:Ljava/lang/String; = "CameraConfigManager"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field private static final sCameraDefaultSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstraintMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;",
            ">;"
        }
    .end annotation
.end field

.field static final sConversationKeys:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;

.field private static final sFrontCameraDefaultSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFrontVideoDefaultSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHasShutterKey:Z

.field public static final sIsFrontCameraSupported:Z

.field private static final sVideoDefaultSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

.field private mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

.field private mCameraOrderFrontNormal:Ljava/lang/String;

.field private mCameraOrderMainNormal:Ljava/lang/String;

.field private mCameraOrderMainSceneRecog:Ljava/lang/String;

.field private mCameraOrderMainSmileShut:Ljava/lang/String;

.field private mCameraSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraSettingsFrontNormal:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraSettingsMainNormal:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceChangedValueCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

.field private mForceChangedValueFrontCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

.field private mForceChangedValueFrontVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

.field private mForceChangedValueVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

.field private mFrontValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

.field private mIsForceSound:Z

.field private mIsMmsIn:Z

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxDurationMillisecs:J

.field private mMaxFileSizeBytes:J

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

.field private mResolution:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferencesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private mSweepDirection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOrderFrontNormal:Ljava/lang/String;

.field private mVideoOrderMainNormal:Ljava/lang/String;

.field private mVideoSettings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSettingsFrontNormal:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSettingsMainNormal:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-wide/32 v9, 0x46cd0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sHasShutterKey:Z

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    .line 179
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    const-string v1, "MMS"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;

    const-wide/16 v3, -0x1

    invoke-direct {v2, v3, v4, v9, v10}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    const-string v1, "Flickr"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;

    const-wide/16 v3, 0x5a

    const-wide/32 v5, 0x9600000

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    const-string v1, "YouTube"

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;

    const-wide/16 v3, 0x258

    const-wide v5, 0x80000000L

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;-><init>(JJ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-array v0, v8, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;

    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;

    const-string v2, "mms_max_size"

    invoke-direct {v1, v2, v9, v10}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;-><init>(Ljava/lang/String;J)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConversationKeys:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;

    .line 484
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "m6_3"

    aput-object v1, v0, v7

    const-string v1, "m5_3"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "m4_3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m3_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m2_3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "m1_3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zero"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "p1_3"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "p2_3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "p3_3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "p4_3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "p5_3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "p6_3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->EV:[Ljava/lang/String;

    .line 665
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    .line 668
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PANORAMA_3D"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PANORAMA_3D_STANDARD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "sports"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "MULTI"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "zero"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PHOTOLIGHT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "SELFTIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "center-weighted"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "MIDDLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "GEOTAG_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "SOUND1"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "SCREEN_BUTTON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "MAIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "LEFT_2_RIGHT"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "INTERNAL_MASS_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    .line 711
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "NORMAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "INFINITY"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "zero"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "PHOTOLIGHT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "SELFTIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "center-weighted"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "MIDDLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "GEOTAG_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "SOUND1"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "VIEW_FINDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "FRONT"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v2, "INTERNAL_MASS_STORAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    .line 744
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "CHANGE_MODE_IN_VIDEO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "HD"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "FACE_DETECTION"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "zero"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "PHOTOLIGHT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "SELFTIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "center-weighted"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "SOUND1"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "MIC_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_FORMAT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "VIDEO_FORMAT_MPEG4"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sHasShutterKey:Z

    if-eqz v0, :cond_0

    .line 771
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "MAIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    .line 785
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "CHANGE_MODE_IN_VIDEO"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "INFINITY"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "zero"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "PHOTOLIGHT_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "SELFTIMER_OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "center-weighted"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "SOUND1"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "MIC_ON"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_FORMAT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "VIDEO_FORMAT_MPEG4"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sHasShutterKey:Z

    if-eqz v0, :cond_1

    .line 805
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    :goto_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "FRONT"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    return-void

    .line 774
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "VIEW_FINDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 808
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v2, "VIEW_FINDER"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraActivity;)V
    .locals 5
    .parameter "cameraActivity"

    .prologue
    const/4 v3, 0x0

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mListenerList:Ljava/util/ArrayList;

    .line 149
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsMmsIn:Z

    .line 152
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    .line 823
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 826
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readSystemProperties()V

    .line 828
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createMainValueMap()V

    .line 830
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setDefaultSettings()V

    .line 832
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setupSharedPreferences()V

    .line 834
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    .line 835
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    const-string v3, "PANORAMA_3D"

    const-string v4, "PANORAMA_3D_STANDARD"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    const-string v3, "MULTI_ANGLE"

    const-string v4, "MULTI_ANGLE_16_BY_9"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    const-string v3, "PANORAMA_2D"

    const-string v4, "PANORAMA_2D_STANDARD"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    .line 840
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    const-string v3, "PANORAMA_3D"

    const-string v4, "LEFT_2_RIGHT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    const-string v3, "MULTI_ANGLE"

    const-string v4, "LEFT_2_RIGHT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    const-string v3, "PANORAMA_2D"

    const-string v4, "LEFT_2_RIGHT"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraActivity;->mBackFromMainCamera:Z

    if-nez v2, :cond_0

    .line 852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAMERA_3D_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, key:Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 856
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 863
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private applyAllCameraSettings()V
    .locals 3

    .prologue
    .line 2060
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2061
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2062
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 2063
    .local v1, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->applyCameraSetting(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 2066
    .end local v1           #key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_0
    return-void
.end method

.method private applyCameraSetting(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2082
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfigManager$CameraSettings:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2195
    :goto_0
    return-void

    .line 2084
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setCapturingMode(Ljava/lang/String;)V

    .line 2194
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->log(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2088
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setSweepDirection(Ljava/lang/String;)V

    .line 2090
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->restartPreview(Ljava/lang/Object;)V

    goto :goto_1

    .line 2094
    :pswitch_2
    const-string v1, "VIEW_FINDER"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SCREEN_BUTTON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2096
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setTouchCapturingMode(Z)V

    goto :goto_1

    .line 2098
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->setTouchCapturingMode(Z)V

    goto :goto_1

    .line 2103
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureWidth(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureHeight(Ljava/lang/String;)I

    move-result v3

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPreviewWidth(Ljava/lang/String;)I

    move-result v4

    invoke-static {p2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPreviewHeight(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/CameraController;->setResolution(IIII)V

    goto :goto_1

    .line 2111
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setScene(Ljava/lang/String;)V

    goto :goto_1

    .line 2115
    :pswitch_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 2119
    :pswitch_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setEv(Ljava/lang/String;)V

    goto :goto_1

    .line 2123
    :pswitch_7
    const-string v1, "PHOTOLIGHT_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2124
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setPhotoLight(Z)V

    goto :goto_1

    .line 2126
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->setPhotoLight(Z)V

    goto :goto_1

    .line 2131
    :pswitch_8
    const-string v1, "SELFTIMER_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "SELFTIMER_2SECONDS"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2133
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setSelfTimer(Z)V

    goto :goto_1

    .line 2135
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->setSelfTimer(Z)V

    goto/16 :goto_1

    .line 2140
    :pswitch_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setPhotometry(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2144
    :pswitch_a
    const-string v1, "ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2145
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setImageStabilizer(IZ)V

    goto/16 :goto_1

    .line 2152
    :pswitch_b
    const-string v1, "HIGH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2153
    const/16 v0, 0x46

    .line 2161
    .local v0, threshold:I
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->setSmileLevel(I)V

    goto/16 :goto_1

    .line 2154
    .end local v0           #threshold:I
    :cond_6
    const-string v1, "MIDDLE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2155
    const/16 v0, 0x37

    .restart local v0       #threshold:I
    goto :goto_2

    .line 2156
    .end local v0           #threshold:I
    :cond_7
    const-string v1, "LOW"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2157
    const/16 v0, 0x28

    .restart local v0       #threshold:I
    goto :goto_2

    .line 2159
    .end local v0           #threshold:I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2165
    :pswitch_c
    const-string v1, "GEOTAG_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseAnyLocationProvider()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2166
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setGeoTag(Z)V

    goto/16 :goto_1

    .line 2168
    :cond_9
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->setGeoTag(Z)V

    goto/16 :goto_1

    .line 2173
    :pswitch_d
    const-string v1, "OFF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2174
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->setPlayMode(I)V

    goto/16 :goto_1

    .line 2175
    :cond_a
    const-string v1, "SOUND1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2176
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->setPlayMode(I)V

    goto/16 :goto_1

    .line 2178
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2183
    :pswitch_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2187
    :pswitch_f
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2082
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private applyChangedCameraSettings(Ljava/util/EnumMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2071
    .local p1, previousSettings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2072
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2073
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 2074
    .local v1, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v3, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2075
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->applyCameraSetting(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 2079
    .end local v1           #key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_1
    return-void
.end method

.method private createFrontValueMap()V
    .locals 31

    .prologue
    .line 1086
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "NORMAL"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v17, list_resolution:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "VGA"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v18, list_scene:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "auto"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v7, list_focusmode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "INFINITY"

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v5, list_ev:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "zero"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v14, list_photo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "PHOTOLIGHT_ON"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    const-string v27, "PHOTOLIGHT_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v22, list_timer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "SELFTIMER_ON"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    const-string v27, "SELFTIMER_2SECONDS"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    const-string v27, "SELFTIMER_OFF"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    .local v12, list_metering:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "center-weighted"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v10, list_hjr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "ON"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    const-string v27, "OFF"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v20, list_smile:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "HIGH"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    const-string v27, "MIDDLE"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    const-string v27, "LOW"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    .local v9, list_geotag:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "GEOTAG_ON"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    const-string v27, "GEOTAG_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .local v21, list_sound:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "SOUND1"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 1140
    const-string v27, "OFF"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    .local v26, list_wb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "auto"

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v23, list_touch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "VIEW_FINDER"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    sget-boolean v27, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sHasShutterKey:Z

    if-eqz v27, :cond_1

    .line 1151
    const-string v27, "OFF"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v6, list_flash:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "off"

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v16, list_reset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v24, list_v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "CHANGE_MODE_IN_VIDEO"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v25, list_videosize:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-nez v27, :cond_3

    .line 1169
    const-string v27, "MMS"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v19, list_scene_v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "auto"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v8, list_focusmode_v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "INFINITY"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v15, list_photo_video:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "PHOTOLIGHT_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v11, list_hjr_video:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "OFF"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1202
    .local v13, list_mic:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "MIC_ON"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    const-string v27, "MIC_OFF"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v4, list_camera_mode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v27, "FRONT"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    const-string v27, "MAIN"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    return-void

    .line 1171
    .end local v4           #list_camera_mode:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #list_focusmode_v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #list_hjr_video:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #list_mic:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #list_photo_video:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #list_scene_v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v27, "VGA"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v27, "QVGA"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isMmsIn()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1174
    const-string v27, "MMS"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private createMainValueMap()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NORMAL"

    aput-object v3, v2, v4

    const-string v3, "SCENE_RECOGNITION"

    aput-object v3, v2, v5

    const-string v3, "SMILE_DETECTION"

    aput-object v3, v2, v6

    const-string v3, "PANORAMA_3D"

    aput-object v3, v2, v7

    const-string v3, "PANORAMA_2D"

    aput-object v3, v2, v8

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PANORAMA_3D"

    aput-object v3, v2, v4

    const-string v3, "MULTI_ANGLE"

    aput-object v3, v2, v5

    const-string v3, "PANORAMA_2D"

    aput-object v3, v2, v6

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_3D"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PANORAMA_3D_16_BY_9"

    aput-object v3, v2, v4

    const-string v3, "PANORAMA_3D_STANDARD"

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    const-string v1, "MULTI_ANGLE"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "MULTI_ANGLE_16_BY_9"

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    const-string v1, "PANORAMA_2D"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "PANORAMA_2D_STANDARD"

    aput-object v3, v2, v4

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "PHOTOLIGHT_ON"

    aput-object v3, v2, v4

    const-string v3, "PHOTOLIGHT_OFF"

    aput-object v3, v2, v5

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "LEFT_2_RIGHT"

    aput-object v3, v2, v4

    const-string v3, "RIGHT_2_LEFT"

    aput-object v3, v2, v5

    const-string v3, "TOP_2_BOTTOM"

    aput-object v3, v2, v6

    const-string v3, "BOTTOM_2_TOP"

    aput-object v3, v2, v7

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    return-void
.end method

.method private createValueList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1236
    .local v4, listItem:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    .end local v4           #listItem:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public static getEV()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->EV:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getExternalStorageType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 657
    const-string v0, "MEMORY_CARD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "SdCard"

    .line 660
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Emmc"

    goto :goto_0
.end method

.method private getIsSelectableFromCategory(Ljava/lang/Object;[[Z)Z
    .locals 5
    .parameter "category"
    .parameter "map"

    .prologue
    .line 1578
    const/4 v1, 0x1

    .line 1580
    .local v1, isSelectable:Z
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_1

    .line 1581
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v2

    .line 1582
    .local v2, row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1583
    .local v0, column:I
    aget-object v3, p2, v2

    aget-boolean v1, v3, v0

    .line 1593
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_0
    :goto_0
    return v1

    .line 1584
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_0

    .line 1585
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ordinal()I

    move-result v2

    .line 1586
    .restart local v2       #row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1587
    .restart local v0       #column:I
    if-eqz p2, :cond_0

    .line 1588
    aget-object v3, p2, v2

    aget-boolean v1, v3, v0

    goto :goto_0
.end method

.method private getIsSelectableFromCategoryAndKey(Ljava/lang/Object;Ljava/lang/Object;[[Z)Z
    .locals 4
    .parameter "category"
    .parameter "key"
    .parameter "map"

    .prologue
    .line 1644
    const/4 v1, 0x1

    .line 1646
    .local v1, isSelectable:Z
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_3

    .line 1647
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v2

    .line 1648
    .local v2, row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p2, v3, :cond_2

    .line 1649
    const-string p2, "auto"

    .line 1653
    .end local p2
    :cond_0
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1654
    .local v0, column:I
    aget-object v3, p3, v2

    aget-boolean v1, v3, v0

    .line 1669
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_1
    :goto_1
    return v1

    .line 1650
    .restart local v2       #row:I
    .restart local p2
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p2, v3, :cond_0

    .line 1651
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, key:Ljava/lang/String;
    goto :goto_0

    .line 1655
    .end local v2           #row:I
    .restart local p1
    .local p2, key:Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_1

    .line 1656
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ordinal()I

    move-result v2

    .line 1657
    .restart local v2       #row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p2, v3, :cond_5

    .line 1658
    const-string p2, "auto"

    .line 1662
    .end local p2           #key:Ljava/lang/Object;
    :cond_4
    :goto_2
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    check-cast p2, Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1663
    .restart local v0       #column:I
    aget-object v3, p3, v2

    aget-boolean v1, v3, v0

    goto :goto_1

    .line 1659
    .end local v0           #column:I
    .restart local p2       #key:Ljava/lang/Object;
    :cond_5
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p2, v3, :cond_4

    .line 1660
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .local p2, key:Ljava/lang/String;
    goto :goto_2
.end method

.method private getNumberOfOptions(Ljava/lang/Object;)I
    .locals 2
    .parameter "category"

    .prologue
    .line 1680
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getValueList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1681
    .local v1, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1682
    .local v0, numberOfOptions:I
    if-eqz v1, :cond_0

    .line 1683
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1687
    :cond_0
    return v0
.end method

.method private getOriginalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "cameraMode"

    .prologue
    .line 2275
    instance-of v1, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v1, :cond_2

    .line 2276
    const-string v1, "FRONT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2277
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2290
    .local v0, value:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 2291
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2293
    :cond_0
    return-object v0

    .line 2279
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 2281
    .end local v0           #value:Ljava/lang/String;
    :cond_2
    instance-of v1, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v1, :cond_4

    .line 2282
    const-string v1, "FRONT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2283
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 2285
    .end local v0           #value:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 2288
    .end local v0           #value:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getResolutionAspectRatio(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1703
    const/4 v0, 0x0

    return v0
.end method

.method private getSharedPreferences(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "mode"
    .parameter "create"

    .prologue
    .line 2542
    const/4 v1, 0x0

    .line 2545
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2565
    :cond_0
    :goto_0
    return-object v1

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    .local v0, e:Ljava/lang/Exception;
    if-eqz p4, :cond_0

    .line 2553
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 2562
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0

    .line 2557
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getSharedPrefsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shared_prefs/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2571
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getStringValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "sharedPrefs"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 2660
    const-string v2, "PHOTO_MAIN_PARAMS_"

    .line 2661
    .local v2, keyString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2663
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2664
    const-string v7, ""

    invoke-interface {p2, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2671
    .local v5, valueString:Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2673
    .local v6, values:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-le v7, v9, :cond_0

    .line 2674
    aget-object v3, v6, v9

    .line 2681
    .local v3, splitValue:Ljava/lang/String;
    const/16 v7, 0x40

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2682
    .local v1, index:I
    add-int/lit8 v4, v1, 0x1

    .line 2684
    .local v4, start:I
    if-lez v1, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 2685
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2689
    .end local v1           #index:I
    .end local v3           #splitValue:Ljava/lang/String;
    .end local v4           #start:I
    .end local v5           #valueString:Ljava/lang/String;
    .end local v6           #values:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getVideoSize(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "quality"
    .parameter "originalValue"

    .prologue
    const-wide/16 v2, 0x0

    .line 1265
    move-object v0, p3

    .line 1266
    .local v0, video_size:Ljava/lang/String;
    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 1268
    const-string v0, "MMS"

    .line 1277
    :cond_0
    :goto_0
    return-object v0

    .line 1269
    :cond_1
    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 1271
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FRONT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1272
    const-string v0, "VGA"

    goto :goto_0

    .line 1274
    :cond_2
    const-string v0, "HD"

    goto :goto_0
.end method

.method public static hasShutterKey()Z
    .locals 1

    .prologue
    .line 1460
    sget-boolean v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sHasShutterKey:Z

    return v0
.end method

.method public static isFrontCameraSupported()Z
    .locals 3

    .prologue
    .line 1513
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1514
    const/4 v0, 0x1

    .line 1519
    .local v0, supported:Z
    :goto_0
    return v0

    .line 1516
    .end local v0           #supported:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #supported:Z
    goto :goto_0
.end method

.method private isSaved(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 1523
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_0

    .line 1524
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    .line 1530
    :goto_0
    return v0

    .line 1526
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v0, :cond_1

    .line 1527
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0

    .line 1530
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectable(Ljava/lang/Object;[[ZLjava/lang/String;)Z
    .locals 5
    .parameter "category"
    .parameter "map"
    .parameter "scene"

    .prologue
    .line 1536
    const/4 v1, 0x0

    .line 1537
    .local v1, isSelectable:Z
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_1

    .line 1538
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v2

    .line 1539
    .local v2, row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-static {v3, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1541
    .local v0, column:I
    aget-object v3, p2, v2

    aget-boolean v1, v3, v0

    .line 1548
    .end local v0           #column:I
    .end local v2           #row:I
    :cond_0
    :goto_0
    return v1

    .line 1542
    .restart local p1
    :cond_1
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_0

    .line 1543
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ordinal()I

    move-result v2

    .line 1544
    .restart local v2       #row:I
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getColumn(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 1546
    .restart local v0       #column:I
    aget-object v3, p2, v2

    aget-boolean v1, v3, v0

    goto :goto_0
.end method

.method private isSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "videoSize"

    .prologue
    .line 1293
    const-string v0, "MMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isMmsIn()Z

    move-result v0

    .line 1299
    :goto_0
    return v0

    .line 1296
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"
    .parameter "previousValue"

    .prologue
    .line 2383
    const/4 v0, 0x1

    .line 2384
    .local v0, changed:Z
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2385
    const/4 v0, 0x0

    .line 2387
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;

    .line 2388
    .local v2, listener:Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
    invoke-interface {v2, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;->onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2390
    .end local v2           #listener:Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;
    :cond_1
    return-void
.end method

.method private parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "xpp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3143
    const/4 v3, 0x0

    .line 3144
    .local v3, tag:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3145
    .local v2, setting:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3146
    .local v1, runtime:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3147
    .local v4, valueStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3149
    .local v5, version:Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 3150
    .local v0, eventType:I
    :goto_0
    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    .line 3151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3155
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 3157
    const-string v6, "settings"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3158
    const-string v6, "version"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3162
    :cond_0
    const-string v6, "setting"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3164
    const-string v6, "key"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3165
    const-string v6, "runtime"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3166
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 3170
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 3171
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCustomizationValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 3180
    :cond_2
    return-void
.end method

.method private put(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2345
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_0

    .line 2346
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 2352
    :goto_0
    return-void

    .line 2347
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v0, :cond_1

    .line 2348
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putVideoSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 2350
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2361
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    return-void
.end method

.method private putCommonSettings(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1390
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_1

    .line 1391
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsFrontNormal:Ljava/util/EnumMap;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsMainNormal:Ljava/util/EnumMap;

    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1393
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsFrontNormal:Ljava/util/EnumMap;

    move-object v0, p1

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsMainNormal:Ljava/util/EnumMap;

    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private putVideoSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2372
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoCommonSettings:[Z

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    .line 2373
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCommonSettings(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2375
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2376
    .local v0, previousValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->onSettingsChanged(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    return-void
.end method

.method private readCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2767
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v2

    .line 2768
    .local v2, key_c:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 2769
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 2770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2771
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2772
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2773
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2774
    aget-object v4, v2, v0

    invoke-virtual {p1, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2776
    .restart local v1       #key:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 2781
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private readConversationProvider()V
    .locals 15

    .prologue
    .line 3042
    const-string v2, "content://com.sonyericsson.conversations/settings"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3043
    .local v1, convesationUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3044
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-wide/32 v13, 0x46cd0

    .line 3045
    .local v13, valueMmsMaxSize:J
    if-eqz v0, :cond_3

    .line 3046
    const/4 v8, 0x0

    .line 3047
    .local v8, cursor:Landroid/database/Cursor;
    sget-object v6, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConversationKeys:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;

    .local v6, arr$:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;
    array-length v12, v6

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v7, v6, v10

    .line 3049
    .local v7, cKey:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3050
    if-eqz v8, :cond_0

    .line 3051
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3052
    iget-object v2, v7, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;->mColunm:Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3053
    .local v11, index:I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v13

    .line 3054
    const-wide/16 v2, 0x400

    mul-long/2addr v13, v2

    .line 3066
    .end local v11           #index:I
    :cond_0
    if-eqz v8, :cond_1

    .line 3067
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3047
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3057
    :catch_0
    move-exception v9

    .line 3058
    .local v9, e:Ljava/lang/SecurityException;
    :try_start_1
    const-string v2, "CameraConfigManager"

    const-string v3, "readMmsMaxSize: An exception occurs in reading provider of conversation application."

    invoke-static {v2, v3, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3066
    if-eqz v8, :cond_1

    .line 3067
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3061
    .end local v9           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 3062
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "CameraConfigManager"

    const-string v3, "readMmsMaxSize: An exception occurs in reading provider of conversation application."

    invoke-static {v2, v3, v9}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3066
    if-eqz v8, :cond_1

    .line 3067
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3066
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 3067
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 3072
    .end local v6           #arr$:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;
    .end local v7           #cKey:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ConversationKey;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #i$:I
    .end local v12           #len$:I
    :cond_3
    invoke-direct {p0, v13, v14}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setMmsMaxSize(J)V

    .line 3073
    return-void
.end method

.method private readCustomization()V
    .locals 8

    .prologue
    .line 3092
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 3093
    .local v3, xpp:Lorg/xmlpull/v1/XmlPullParser;
    if-eqz v3, :cond_0

    .line 3094
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3108
    .end local v3           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 3110
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    const-string v5, "content://com.sonyericsson.provider.customization/settings/com.sonyericsson.android.camera"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3111
    .local v2, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3112
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3113
    .local v4, xpp1:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3114
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->parseSettings(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 3124
    if-eqz v1, :cond_1

    .line 3126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3132
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #xpp1:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :goto_1
    return-void

    .line 3099
    .end local v1           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 3100
    .local v0, e:Ljava/io/IOException;
    const-string v5, "CameraConfigManager"

    const-string v6, "readCustomization: An exception occurs in reading XML file."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3101
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3102
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "CameraConfigManager"

    const-string v6, "readCustomization: An exception occurs in reading XML file."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3127
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v4       #xpp1:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v0

    .line 3128
    .local v0, e:Ljava/io/IOException;
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: Closing stream is failed."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3115
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #xpp1:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v5

    .line 3124
    if-eqz v1, :cond_1

    .line 3126
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 3127
    :catch_4
    move-exception v0

    .line 3128
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: Closing stream is failed."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3119
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 3120
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: An exception occurs in reading XML file."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3124
    if-eqz v1, :cond_1

    .line 3126
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .line 3127
    :catch_6
    move-exception v0

    .line 3128
    .local v0, e:Ljava/io/IOException;
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: Closing stream is failed."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3121
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 3122
    .local v0, e:Ljava/lang/Exception;
    :try_start_6
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: An exception occurs in reading XML file."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3124
    if-eqz v1, :cond_1

    .line 3126
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_1

    .line 3127
    :catch_8
    move-exception v0

    .line 3128
    .local v0, e:Ljava/io/IOException;
    const-string v5, "CameraConfigManager"

    const-string v6, "CUSTOMIZATION: Closing stream is failed."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3124
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 3126
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 3129
    :cond_2
    :goto_2
    throw v5

    .line 3127
    :catch_9
    move-exception v0

    .line 3128
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "CameraConfigManager"

    const-string v7, "CUSTOMIZATION: Closing stream is failed."

    invoke-static {v6, v7, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .parameter
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .prologue
    .line 2604
    .local p1, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, sharedPrefs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 2605
    .local v3, keyArrays:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2606
    .local v5, value:Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    .line 2607
    .local v2, key:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #value:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 2609
    .restart local v5       #value:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2610
    invoke-virtual {p1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2612
    :cond_1
    const/4 v6, 0x0

    .line 2616
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v6

    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private readForceChangedValue()V
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2836
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2837
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2838
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2839
    return-void
.end method

.method private readForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V
    .locals 6
    .parameter "forceChangedValue"

    .prologue
    .line 2846
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2847
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2848
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 2849
    .local v0, category:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mKeyPrefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->access$100(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2850
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2851
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2852
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2853
    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {p1, v0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2854
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2855
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2859
    .end local v0           #category:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2860
    return-void
.end method

.method private readIntent(Lcom/sonyericsson/android/camera3d/CameraActivity;)V
    .locals 2
    .parameter "cameraActivity"

    .prologue
    .line 3021
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    .line 3022
    return-void
.end method

.method private readOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 2823
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2824
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2830
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readOrder()V
    .locals 1

    .prologue
    .line 2807
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainNormal:Ljava/lang/String;

    .line 2809
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_SCENE_RECOG_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSceneRecog:Ljava/lang/String;

    .line 2811
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_SMILE_SHUT_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSmileShut:Ljava/lang/String;

    .line 2813
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderFrontNormal:Ljava/lang/String;

    .line 2816
    const-string v0, "SORT_ORDER_OF_VIDEO_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderMainNormal:Ljava/lang/String;

    .line 2818
    const-string v0, "SORT_ORDER_OF_VIDEO_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderFrontNormal:Ljava/lang/String;

    .line 2820
    return-void
.end method

.method private readSettings()V
    .locals 2

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsMainNormal:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z

    .line 2624
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsFrontNormal:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z

    .line 2628
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsMainNormal:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z

    .line 2631
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsFrontNormal:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z

    .line 2634
    return-void
.end method

.method private readSharedSettings(Ljava/util/EnumMap;[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter
    .parameter "Keys"
    .parameter "sharedPrefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2702
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    invoke-interface {p3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2761
    :cond_0
    return-void

    .line 2709
    :cond_1
    const/4 v5, 0x0

    .line 2710
    .local v5, value:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 2711
    .local v2, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    sget-object v6, Lcom/sonyericsson/android/camera3d/CameraConfigManager$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfigManager$CameraSettings:[I

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 2755
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 2756
    invoke-virtual {p1, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2710
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2713
    :sswitch_0
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getStringValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 2714
    .local v4, stringValue:Ljava/lang/String;
    const-string v5, "SOUND1"

    .line 2715
    if-eqz v4, :cond_2

    .line 2717
    move-object v5, v4

    goto :goto_1

    .line 2722
    .end local v4           #stringValue:Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getStringValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 2723
    .restart local v4       #stringValue:Ljava/lang/String;
    const-string v5, "GEOTAG_OFF"

    .line 2724
    const-string v6, "ON"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2725
    const-string v5, "GEOTAG_ON"

    goto :goto_1

    .line 2730
    .end local v4           #stringValue:Ljava/lang/String;
    :sswitch_2
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getStringValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 2731
    .restart local v4       #stringValue:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2732
    move-object v5, v4

    goto :goto_1

    .line 2737
    .end local v4           #stringValue:Ljava/lang/String;
    :sswitch_3
    const-string v6, "GEO_TAG_EXPLANATORY_DIALOG_"

    const/4 v7, 0x1

    invoke-interface {p3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2738
    const-string v5, "ON"

    goto :goto_1

    .line 2740
    :cond_4
    const-string v5, "OFF"

    .line 2742
    goto :goto_1

    .line 2745
    :sswitch_4
    invoke-direct {p0, v2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getStringValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 2746
    .restart local v4       #stringValue:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 2747
    move-object v5, v4

    goto :goto_1

    .line 2711
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0xd -> :sswitch_1
        0xe -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
    .end sparse-switch
.end method

.method private readSystemProperties()V
    .locals 3

    .prologue
    .line 3025
    const-string v1, "ro.camera.sound.forced"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3028
    .local v0, sound:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setForceSound(Ljava/lang/String;)V

    .line 3029
    return-void
.end method

.method private readVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2788
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v2

    .line 2789
    .local v2, key_v:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 2790
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 2791
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2792
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2793
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2794
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2795
    aget-object v4, v2, v0

    invoke-virtual {p1, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2789
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2797
    .restart local v1       #key:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 2802
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private setCameraDefaultSettings()V
    .locals 2

    .prologue
    .line 1449
    new-instance v0, Ljava/util/EnumMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    .line 1450
    return-void
.end method

.method private setCameraMode(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 1841
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1842
    const-string v0, "FRONT"

    .line 1846
    .local v0, value:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;Z)V

    .line 1847
    return-void

    .line 1844
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "MAIN"

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method private setCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "forceChange"

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isControllerPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2056
    :goto_0
    return-void

    .line 2037
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    .line 2039
    .local v0, previousSettings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 2041
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCapturingMode(Ljava/lang/String;)V

    .line 2043
    if-eqz p3, :cond_1

    .line 2044
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->applyAllCameraSettings()V

    goto :goto_0

    .line 2046
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->applyChangedCameraSettings(Ljava/util/EnumMap;)V

    goto :goto_0

    .line 2049
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2050
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setResolution(Ljava/lang/String;)V

    .line 2054
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->applyCameraSetting(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 2051
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2052
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setSweepDirection(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setCapturingMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2199
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 2200
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 2201
    return-void
.end method

.method private setCustomizationValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 3190
    const-string v0, "disable-MMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3191
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsMmsIn:Z

    .line 3202
    :cond_0
    :goto_0
    return-void

    .line 3194
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsMmsIn:Z

    goto :goto_0
.end method

.method private setDefaultSettings()V
    .locals 0

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraDefaultSettings()V

    .line 1445
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setVideoDefaultSettings()V

    .line 1446
    return-void
.end method

.method private setForceSound(Ljava/lang/String;)V
    .locals 1
    .parameter "forceSound"

    .prologue
    .line 3033
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    .line 3038
    :goto_0
    return-void

    .line 3036
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    goto :goto_0
.end method

.method private setMmsMaxSize(J)V
    .locals 3
    .parameter "value"

    .prologue
    .line 3077
    const-wide/16 v1, 0x2800

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const-wide/32 v1, 0x100000

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 3079
    :cond_0
    const-wide/32 p1, 0x46cd0

    .line 3081
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    const-string v2, "MMS"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;

    .line 3082
    .local v0, mmsConstraint:Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;
    iput-wide p1, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mBytes:J

    .line 3083
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    const-string v2, "MMS"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    return-void
.end method

.method private setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "cameraMode"

    .prologue
    .line 2256
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_1

    .line 2257
    const-string v0, "FRONT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2271
    :goto_0
    return-void

    .line 2260
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2262
    :cond_1
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v0, :cond_3

    .line 2263
    const-string v0, "FRONT"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2264
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2266
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2269
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setResolution(Ljava/lang/String;)V
    .locals 2
    .parameter "resolution"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    return-void
.end method

.method private setSweepDirection(Ljava/lang/String;)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    return-void
.end method

.method private setVideoDefaultSettings()V
    .locals 0

    .prologue
    .line 1453
    return-void
.end method

.method private setupSharedPreferences()V
    .locals 4

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    const-string v1, "com.sonyericsson.android.camera3d.shared_preferences"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 2536
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 2537
    return-void
.end method

.method private updateCameraSettings(Ljava/util/EnumMap;Ljava/util/EnumMap;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    .local p2, defaultSettings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 932
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 934
    .local v1, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSaved(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 935
    invoke-virtual {p2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 938
    .end local v1           #key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    :cond_1
    return-void
.end method

.method private updateCameraSettingsTable(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "key"
    .parameter "value"
    .parameter "targetCameraMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1982
    .local p1, table:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1983
    .local v0, capturingMode:Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1985
    .local v2, scene:Ljava/lang/String;
    const-string v3, "FRONT"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1986
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMapFront(Ljava/lang/Object;)[[Z

    move-result-object v1

    .line 1992
    .local v1, map:[[Z
    :goto_0
    invoke-direct {p0, p2, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;[[ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1993
    check-cast p2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p2
    invoke-virtual {p1, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    :cond_0
    return-void

    .line 1989
    .end local v1           #map:[[Z
    .restart local p2
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMap(Ljava/lang/Object;)[[Z

    move-result-object v1

    .restart local v1       #map:[[Z
    goto :goto_0
.end method

.method private updateOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "cameraMode"
    .parameter "capturingMode"
    .parameter "scene"

    .prologue
    .line 2218
    const/4 v0, 0x0

    .line 2219
    .local v0, reset:Z
    const-string v1, "MAIN"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2251
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    const-string v1, "NORMAL"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CHANGE_MODE_IN_VIDEO"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v1, :cond_3

    .line 2228
    const-string v1, "auto"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "party"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "document"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2237
    :cond_3
    :goto_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eq p1, v1, :cond_4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p1, v1, :cond_6

    .line 2239
    :cond_4
    const-string v1, "landscape"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "snow"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "sports"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2242
    :cond_5
    const/4 v0, 0x1

    .line 2246
    :cond_6
    if-eqz v0, :cond_0

    .line 2247
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getOriginalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 2248
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2233
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateOtherTable(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"
    .parameter "currentCameraMode"

    .prologue
    .line 1927
    const/4 v0, 0x0

    .line 1928
    .local v0, targetCameraMode:Ljava/lang/String;
    new-instance v1, Ljava/util/EnumMap;

    const-class v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-direct {v1, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1930
    .local v1, targetMapCamera:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1932
    .local v2, targetMapVideo:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    const-string v3, "MAIN"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1933
    const-string v0, "FRONT"

    .line 1934
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_2

    .line 1935
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsFrontNormal:Ljava/util/EnumMap;

    .line 1949
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSaved(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1950
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1951
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_5

    .line 1952
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateCameraSettingsTable(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    .end local p1
    :cond_1
    :goto_1
    return-void

    .line 1936
    .restart local p1
    :cond_2
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_0

    .line 1937
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsFrontNormal:Ljava/util/EnumMap;

    goto :goto_0

    .line 1940
    :cond_3
    const-string v0, "MAIN"

    .line 1941
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_4

    .line 1942
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsMainNormal:Ljava/util/EnumMap;

    goto :goto_0

    .line 1943
    :cond_4
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsMainNormal:Ljava/util/EnumMap;

    goto :goto_0

    .line 1954
    :cond_5
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_1

    .line 1955
    invoke-direct {p0, v2, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateVideoSettingsTable(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1959
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getNumberOfOptions(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1961
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v3, :cond_7

    .line 1962
    if-eqz v1, :cond_1

    .line 1963
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    invoke-virtual {v1, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1966
    .restart local p1
    :cond_7
    instance-of v3, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v3, :cond_1

    .line 1967
    if-eqz v2, :cond_1

    .line 1968
    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p1
    invoke-virtual {v2, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private updateVideoSettings(Ljava/util/EnumMap;Ljava/util/EnumMap;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 943
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    .local p2, defaultSettings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 944
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 946
    .local v1, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSaved(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    invoke-virtual {p2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 950
    .end local v1           #key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    :cond_1
    return-void
.end method

.method private updateVideoSettingsTable(Ljava/util/EnumMap;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "key"
    .parameter "value"
    .parameter "targetCameraMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2002
    .local p1, table:Ljava/util/EnumMap;,"Ljava/util/EnumMap<Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;Ljava/lang/String;>;"
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2004
    .local v1, scene:Ljava/lang/String;
    const-string v2, "FRONT"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2005
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMapFront(Ljava/lang/Object;)[[Z

    move-result-object v0

    .line 2007
    .local v0, map:[[Z
    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;[[ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2008
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p2, v2, :cond_1

    .line 2009
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getOriginalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2010
    const-string v2, "HD"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "FWVGA"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2012
    :cond_0
    const-string p3, "VGA"

    .line 2015
    :cond_1
    check-cast p2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p2
    invoke-virtual {p1, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    :cond_2
    :goto_0
    return-void

    .line 2018
    .end local v0           #map:[[Z
    .restart local p2
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMap(Ljava/lang/Object;)[[Z

    move-result-object v0

    .line 2020
    .restart local v0       #map:[[Z
    invoke-direct {p0, p2, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSelectable(Ljava/lang/Object;[[ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2021
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-ne p2, v2, :cond_4

    .line 2022
    invoke-direct {p0, p2, p4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getOriginalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2024
    :cond_4
    check-cast p2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .end local p2
    invoke-virtual {p1, p2, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateVideoSize(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 1250
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, cameraMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v2, v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1252
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-direct {p0, v2, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v2, v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    invoke-direct {p0, v2, v3, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getVideoSize(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1255
    .local v1, video_size:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1256
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-direct {p0, v2, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setOriginalValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getVideoDefaultSettings()Ljava/util/EnumMap;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #video_size:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1261
    .restart local v1       #video_size:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private writeCameraDefaultSettings()V
    .locals 2

    .prologue
    .line 3000
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 3002
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 3004
    return-void
.end method

.method private writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<*",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2903
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<*Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v1

    .line 2904
    .local v1, key_c:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2905
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sCameraPreferences:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 2906
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2904
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2913
    :cond_1
    return-void
.end method

.method private writeExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 4
    .parameter
    .parameter "prefix"
    .parameter "editor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2880
    .local p1, settings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2881
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2882
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2883
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2886
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeForcaChangedValue()V
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2962
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2963
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontCamera:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2964
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mForceChangedValueFrontVideo:Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V

    .line 2965
    return-void
.end method

.method private writeForceChangedValue(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)V
    .locals 6
    .parameter "forceChangedValue"

    .prologue
    .line 2972
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2973
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2974
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 2975
    .local v0, category:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->getOriginalValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2976
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2977
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->mKeyPrefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;->access$100(Lcom/sonyericsson/android/camera3d/CameraConfigManager$ForceChangedValue;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2978
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2981
    .end local v0           #category:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private writeOrder()V
    .locals 2

    .prologue
    .line 2931
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_NORMAL_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainNormal:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_SCENE_RECOG_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSceneRecog:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_MAIN_MODE_SMILE_SHUT_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSmileShut:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const-string v0, "SORT_ORDER_OF_CAMERA_DEVICE_FRONT_MODE_NORMAL_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderFrontNormal:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    const-string v0, "SORT_ORDER_OF_VIDEO_DEVICE_MAIN_MODE_NORMAL_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderMainNormal:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    const-string v0, "SORT_ORDER_OF_VIDEO_DEVICE_FRONT_MODE_NORMAL_"

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderFrontNormal:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V

    .line 2950
    return-void
.end method

.method private writeSettings()V
    .locals 2

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsMainNormal:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 2892
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsFrontNormal:Ljava/util/EnumMap;

    const-string v1, "CAMERA_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 2895
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsMainNormal:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 2897
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsFrontNormal:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 2899
    return-void
.end method

.method private writeSharedPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2957
    return-void
.end method

.method private writeVideoDefaultSettings()V
    .locals 2

    .prologue
    .line 3007
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_MAIN_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 3009
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    const-string v1, "VIDEO_DEVICE_FRONT_MODE_NORMAL_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 3011
    return-void
.end method

.method private writeVideoSettings(Ljava/util/EnumMap;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<*",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2917
    .local p1, settings:Ljava/util/EnumMap;,"Ljava/util/EnumMap<*Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    move-result-object v1

    .line 2918
    .local v1, key_v:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2919
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->sVideoPreferences:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 2920
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2918
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2927
    :cond_1
    return-void
.end method


# virtual methods
.method public canUseAnyLocationProvider()Z
    .locals 2

    .prologue
    .line 2478
    const/4 v0, 0x0

    .line 2479
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseGpsProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2480
    const/4 v0, 0x1

    .line 2482
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->canUseNetworkProvider()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2483
    const/4 v0, 0x1

    .line 2485
    :cond_1
    return v0
.end method

.method public canUseGpsProvider()Z
    .locals 4

    .prologue
    .line 2493
    const/4 v0, 0x0

    .line 2494
    .local v0, result:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2495
    .local v1, setting:Ljava/lang/String;
    const-string v2, "GEOTAG_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NETWORK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2497
    :cond_0
    const/4 v0, 0x0

    .line 2505
    :goto_0
    return v0

    .line 2499
    :cond_1
    const-string v2, "gps"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2500
    const/4 v0, 0x1

    goto :goto_0

    .line 2502
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUseNetworkProvider()Z
    .locals 4

    .prologue
    .line 2513
    const/4 v0, 0x0

    .line 2514
    .local v0, result:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2515
    .local v1, setting:Ljava/lang/String;
    const-string v2, "GEOTAG_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2517
    :cond_0
    const/4 v0, 0x0

    .line 2525
    :goto_0
    return v0

    .line 2519
    :cond_1
    const-string v2, "network"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2520
    const/4 v0, 0x1

    goto :goto_0

    .line 2522
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelPanorama2D()V
    .locals 4

    .prologue
    .line 1282
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PANORAMA_2D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1284
    .local v0, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    const-string v1, "PANORAMA_3D"

    .line 1285
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 1288
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCapturingMode(Ljava/lang/String;)V

    .line 1290
    .end local v0           #key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public disableVerticalSweepDirectionList()V
    .locals 5

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LEFT_2_RIGHT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "RIGHT_2_LEFT"

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->createValueList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 1793
    instance-of v1, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1801
    .local v0, value:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 1803
    return-object v0

    .line 1795
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v1, :cond_1

    .line 1796
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_0

    .line 1798
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    .restart local v0       #value:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No value found."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCameraDefaultSettings()Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1305
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontCameraDefaultSettings:Ljava/util/EnumMap;

    .line 1307
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    goto :goto_0
.end method

.method public getCameraDeviceId()I
    .locals 3

    .prologue
    .line 1850
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, cameraDev:Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, videoDev:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1857
    :cond_0
    const-string v2, "MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    const/4 v2, 0x0

    .line 1865
    :goto_0
    return v2

    .line 1860
    :cond_1
    const-string v2, "FRONT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1861
    const/4 v2, 0x1

    goto :goto_0

    .line 1865
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getCameraOrder(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1741
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderFrontNormal:Ljava/lang/String;

    .line 1749
    :goto_0
    return-object v0

    .line 1744
    :cond_0
    const-string v0, "SCENE_RECOGNITION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSceneRecog:Ljava/lang/String;

    goto :goto_0

    .line 1746
    :cond_1
    const-string v0, "SMILE_DETECTION"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1747
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSmileShut:Ljava/lang/String;

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainNormal:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCameraSettings()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mSavedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGPSSetting(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    .line 2423
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2424
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "location_providers_allowed"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2428
    .local v1, setting:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2429
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2431
    const/4 v2, 0x1

    .line 2434
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMaxDurationMillisecs()J
    .locals 2

    .prologue
    .line 1737
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    return-wide v0
.end method

.method public getMaxFileSizeBytes()J
    .locals 2

    .prologue
    .line 1729
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    return-wide v0
.end method

.method public getValueList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FRONT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mFrontValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1229
    :goto_0
    return-object v1

    .line 1225
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v1, :cond_1

    .line 1226
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, capturingMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    .line 1229
    .end local v0           #capturingMode:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMainValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getVideoDefaultSettings()Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRONT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sFrontVideoDefaultSettings:Ljava/util/EnumMap;

    .line 1314
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sVideoDefaultSettings:Ljava/util/EnumMap;

    goto :goto_0
.end method

.method public getVideoOrder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cameraMode"

    .prologue
    .line 1755
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderFrontNormal:Ljava/lang/String;

    .line 1758
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderMainNormal:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoSettings()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public getZoomStep(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1815
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1817
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1818
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1822
    .local v0, step:I
    :goto_0
    return v0

    .line 1820
    .end local v0           #step:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #step:I
    goto :goto_0
.end method

.method public isAnyLocationProviderAvailableAtPhoneSetting()Z
    .locals 2

    .prologue
    .line 2405
    const/4 v0, 0x0

    .line 2406
    .local v0, result:Z
    const-string v1, "gps"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2407
    const/4 v0, 0x1

    .line 2409
    :cond_0
    const-string v1, "network"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2410
    const/4 v0, 0x1

    .line 2412
    :cond_1
    return v0
.end method

.method public isConstraint(Ljava/lang/String;)Z
    .locals 1
    .parameter "videoSize"

    .prologue
    .line 1483
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isControllerPrepared()Z
    .locals 2

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, prepared:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    if-eqz v1, :cond_0

    .line 1493
    const/4 v0, 0x1

    .line 1496
    :cond_0
    return v0
.end method

.method public isForceSound()Z
    .locals 1

    .prologue
    .line 1456
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    return v0
.end method

.method public isMmsIn()Z
    .locals 1

    .prologue
    .line 1504
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsMmsIn:Z

    return v0
.end method

.method public isRequestedToSaveToMediaStoreUri()Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mIsRequestedToSaveToMediaStoreUri:Z

    return v0
.end method

.method public isSelectable(Ljava/lang/Object;)Z
    .locals 3
    .parameter "category"

    .prologue
    .line 1558
    const/4 v0, 0x1

    .line 1560
    .local v0, isSelectable:Z
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-ne p1, v1, :cond_0

    .line 1561
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PANORAMA_2D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1562
    const/4 v0, 0x0

    .line 1567
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getNumberOfOptions(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1568
    const/4 v0, 0x0

    .line 1571
    :cond_1
    return v0
.end method

.method public isSelectable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "category"
    .parameter "key"

    .prologue
    .line 1597
    const/4 v0, 0x1

    .line 1600
    .local v0, isSelectable:Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getCameraDeviceId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1637
    :goto_0
    return v0

    .line 1602
    :pswitch_0
    instance-of v2, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v2, :cond_0

    .line 1603
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMap(Ljava/lang/Object;)[[Z

    move-result-object v1

    .line 1612
    .local v1, map:[[Z
    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getIsSelectableFromCategoryAndKey(Ljava/lang/Object;Ljava/lang/Object;[[Z)Z

    move-result v0

    .line 1613
    goto :goto_0

    .line 1605
    .end local v1           #map:[[Z
    :cond_0
    instance-of v2, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v2, :cond_1

    .line 1606
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMap(Ljava/lang/Object;)[[Z

    move-result-object v1

    .restart local v1       #map:[[Z
    goto :goto_1

    .line 1610
    .end local v1           #map:[[Z
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMap(Ljava/lang/Object;)[[Z

    move-result-object v1

    .restart local v1       #map:[[Z
    goto :goto_1

    .line 1616
    .end local v1           #map:[[Z
    :pswitch_1
    instance-of v2, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v2, :cond_2

    .line 1617
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMapFront(Ljava/lang/Object;)[[Z

    move-result-object v1

    .line 1629
    .restart local v1       #map:[[Z
    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getIsSelectableFromCategoryAndKey(Ljava/lang/Object;Ljava/lang/Object;[[Z)Z

    move-result v0

    .line 1630
    goto :goto_0

    .line 1620
    .end local v1           #map:[[Z
    :cond_2
    instance-of v2, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    if-eqz v2, :cond_3

    .line 1621
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMapFront(Ljava/lang/Object;)[[Z

    move-result-object v1

    .restart local v1       #map:[[Z
    goto :goto_2

    .line 1626
    .end local v1           #map:[[Z
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->getSelectableMapFront(Ljava/lang/Object;)[[Z

    move-result-object v1

    .restart local v1       #map:[[Z
    goto :goto_2

    .line 1600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isTouchCapture(I)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 1471
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1472
    .local v0, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VIEW_FINDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1473
    const/4 v1, 0x1

    .line 1475
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1875
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_0

    .line 1882
    :cond_0
    return-void
.end method

.method public readSharedPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2579
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 2581
    .local v0, context:Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    const-string v3, "com.sonyericsson.android.camera"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2586
    :goto_0
    const-string v2, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {p0, v0, v2, v5, v5}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2588
    .local v1, mainCamera:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsDependency;->access$000()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readSharedSettings(Ljava/util/EnumMap;[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Landroid/content/SharedPreferences;)V

    .line 2593
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    .line 2594
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    const-string v3, "CAMERA_3D_"

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)Z

    .line 2595
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    const-string v3, "CAMERA_3D_RESOLUTION_"

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Map;)Z

    .line 2597
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    const-string v3, "CAMERA_3D_SWEEP_DIRECTION_"

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSharedPreferencesMap:Ljava/util/Map;

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->readExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Ljava/util/Map;)Z

    .line 2599
    return-void

    .line 2583
    .end local v1           #mainCamera:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 874
    return-void
.end method

.method public final releaseController()V
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 905
    return-void
.end method

.method public resetCameraSettings()V
    .locals 3

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isControllerPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2339
    :goto_0
    return-void

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->stopPreview(ZZ)V

    .line 2332
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 2334
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraDefaultSettings()V

    .line 2335
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraDefaultSettings()V

    .line 2337
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    goto :goto_0
.end method

.method public resetSettings(Ljava/lang/Object;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 2298
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_0

    .line 2299
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->resetCameraSettings()V

    .line 2303
    return-void

    .line 2301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final restartPreview(Ljava/lang/Object;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1429
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isControllerPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1434
    :goto_0
    return-void

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->restartPreview()V

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1912
    instance-of v0, p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    if-eqz v0, :cond_0

    .line 1913
    check-cast p1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .end local p1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;Z)V

    .line 1921
    return-void

    .line 1919
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllCameraSettings()V
    .locals 3

    .prologue
    .line 1895
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isControllerPrepared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1902
    :goto_0
    return-void

    .line 1899
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 1900
    .local v0, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setCameraOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "order"
    .parameter "cameraMode"
    .parameter "capMode"

    .prologue
    .line 1763
    const-string v0, "FRONT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderFrontNormal:Ljava/lang/String;

    .line 1774
    :goto_0
    return-void

    .line 1766
    :cond_0
    const-string v0, "SCENE_RECOGNITION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSceneRecog:Ljava/lang/String;

    goto :goto_0

    .line 1768
    :cond_1
    const-string v0, "SMILE_DETECTION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1769
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainSmileShut:Ljava/lang/String;

    goto :goto_0

    .line 1771
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraOrderMainNormal:Ljava/lang/String;

    goto :goto_0
.end method

.method public setController(ILcom/sonyericsson/android/camera3d/CameraController;)Z
    .locals 1
    .parameter "camera_id"
    .parameter "camera"

    .prologue
    .line 890
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraController:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 891
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setCameraMode(I)V

    .line 892
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isControllerPrepared()Z

    move-result v0

    return v0
.end method

.method public setLastDrawerState(Ljava/lang/String;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1890
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->putCameraSettings(Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;Ljava/lang/String;)V

    .line 1891
    return-void
.end method

.method public setListener(Lcom/sonyericsson/android/camera3d/CameraConfigManager$SettingsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_0
    return-void
.end method

.method public setVideoOrder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "order"
    .parameter "cameraMode"

    .prologue
    .line 1777
    const-string v0, "FRONT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderFrontNormal:Ljava/lang/String;

    .line 1782
    :goto_0
    return-void

    .line 1780
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoOrderMainNormal:Ljava/lang/String;

    goto :goto_0
.end method

.method public setZoomStep(Ljava/lang/Object;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1831
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1832
    return-void
.end method

.method public switchCameraTable(Ljava/lang/String;)V
    .locals 1
    .parameter "cameraMode"

    .prologue
    .line 1401
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsFrontNormal:Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    .line 1408
    :goto_0
    return-void

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettingsMainNormal:Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    goto :goto_0
.end method

.method public switchVideoTable(Ljava/lang/String;)V
    .locals 1
    .parameter "cameraMode"

    .prologue
    .line 1412
    const-string v0, "FRONT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsFrontNormal:Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    .line 1419
    :goto_0
    return-void

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettingsMainNormal:Ljava/util/EnumMap;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mVideoSettings:Ljava/util/EnumMap;

    goto :goto_0
.end method

.method public updateLocationServiceAvailable()V
    .locals 5

    .prologue
    .line 2442
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2443
    .local v2, setting:Ljava/lang/String;
    const-string v3, "GEOTAG_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2444
    const-string v3, "gps"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v0

    .line 2445
    .local v0, gps:Z
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v1

    .line 2446
    .local v1, nw:Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 2447
    const-string v2, "GEOTAG_OFF"

    .line 2470
    .end local v0           #gps:Z
    .end local v1           #nw:Z
    :cond_0
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v3, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2471
    return-void

    .line 2449
    :cond_1
    const-string v3, "GPS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2450
    const-string v3, "gps"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2451
    const-string v2, "GEOTAG_OFF"

    goto :goto_0

    .line 2453
    :cond_2
    const-string v3, "NETWORK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2454
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2455
    const-string v2, "GEOTAG_OFF"

    goto :goto_0

    .line 2457
    :cond_3
    const-string v3, "GPS_AND_NETWORK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2458
    const-string v3, "gps"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v0

    .line 2459
    .restart local v0       #gps:Z
    const-string v3, "network"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->getGPSSetting(Ljava/lang/String;)Z

    move-result v1

    .line 2460
    .restart local v1       #nw:Z
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 2461
    const-string v2, "GPS_AND_NETWORK"

    goto :goto_0

    .line 2462
    :cond_4
    if-eqz v0, :cond_5

    .line 2463
    const-string v2, "GPS"

    goto :goto_0

    .line 2464
    :cond_5
    if-eqz v1, :cond_6

    .line 2465
    const-string v2, "NETWORK"

    goto :goto_0

    .line 2467
    :cond_6
    const-string v2, "GEOTAG_OFF"

    goto :goto_0
.end method

.method public updateMaxVideoSize(Ljava/lang/String;)V
    .locals 17
    .parameter "video_size"

    .prologue
    .line 1320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v8

    .line 1321
    .local v8, imageMng:Lcom/sonyericsson/android/camera3d/ImageManager;
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/ImageManager;->getRemainTimes()J

    move-result-wide v13

    const-wide/16 v15, 0x3c

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    mul-long v1, v13, v15

    .line 1322
    .local v1, computedMaxDuration:J
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera3d/ImageManager;->getRemainBytes()J

    move-result-wide v3

    .line 1329
    .local v3, computedMaxFilesize:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v13, v13, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    .line 1330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v13, v13, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    .line 1337
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v13, v13, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    .line 1338
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIntentExtra:Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;

    iget-wide v13, v13, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    .line 1345
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->isConstraint(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1346
    sget-object v13, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sConstraintMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;

    .line 1348
    .local v5, constraint:Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mMillisecs:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    .line 1349
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mMillisecs:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    cmp-long v13, v13, v15

    if-gtz v13, :cond_0

    .line 1350
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mMillisecs:J

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    .line 1356
    :cond_0
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mBytes:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_1

    .line 1357
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mBytes:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    cmp-long v13, v13, v15

    if-gtz v13, :cond_1

    .line 1358
    iget-wide v13, v5, Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;->mBytes:J

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    .line 1369
    .end local v5           #constraint:Lcom/sonyericsson/android/camera3d/CameraConfigManager$Constraint;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    const-wide/16 v15, 0x3e8

    div-long v9, v13, v15

    .line 1370
    .local v9, second:J
    sget-object v13, Lcom/sonyericsson/android/camera3d/CameraConfig;->sMovieSizesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    mul-long/2addr v13, v15

    const-wide/16 v15, 0x3c

    div-long v11, v13, v15

    .line 1371
    .local v11, sizePerSecond:J
    mul-long v6, v9, v11

    .line 1372
    .local v6, durationToSize:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    cmp-long v13, v13, v6

    if-gtz v13, :cond_2

    .line 1373
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    div-long/2addr v13, v11

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    .line 1375
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    const-wide/16 v15, 0x3e8

    div-long v9, v13, v15

    .line 1376
    mul-long v6, v9, v11

    .line 1385
    :cond_2
    return-void

    .line 1334
    .end local v6           #durationToSize:J
    .end local v9           #second:J
    .end local v11           #sizePerSecond:J
    :cond_3
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxDurationMillisecs:J

    goto/16 :goto_0

    .line 1342
    :cond_4
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mMaxFileSizeBytes:J

    goto/16 :goto_1
.end method

.method public updateSettings(Z)V
    .locals 3
    .parameter "updateSettings"

    .prologue
    .line 914
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 915
    .local v0, key:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mIsForceSound:Z

    if-eqz v1, :cond_0

    .line 918
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->sCameraDefaultSettings:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeDefaultSettings()V
    .locals 1

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 2997
    :goto_0
    return-void

    .line 2991
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2993
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraDefaultSettings()V

    .line 2994
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeVideoDefaultSettings()V

    .line 2996
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public writeSharedPreferences()V
    .locals 3

    .prologue
    .line 2863
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2875
    :goto_0
    return-void

    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mCameraSettings:Ljava/util/EnumMap;

    const-string v1, "CAMERA_3D_"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeCameraSettings(Ljava/util/EnumMap;Ljava/lang/String;)V

    .line 2869
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mResolution:Ljava/util/HashMap;

    const-string v1, "CAMERA_3D_RESOLUTION_"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 2871
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mSweepDirection:Ljava/util/HashMap;

    const-string v1, "CAMERA_3D_SWEEP_DIRECTION_"

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->writeExtraSettings(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 2874
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->mPreferencesEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
