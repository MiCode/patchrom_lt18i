.class public Lcom/sonyericsson/android/camera3d/CameraIntent;
.super Ljava/lang/Object;
.source "CameraIntent.java"


# static fields
.field public static final EXTRA_BROWSING_MODE:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.browsingMode"

.field public static final EXTRA_CAPTURING_MODE:Ljava/lang/String; = "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

.field public static final EXTRA_FACING:Ljava/lang/String; = "facing"

.field public static final EXTRA_LAUNCHED_BY_ANOTHER_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

.field public static final EXTRA_MODE_NORMAL:Ljava/lang/String; = "manual"

.field private static final TAG:Ljava/lang/String; = "CameraIntent"

.field private static sCapturingModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIntentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "NORMAL"

    const-string v2, "manual"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "SCENE_RECOGNITION"

    const-string v2, "scene_recognition"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "SMILE_DETECTION"

    const-string v2, "smile_detection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "PANORAMA_3D"

    const-string v2, "3D_panorama"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "MULTI_ANGLE"

    const-string v2, "multi_angle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    const-string v1, "PANORAMA_2D"

    const-string v2, "sweep_panorama"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "auto"

    const-string v2, "NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "scene_recognition"

    const-string v2, "SCENE_RECOGNITION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "smile_detection"

    const-string v2, "SMILE_DETECTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "3D_panorama"

    const-string v2, "PANORAMA_3D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "multi_angle"

    const-string v2, "MULTI_ANGLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    const-string v1, "sweep_panorama"

    const-string v2, "PANORAMA_2D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCapturingModeToIntent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "capturingMode"
    .parameter "defaultValue"

    .prologue
    .line 85
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraIntent;->sIntentMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, intent:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 90
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method

.method public static convertIntentToCapturingMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "intent"
    .parameter "defaultValue"

    .prologue
    .line 102
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraIntent;->sCapturingModeMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, capturingMode:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 107
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, v0

    goto :goto_0
.end method
