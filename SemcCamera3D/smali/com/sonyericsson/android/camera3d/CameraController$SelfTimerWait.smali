.class Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfTimerWait"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2495
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method


# virtual methods
.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2624
    instance-of v0, p3, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    if-eqz v0, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    move-object v0, p3

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->doUpdateFaceDetectionResult(ILcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 2628
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2629
    return-void
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2587
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2590
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2592
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doSelfTimerCancel()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2600(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 2593
    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2594
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doAutoFocus()V

    .line 2606
    :goto_0
    return-void

    .line 2597
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Preview has not started."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2599
    :catch_0
    move-exception v0

    .line 2602
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->cancelSelftimer()V

    .line 2603
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 2604
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AF failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleKeyBack(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2579
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyBack(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2581
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doSelfTimerCancel()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2600(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 2582
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2583
    return-void
.end method

.method public handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 2610
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2614
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->autofocus(Landroid/graphics/Rect;)V

    .line 2615
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const-class v3, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 2616
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2633
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2634
    return-void
.end method

.method public handleSelfTimerCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 6
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2557
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSelfTimerCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2559
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2560
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2502(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 2561
    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2562
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doAutoFocus()V

    .line 2563
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-class v5, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 2575
    :goto_0
    return-void

    .line 2566
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Preview has not started."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2568
    :catch_0
    move-exception v0

    .line 2571
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->cancelSelftimer()V

    .line 2572
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 2573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AF failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleSelfTimerCountDown(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2499
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSelfTimerCountDown(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2501
    const/4 v0, 0x0

    .line 2502
    .local v0, remainTime:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v3, "INFINITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2504
    add-int/lit16 v0, p2, 0xc8

    .line 2514
    :goto_0
    const/4 v1, 0x0

    .local v1, timerLevel:I
    :goto_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 2515
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_4

    .line 2521
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 2522
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 2525
    :cond_1
    if-nez v1, :cond_5

    .line 2526
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->blink()V

    .line 2531
    :cond_2
    :goto_2
    return-void

    .line 2507
    .end local v1           #timerLevel:I
    :cond_3
    add-int/lit16 v2, p2, 0xc8

    sget v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->AF_DELAY_AVERAGE_TIME:I

    add-int v0, v2, v3

    goto :goto_0

    .line 2514
    .restart local v1       #timerLevel:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2527
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_LEVELS:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    sub-int v2, v0, v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SELF_TIMER_INTERVALS:[I

    aget v3, v3, v1

    rem-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 2529
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->blink()V

    goto :goto_2
.end method

.method public handleSelfTimerTimeOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2536
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSelfTimerTimeOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2537
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 2539
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2400(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2542
    return-void
.end method
