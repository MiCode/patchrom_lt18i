.class Lcom/sonyericsson/android/camera3d/CameraController$Idle;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 2
    .parameter

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 1420
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 1421
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showIdleView(I)V

    .line 1422
    return-void
.end method


# virtual methods
.method public handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewWidth:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->changeSurfaceSize(II)V

    .line 1499
    :cond_0
    return-void
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1503
    return-void
.end method

.method public handleSceneChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1505
    return-void
.end method

.method public handleSetupController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1427
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSetupController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1430
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewMode(Z)V

    .line 1431
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mAutoZoomCallback:Lcom/sonyericsson/android/camera3d/BaseController$AutoZoomCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1434
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateLocationServiceAvailable()V

    .line 1437
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showSurfaceView()V

    .line 1445
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v1, 0x1

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->setupCameraPreview(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$700(Lcom/sonyericsson/android/camera3d/CameraController;Z)V

    .line 1446
    return-void

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 6
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1451
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1455
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    check-cast p3, Landroid/view/SurfaceHolder;

    .end local p3
    invoke-virtual {v2, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v4, v4, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    .line 1464
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1466
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepare()V

    .line 1467
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateLocationServiceAvailable()V

    .line 1468
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 1470
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->startFadeinAnimation()V

    .line 1473
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1476
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 1477
    .local v0, cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getBackFromLocationSourceSettings()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1479
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v3, 0x72

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1481
    :cond_1
    return-void

    .line 1456
    .end local v0           #cameraActivity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    :catch_0
    move-exception v1

    .line 1457
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setPreviewDisplay failed and no error callback."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1507
    return-void
.end method
