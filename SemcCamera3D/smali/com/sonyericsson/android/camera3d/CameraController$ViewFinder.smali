.class Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;
.super Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x32

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1630
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    .line 1631
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->VIEWFINDER_CONSTRUCTOR:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1634
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->clear()V

    .line 1637
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/CameraController;->controlPhotoLight()V

    .line 1640
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 1643
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1644
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v1, "TOUCH_FOCUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, v2, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusPosition(II)V

    .line 1646
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewWidth:I

    iget v2, p1, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewHeight:I

    invoke-virtual {v0, v3, v1, v2, v5}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 1651
    :cond_1
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->setupDefaultView(I)V

    .line 1653
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->VIEWFINDER_CONSTRUCTOR:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1654
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v4}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1655
    return-void
.end method


# virtual methods
.method public canChangeMode()Z
    .locals 1

    .prologue
    .line 1694
    const/4 v0, 0x1

    return v0
.end method

.method public canOpenWindow()Z
    .locals 1

    .prologue
    .line 1699
    const/4 v0, 0x1

    return v0
.end method

.method public handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1663
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleAborting(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1664
    return-void
.end method

.method public handleChangeOrientation(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v3, 0x32

    .line 1869
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v0, :cond_0

    .line 1893
    :goto_0
    return-void

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideSurfaceView()V

    .line 1878
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->stopPreview(ZZ)V

    .line 1879
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #getter for: Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->access$500(Lcom/sonyericsson/android/camera3d/CameraController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->setOrientation(I)V

    .line 1882
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v1, "TOUCH_FOCUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1884
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusPosition(II)V

    .line 1885
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewWidth:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfMode(IIILandroid/graphics/Rect;)V

    .line 1890
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1892
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showSurfaceView()V

    goto :goto_0
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 1803
    instance-of v1, p3, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 1804
    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 1805
    .local v0, results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->doUpdateFaceDetectionResult(ILcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 1806
    if-nez p2, :cond_0

    iget v1, v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceNum:I

    if-lez v1, :cond_0

    .line 1807
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doCheckResults(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1808
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v2, "FACE_DETECTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSmileDetection:Z

    if-eqz v1, :cond_0

    .line 1810
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1812
    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1813
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->autofocus(Landroid/graphics/Rect;)V

    .line 1821
    .end local v0           #results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleFaceDetect(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1822
    return-void

    .line 1814
    .restart local v0       #results:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public handleFaceDetectError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1790
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleFaceDetectError(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopFaceDetect()V

    .line 1794
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startFaceDetect()V

    .line 1795
    return-void
.end method

.method public handleFocusPositionChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1776
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleFocusPositionChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1777
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 1778
    check-cast v0, Landroid/graphics/Rect;

    .line 1779
    .local v0, area:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->doSetFocusPosition(II)V

    .line 1780
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doSetAfMode(Landroid/graphics/Rect;)V

    .line 1782
    .end local v0           #area:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public handleFocusedFaceChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1827
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleFocusedFaceChange(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1828
    if-eqz p3, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    check-cast p3, [I

    .end local p3
    check-cast p3, [I

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera3d/CameraController;->doChangeFocusedFace([I)V

    .line 1831
    :cond_0
    return-void
.end method

.method public handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1745
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyAutoFocus(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1747
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 1748
    check-cast v0, Landroid/graphics/Rect;

    .line 1749
    .local v0, area:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/CameraController;->doSetFocusPosition(II)V

    .line 1750
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doSetAfMode(Landroid/graphics/Rect;)V

    .line 1753
    .end local v0           #area:Landroid/graphics/Rect;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSelfTimer:Z

    if-eqz v2, :cond_1

    .line 1771
    :goto_0
    return-void

    .line 1757
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1758
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusView()V

    .line 1760
    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1761
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraController;->doAutoFocus()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1766
    :catch_0
    move-exception v1

    .line 1767
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 1768
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AF failed."

    invoke-static {v2, v3, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1764
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Preview has not started."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public handleKeyZoom(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1850
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyZoom(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1851
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1852
    return-void
.end method

.method public handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1836
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyZoomIn(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doZoomIn()V

    .line 1838
    return-void
.end method

.method public handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1843
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleKeyZoomOut(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doZoomOut()V

    .line 1845
    return-void
.end method

.method public handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1858
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleLowBattery(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1860
    return-void
.end method

.method public handlePauseController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 5
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 1714
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handlePauseController(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1715
    check-cast p3, Ljava/lang/Boolean;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1716
    .local v0, stopPreview:Z
    if-eqz v0, :cond_1

    .line 1717
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->stopPreview(ZZ)V

    .line 1718
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideSurfaceView()V

    .line 1723
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1724
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-nez v1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraController;->doResetKeyState()V

    .line 1728
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1729
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideDefaultView(I)V

    .line 1730
    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$Pause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {v1, v2, v4}, Lcom/sonyericsson/android/camera3d/CameraController$Pause;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1731
    return-void

    .line 1721
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->suspend(ZZ)V

    goto :goto_0
.end method

.method public handleResumeGeoTagDialog(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->openGeotagSettingsDialog()V

    .line 1737
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 3
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1898
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSelfTimerStart(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1899
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showAutoFocusView()V

    .line 1900
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    #calls: Lcom/sonyericsson/android/camera3d/CameraController;->doSelfTimerStart()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->access$1000(Lcom/sonyericsson/android/camera3d/CameraController;)V

    .line 1901
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 1902
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 4
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1678
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSurfaceChanged(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1682
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    check-cast p3, Landroid/view/SurfaceHolder;

    .end local p3
    invoke-virtual {v1, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v2, v2, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v3, v3, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    .line 1690
    return-void

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPreviewDisplay failed and no error callback."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraController;->doStopZoom()V

    .line 1672
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;ILjava/lang/Object;)V

    .line 1673
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v0, :cond_0

    .line 1706
    const/4 v0, 0x0

    .line 1708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
