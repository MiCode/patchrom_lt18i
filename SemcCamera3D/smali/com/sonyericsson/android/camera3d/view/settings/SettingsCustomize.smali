.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;
.super Ljava/lang/Object;
.source "SettingsCustomize.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final NUMBER_OF_CAMERA_SETTINGS_ARRAY:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final NUMBER_OF_VIDEO_SETTINGS_ARRAY:I = 0x0

.field public static final VIBRATION_DURATION:I = 0x23

.field static final sCameraDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sCameraDefaultOrderScene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sCameraDefaultOrderSmile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sNoFrontCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sNoFrontCameraDefaultOrderScene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sNoFrontCameraDefaultOrderSmile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field static final sNoFrontVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field static final sVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field static final sVideoDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderScene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderSmile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 76
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderScene:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 131
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontCameraDefaultOrderSmile:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 150
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 167
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sNoFrontVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 184
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sVideoDefaultOrderFront:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 203
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sCameraDefaultOrderNormal:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    array-length v0, v0

    sput v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_CAMERA_SETTINGS_ARRAY:I

    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->sVideoDefaultOrder:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    array-length v0, v0

    sput v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCustomize;->NUMBER_OF_VIDEO_SETTINGS_ARRAY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
