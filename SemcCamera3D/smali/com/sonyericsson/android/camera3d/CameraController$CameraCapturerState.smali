.class Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.super Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraCapturerState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1336
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    return-void
.end method


# virtual methods
.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    .line 1341
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->stopPreview(ZZ)V

    .line 1343
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Idle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1344
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1345
    return-void
.end method

.method public handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1358
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleCameraError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1359
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Error;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController$Error;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1360
    return-void
.end method

.method public handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1398
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v0, :cond_0

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$500(Lcom/sonyericsson/android/camera3d/CameraController;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(IZ)V

    goto :goto_0
.end method

.method public handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1365
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleExternalMemoryError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1367
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$Warning;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v0, v1, p2}, Lcom/sonyericsson/android/camera3d/CameraController$Warning;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;I)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1368
    return-void
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1383
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 1388
    return-void
.end method

.method public handleGetCompressedData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 0
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1353
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleGetCompressedData(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1354
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1411
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1412
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 1413
    return-void
.end method

.method public handleSceneChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1392
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;->handleSceneChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1393
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->changeRecognizedScene(IZ)V

    .line 1394
    return-void
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1373
    if-nez p3, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doZoomProgress(IZ)V

    .line 1378
    .end local p3
    :goto_0
    return-void

    .line 1376
    .restart local p3
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doZoomProgress(IZ)V

    goto :goto_0
.end method
