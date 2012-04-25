.class Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfDone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1395
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    return-void
.end method

.method private startCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1434
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1435
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1200(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1436
    return-void
.end method


# virtual methods
.method public handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1408
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleAutoFocusDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1409
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1411
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1413
    :cond_0
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1444
    return-void
.end method

.method public handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1401
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1403
    return-void
.end method

.method public handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1419
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1420
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->startCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1421
    return-void
.end method

.method public handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1426
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleKeyCaptureTouch(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1427
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->startCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1428
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1449
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1450
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1451
    return-void
.end method
