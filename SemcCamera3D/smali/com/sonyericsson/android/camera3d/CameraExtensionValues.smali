.class public Lcom/sonyericsson/android/camera3d/CameraExtensionValues;
.super Ljava/lang/Object;
.source "CameraExtensionValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraExtensionValues$SceneRecognition;
    }
.end annotation


# static fields
.field public static final CAMERA_DEVICE_FRONT:I = 0x1

.field public static final CAMERA_DEVICE_MAIN:I = 0x0

.field public static final EX_CENTER_WEIGHTED:Ljava/lang/String; = "center-weighted"

.field public static final EX_FALSE:Ljava/lang/String; = "false"

.field public static final EX_FOCUS_AREA_CENTER:Ljava/lang/String; = "center"

.field public static final EX_FOCUS_AREA_MULTI:Ljava/lang/String; = "multi"

.field public static final EX_FOCUS_AREA_USER:Ljava/lang/String; = "user"

.field public static final EX_FRAME_AVERAGE:Ljava/lang/String; = "frame-average"

.field public static final EX_OFF:Ljava/lang/String; = "off"

.field public static final EX_ON:Ljava/lang/String; = "on"

.field public static final EX_SCENE_MODE_BACKLIGHT:Ljava/lang/String; = "backlight"

.field public static final EX_SCENE_MODE_BACKLIGHT_PORTRAIT:Ljava/lang/String; = "backlight-portrait"

.field public static final EX_SCENE_MODE_DOCUMENT:Ljava/lang/String; = "document"

.field public static final EX_SPOT:Ljava/lang/String; = "spot"

.field public static final EX_TRUE:Ljava/lang/String; = "true"

.field public static final KEY_EX_720_PREVIEW_CALLBACK_UNAVAILABLE:Ljava/lang/String; = "semc-720p-preview-callback-unavailable"

.field public static final KEY_EX_EXTENSION_VERSION:Ljava/lang/String; = "semc-extension-version"

.field public static final KEY_EX_FACE_DETECTION_SUPPORTED:Ljava/lang/String; = "semc-face-detect-supported"

.field public static final KEY_EX_FOCUS_AREA:Ljava/lang/String; = "semc-focus-area"

.field public static final KEY_EX_IMAGE_STABILIZER:Ljava/lang/String; = "semc-is"

.field public static final KEY_EX_MAX_FOCUS_AREA_HEIGHT:Ljava/lang/String; = "semc-max-focus-area-height"

.field public static final KEY_EX_MAX_FOCUS_AREA_WIDTH:Ljava/lang/String; = "semc-max-focus-area-width"

.field public static final KEY_EX_MAX_MULTI_FOCUS_NUM:Ljava/lang/String; = "semc-max-multi-focus-num"

.field public static final KEY_EX_MAX_ZOOM:Ljava/lang/String; = "semc-max-zoom"

.field public static final KEY_EX_METERING_MODE:Ljava/lang/String; = "semc-metering-mode"

.field public static final KEY_EX_MULTI_FOCUS_RECTS:Ljava/lang/String; = "semc-multi-focus-rects"

.field public static final KEY_EX_POSTVIEW_FORMAT:Ljava/lang/String; = "semc-postview-format"

.field public static final KEY_EX_REC_SOUND:Ljava/lang/String; = "key-semc-ext-recordingsound"

.field public static final KEY_EX_SCENE_DETECTION_SUPPORTED:Ljava/lang/String; = "semc-scene-detect-supported"

.field public static final KEY_EX_SHUTTER_SOUND:Ljava/lang/String; = "key-semc-ext-shuttersound"

.field public static final KEY_EX_SMILE_DETECTION:Ljava/lang/String; = "semc-smile-detect"

.field public static final KEY_EX_USER_FOCUS_AREA_X:Ljava/lang/String; = "semc-user-focus-area-x"

.field public static final KEY_EX_USER_FOCUS_AREA_Y:Ljava/lang/String; = "semc-user-focus-area-y"

.field public static final KEY_EX_VIDEO_MODE:Ljava/lang/String; = "semc-video-mode"

.field public static final KEY_EX_VIDEO_STABILIZER:Ljava/lang/String; = "semc-vs"

.field public static final POSTVIEW_FORMAT_RGB565:Ljava/lang/String; = "rgb565"

.field public static final POSTVIEW_FORMAT_YUV420SP:Ljava/lang/String; = "yuv420sp"

.field private static sSceneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "auto"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "action"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "portrait"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "landscape"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "night"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "night-portrait"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "theatre"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "beach"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "snow"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "sunset"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "steadyphoto"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "fireworks"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "sports"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "party"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "candlelight"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "document"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "backlight"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    const-string v1, "backlight-portrait"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static convertSceneStringToInt(Ljava/lang/String;)I
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, -0x1

    .line 127
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraExtensionValues;->sSceneMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    .local v0, ret:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
