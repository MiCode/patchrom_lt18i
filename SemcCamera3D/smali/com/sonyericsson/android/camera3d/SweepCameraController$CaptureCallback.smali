.class Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;
.super Ljava/lang/Object;
.source "SweepCameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureCallback"
.end annotation


# instance fields
.field private mLastStatus:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method


# virtual methods
.method public onCaptureDone(Z)V
    .locals 4
    .parameter "success"

    .prologue
    .line 548
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->mLastStatus:I

    .line 549
    .local v0, status:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x3b

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 550
    return-void
.end method

.method public onCaptureInfo(IF)V
    .locals 3
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 553
    iput p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->mLastStatus:I

    .line 554
    if-nez p1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x3d

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x3c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method
