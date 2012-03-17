.class public final enum Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
.super Ljava/lang/Enum;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoSettings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum VIDEO_FORMAT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

.field public static final enum ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3240
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "CAPTURING_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3241
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "VIDEO_SIZE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3242
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "SCENE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3243
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "FOCUS_MODE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3244
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "EXPOSURE_SETTING"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3245
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "PHOTO_LIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3246
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "SELF_TIMER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3247
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "PHOTOMETRY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3248
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "IMAGE_STABILIZER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3249
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "SHUTTER_SOUND"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3250
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "MICROPHONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3251
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "WHITE_BALANCE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3252
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "RESET_SETTINGS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3253
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "ZOOM_STEP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3254
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "VIDEO_FORMAT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_FORMAT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3255
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "TOUCH_CAPTURE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3256
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    const-string v1, "CAMERA_MODE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    .line 3239
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->EXPOSURE_SETTING:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->PHOTOMETRY:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->MICROPHONE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->WHITE_BALANCE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->RESET_SETTINGS:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->VIDEO_FORMAT:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->CAMERA_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

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
    .line 3239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    .locals 1
    .parameter "name"

    .prologue
    .line 3239
    const-class v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;
    .locals 1

    .prologue
    .line 3239
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->$VALUES:[Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/CameraConfigManager$VideoSettings;

    return-object v0
.end method
