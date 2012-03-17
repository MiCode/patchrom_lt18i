.class final Lcom/sonyericsson/android/camera3d/CameraController$SceneRecognitionCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SceneRecognitionCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1278
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController$SceneRecognitionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 1283
    return-void
.end method
