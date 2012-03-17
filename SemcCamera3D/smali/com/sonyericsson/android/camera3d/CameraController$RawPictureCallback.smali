.class final Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1211
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1225
    return-void
.end method
