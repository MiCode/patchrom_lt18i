.class public final Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/CameraController;


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 4
    .parameter "results"

    .prologue
    const/4 v3, 0x0

    .line 1241
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->FACE_DETECTION_SEARCH:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1243
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v1, :cond_0

    .line 1275
    :goto_0
    return-void

    .line 1248
    :cond_0
    if-eqz p1, :cond_1

    .line 1251
    iget v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceNum:I

    if-lez v1, :cond_1

    .line 1254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->faceNum:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1267
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v2, "FACE_DETECTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1268
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2, v3, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1269
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera3d/CameraController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 1273
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->FACE_DETECTION_SEARCH:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    goto :goto_0
.end method
