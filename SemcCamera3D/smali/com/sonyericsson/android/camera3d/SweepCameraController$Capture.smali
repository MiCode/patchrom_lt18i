.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Capture"
.end annotation


# instance fields
.field private mProgress:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 1460
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableBackKey()V

    .line 1461
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 1462
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    .line 1463
    return-void
.end method

.method private stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCaptureUrgently: Capture progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1300(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1531
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1532
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v1, 0x5

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    .line 1535
    :cond_0
    return-void
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1468
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1471
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1472
    return-void
.end method

.method public handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1477
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1480
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1481
    return-void
.end method

.method public handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1540
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1542
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1551
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    .line 1555
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureProgress()V

    .line 1566
    return-void

    .line 1560
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->onCameraReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1500(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1562
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    goto :goto_0
.end method

.method public handleCaptureFailed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1571
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureFailed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1573
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1576
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureProgress()V

    .line 1577
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1578
    return-void
.end method

.method public handleCaptureProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1583
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1584
    check-cast p3, Ljava/lang/Float;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    .line 1585
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCaptureProgress(I)V

    .line 1586
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1486
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1489
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1490
    return-void
.end method

.method public handlePhoneOffHook(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1520
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handlePhoneOffHook(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1521
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1522
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1523
    return-void
.end method

.method public handlePhoneRinging(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1512
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handlePhoneRinging(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1513
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1514
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1515
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1504
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1505
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1506
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1507
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1495
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1498
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1499
    return-void
.end method
