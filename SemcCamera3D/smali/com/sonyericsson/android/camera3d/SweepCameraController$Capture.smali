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
    .line 1463
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 1464
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableBackKey()V

    .line 1465
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 1466
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    .line 1467
    return-void
.end method

.method private stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 1530
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

    .line 1532
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1300(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1535
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1536
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1537
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v1, 0x5

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    .line 1539
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
    .line 1472
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1475
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1476
    return-void
.end method

.method public handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1481
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1484
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1485
    return-void
.end method

.method public handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1544
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureDone(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1546
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1555
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V
    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 1569
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureProgress()V

    .line 1570
    return-void

    .line 1564
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->onCameraReady()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$1500(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    .line 1566
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
    .line 1575
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureFailed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopAf()V

    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideCaptureProgress()V

    .line 1581
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1582
    return-void
.end method

.method public handleCaptureProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1587
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleCaptureProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1588
    check-cast p3, Ljava/lang/Float;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    .line 1589
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->updateCaptureProgress(I)V

    .line 1590
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1490
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1493
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1494
    return-void
.end method

.method public handlePhoneOffHook(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1524
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handlePhoneOffHook(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1525
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1526
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1527
    return-void
.end method

.method public handlePhoneRinging(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1516
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handlePhoneRinging(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1517
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1518
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1519
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1508
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1509
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1510
    new-instance v0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1511
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1499
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;->stopCaptureUrgently(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)V

    .line 1502
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1503
    return-void
.end method
