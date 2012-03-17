.class Lcom/sonyericsson/android/camera3d/CameraController$Capture;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Capture"
.end annotation


# instance fields
.field private isGotCompressedData:Z

.field private isGotRawData:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2386
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 2388
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotCompressedData:Z

    .line 2391
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotRawData:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2386
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$Capture;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method

.method private checkGuardCondition(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 2431
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotCompressedData:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotRawData:Z

    if-eqz v1, :cond_1

    .line 2432
    const/16 v1, 0x50

    const-class v2, Lcom/sonyericsson/android/camera3d/CameraController$Store;

    invoke-virtual {p1, v1, v0, v3, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;Ljava/lang/Class;)V

    .line 2433
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Store;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2434
    const/4 v0, 0x1

    .line 2440
    :cond_0
    :goto_0
    return v0

    .line 2435
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotCompressedData:Z

    if-eqz v1, :cond_0

    .line 2437
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, -0x2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->onError(ILandroid/hardware/Camera;)V

    goto :goto_0
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2451
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2452
    return-void
.end method

.method public handleGetCompressedData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotCompressedData:Z

    .line 2400
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$500(Lcom/sonyericsson/android/camera3d/CameraController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->setOrientation(I)V

    .line 2402
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->checkGuardCondition(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2403
    if-eqz p3, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, [B

    .end local p3
    check-cast p3, [B

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doGetCompressedData([B)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2200(Lcom/sonyericsson/android/camera3d/CameraController;[B)V

    .line 2406
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->SHUTTER_TRANSITION:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 2409
    :cond_1
    return-void
.end method

.method public handleGetRawData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doGetRawData(Ljava/lang/Object;)V
    invoke-static {v0, p3}, Lcom/sonyericsson/android/camera3d/CameraController;->access$2300(Lcom/sonyericsson/android/camera3d/CameraController;Ljava/lang/Object;)V

    .line 2416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->isGotRawData:Z

    .line 2418
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$Capture;->checkGuardCondition(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    :cond_0
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2459
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 2460
    return-void
.end method
