.class Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;
.super Lcom/sonyericsson/android/camera3d/CameraController$AfDone;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitingForSmile"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 2
    .parameter

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 2277
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 2278
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 2280
    return-void
.end method


# virtual methods
.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2288
    if-nez p2, :cond_0

    .line 2289
    instance-of v1, p3, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 2290
    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 2291
    .local v0, results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    iget v1, v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceNum:I

    if-nez v1, :cond_1

    .line 2295
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xd5

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 2319
    .end local v0           #results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2320
    return-void

    .line 2297
    .restart local v0       #results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doCheckResults(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2298
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, p2, v0, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->doUpdateFaceDetectionResult(ILcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 2300
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2304
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 2305
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #setter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1702(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 2308
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doUpdateSmileScore(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1800(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 2309
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceData:[Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->getIndexOfSelectedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)I

    move-result v3

    aget-object v2, v2, v3

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doCheckSmileLevel(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1900(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2311
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->capture()V

    goto :goto_0
.end method

.method public handleFaceDetectTimeout(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 2357
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleFaceDetectTimeout(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2359
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 2361
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #setter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1702(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 2364
    return-void
.end method

.method public handleFaceDetectTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 8
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2344
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleFaceDetectTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2345
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2346
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 2347
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1702(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 2349
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    new-instance v0, Lcom/sonyericsson/android/camera3d/SelfTimer;

    const-wide/16 v1, 0xbb8

    const-wide/16 v3, 0xfa

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;
    invoke-static {v5}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2100(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;

    move-result-object v5

    const-string v6, "FaceDetect"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/SelfTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;)V

    #setter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v7, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1702(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 2351
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->start()V

    .line 2352
    return-void
.end method

.method public handleFocusedFaceChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2325
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleFocusedFaceChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2333
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 2334
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopAf()V

    .line 2335
    if-eqz p3, :cond_0

    .line 2336
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera3d/CameraController;->doChangeFocusedFace([I)V

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doHideSmileGauge()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2000(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 2339
    return-void
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2377
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2378
    return-void
.end method

.method public handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2370
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$AfDone;->handleKeyAutoFocusCancel(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2371
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 2372
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2380
    return-void
.end method
