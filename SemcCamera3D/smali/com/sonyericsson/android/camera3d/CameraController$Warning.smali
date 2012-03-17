.class Lcom/sonyericsson/android/camera3d/CameraController$Warning;
.super Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Warning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V
    .locals 3
    .parameter
    .parameter "err"

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    .line 1908
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 1911
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableBackKey()V

    .line 1913
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1914
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setAllCameraSettings()V

    .line 1915
    const/4 v1, 0x0

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->setupCameraPreview(Z)V
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$700(Lcom/sonyericsson/android/camera3d/CameraController;Z)V

    .line 1925
    :try_start_0
    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1930
    :goto_0
    iget-boolean v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-boolean v2, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {p1, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    .line 1933
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 1936
    packed-switch p2, :pswitch_data_0

    .line 1951
    :pswitch_0
    return-void

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPreviewDisplay failed and no error callback."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1936
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v0, :cond_0

    .line 1981
    :goto_0
    return-void

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$500(Lcom/sonyericsson/android/camera3d/CameraController;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1989
    return-void
.end method

.method public handleExternalMemoryInsert(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1956
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->handleExternalMemoryInsert(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1957
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1958
    return-void
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1995
    return-void
.end method

.method public handleGetRawData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1965
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->handleGetRawData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1966
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->stopStoringPicture()V

    .line 1967
    return-void
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1993
    return-void
.end method

.method public handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1986
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->handleKeyCapture(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1987
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1991
    return-void
.end method
