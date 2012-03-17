.class public final enum Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
.super Ljava/lang/Enum;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

.field public static final enum ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3210
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "CAPTURING_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3211
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "RESOLUTION"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3212
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3213
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "FOCUS_MODE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3214
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "EXPOSURE_SETTING"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3215
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "PHOTO_LIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3216
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3217
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "PHOTOMETRY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3218
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "IMAGE_STABILIZER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3219
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "SMILE_LEVEL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3220
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "GEO_TAG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3221
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "SHUTTER_SOUND"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3222
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "WHITE_BALANCE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3223
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "RESET_SETTINGS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3224
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "ZOOM_STEP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3225
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "GEO_TAG_DIALOG"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3226
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "LAST_DRAWER_STATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3227
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "TOUCH_CAPTURE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3228
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "CAMERA_MODE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3229
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "FLASH"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3230
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "SWEEP_DIRECTION"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3231
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    const-string v1, "DESTINATION_TO_SAVE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    .line 3209
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SMILE_LEVEL:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->GEO_TAG_DIALOG:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->LAST_DRAWER_STATE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SWEEP_DIRECTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 1
    .parameter "name"

    .prologue
    .line 3209
    const-class v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;
    .locals 1

    .prologue
    .line 3209
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    return-object v0
.end method
