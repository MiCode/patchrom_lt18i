.class Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;
.super Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/SweepCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 2
    .parameter

    .prologue
    .line 973
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    .line 974
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 975
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showIdleView(I)V

    .line 976
    return-void
.end method


# virtual methods
.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1051
    return-void
.end method

.method public handleHdmiConnected(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1054
    return-void
.end method

.method public handleSetupController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 981
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSetupController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewMode(Z)V

    .line 987
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateLocationServiceAvailable()V

    .line 990
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 991
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showSurfaceView()V

    .line 998
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    const/4 v1, 0x1

    #calls: Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$400(Lcom/sonyericsson/android/camera3d/SweepCameraController;Z)V

    .line 999
    return-void

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1004
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    check-cast p3, Landroid/view/SurfaceHolder;

    .end local p3
    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewFpsRange(I)V

    .line 1018
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 1020
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepared()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->prepare()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1035
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->updateLocationServiceAvailable()V

    .line 1036
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 1038
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->startFadeinAnimation()V

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1044
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->access$600(Lcom/sonyericsson/android/camera3d/SweepCameraController;)Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->addStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 1048
    :goto_1
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPreviewDisplay failed and no error callback."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1025
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1026
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "SweepCameraController"

    const-string v2, "Out of memory error occurred in CameraWindow.prepare()."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abortByStartFailed()V

    goto :goto_1

    .line 1029
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 1030
    .local v0, e:Landroid/view/InflateException;
    const-string v1, "SweepCameraController"

    const-string v2, "InflateException occurred in CameraWindow.prepare()."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->abortByStartFailed()V

    goto :goto_1

    .line 1046
    .end local v0           #e:Landroid/view/InflateException;
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;->this$0:Lcom/sonyericsson/android/camera3d/SweepCameraController;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    goto :goto_1
.end method
