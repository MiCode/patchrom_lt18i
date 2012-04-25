.class Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;
.super Ljava/lang/Object;
.source "SweepCameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0xb0

    .line 536
    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->focused:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method
