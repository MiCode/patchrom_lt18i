.class public Lcom/sonyericsson/android/camera3d/SweepCameraController;
.super Lcom/sonyericsson/android/camera3d/CameraController;
.source "SweepCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/SweepCameraController$1;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureFailed;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Store;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Capture;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$AfDone;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$AfSearch;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Warning;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$ViewFinder;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Pause;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCapturerState;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$HDMIConnected;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Error;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCaptureContext;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;,
        Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SweepCameraController"

.field public static final THUMBNAIL_THRESHOLD:I = 0x2d

.field private static final sErrorMessageId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

.field private mCaptureCallback:Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;

.field private mCapturingMode:I

.field private mConvertNv12ToNv21:Z

.field private mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

.field private mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

.field private mSweepDirection:I

.field private mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x7f0c011b

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    .line 385
    sget-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 5
    .parameter "context"
    .parameter "window"
    .parameter "device"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    .line 96
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getHdmiConnection()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    move-result-object v0

    .line 97
    .local v0, hdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->setHdmiConnectionListener(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;)V

    .line 100
    :cond_0
    new-instance v2, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCaptureContext;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    invoke-direct {v2, p0, v1, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController$SweepCaptureContext;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    .line 101
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$AutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    .line 102
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;

    .line 103
    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;

    invoke-direct {v1, p0, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController$StoreCallback;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/android/camera3d/SweepCameraController$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 104
    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 105
    new-instance v1, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    .line 106
    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doAfFailed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doCapture()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStopCapture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/SweepCameraController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doStoreData(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->onCameraReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/SweepCameraController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/SweepCameraController;)Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupStitchingEngine()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera3d/SweepCameraController;Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V

    return-void
.end method

.method private doAfFailed()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 219
    return-void
.end method

.method private doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 209
    .local v0, act:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 214
    return-void
.end method

.method private doCapture()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->disableAutoOffTimer()V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 228
    .local v8, width:I
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 230
    .local v9, height:I
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mSweepDirection:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mSweepDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 238
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sonyericsson/android/camera3d/CameraActivity;

    iget v6, v6, Lcom/sonyericsson/android/camera3d/CameraActivity;->mRotationDegree:I

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera3d/CameraActivity;->convertRotationToOrientation(I)I

    move-result v6

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->getTakenStatus(JIIIILandroid/location/Location;II)Lcom/sonyericsson/android/camera3d/TakenStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 253
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {v10, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .local v10, rect:Landroid/graphics/Rect;
    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureWidth:I

    const/16 v1, 0x1bf0

    if-ne v0, v1, :cond_3

    .line 259
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConvertNv12ToNv21:Z

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/SweepCameraController$CaptureCallback;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientationMode:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mSweepDirection:I

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConvertNv12ToNv21:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->start(Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;IIIIZ)V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->startCapture()V

    .line 271
    return-void

    .line 261
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConvertNv12ToNv21:Z

    goto :goto_0
.end method

.method private doShowStoreProgress(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->showStoreProgress(ILjava/lang/String;)V

    .line 377
    return-void
.end method

.method private doStopCapture()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->stop()V

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 351
    return-void
.end method

.method private doStoreData(I)V
    .locals 6
    .parameter "status"

    .prologue
    .line 355
    invoke-static {}, Lcom/sonyericsson/android/camera3d/WorkArea;->getInstance()Lcom/sonyericsson/android/camera3d/WorkArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/WorkArea;->unlock()V

    .line 356
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->doShowStoreProgress(I)V

    .line 359
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 360
    .local v4, takenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 361
    if-eqz v4, :cond_0

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->doGetCompressedData()I

    move-result v0

    iput v0, v4, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->getYUVData()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v2

    .line 364
    .local v2, data:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturingMode:I

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mConvertNv12ToNv21:Z

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPictures(I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 372
    .end local v2           #data:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    :cond_0
    return-void
.end method

.method private getTakenStatus(JIIIILandroid/location/Location;II)Lcom/sonyericsson/android/camera3d/TakenStatus;
    .locals 12
    .parameter "date"
    .parameter "recognizedScene"
    .parameter "orientationMode"
    .parameter "orientation"
    .parameter "orientationSensorCaptured"
    .parameter "location"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 299
    if-eqz p7, :cond_1

    .line 307
    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    const-wide/16 v1, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 315
    :cond_1
    move/from16 p5, p6

    .line 316
    const/16 v1, 0x5a

    move/from16 v0, p6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    .line 317
    :cond_2
    const/16 p4, 0x1

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v11, v1, Lcom/sonyericsson/android/camera3d/CameraDevice;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 326
    .local v11, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, v11, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 327
    iget v1, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int v1, v1, p5

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v0, v1, 0x168

    move/from16 p5, v0

    .line 329
    move/from16 v0, p5

    rsub-int v1, v0, 0x168

    rem-int/lit16 v0, v1, 0x168

    move/from16 p5, v0

    .line 335
    :goto_1
    new-instance v1, Lcom/sonyericsson/android/camera3d/TakenStatus;

    move-wide v2, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/sonyericsson/android/camera3d/TakenStatus;-><init>(JIIIILandroid/location/Location;II)V

    return-object v1

    .line 319
    .end local v11           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_3
    const/16 p4, 0x2

    goto :goto_0

    .line 332
    .restart local v11       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_4
    iget v1, v11, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int v1, v1, p5

    add-int/lit8 v1, v1, -0x5a

    rem-int/lit16 v0, v1, 0x168

    move/from16 p5, v0

    goto :goto_1
.end method

.method private isNeedRestartPreview(II)Z
    .locals 4
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-nez v3, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v1

    .line 647
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 648
    goto :goto_0

    .line 651
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 652
    .local v0, size:Landroid/hardware/Camera$Size;
    if-eqz v0, :cond_0

    .line 656
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, p1, :cond_3

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v3, p2, :cond_0

    :cond_3
    move v1, v2

    .line 657
    goto :goto_0
.end method

.method private onCameraReady()V
    .locals 4

    .prologue
    .line 434
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x85

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 435
    return-void
.end method

.method private setupPreview(Z)V
    .locals 6
    .parameter "init"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->changeSurfaceSize(II)V

    .line 597
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewHeight:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureWidth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPictureHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/CameraDevice;->changeSize(ZIIII)V

    .line 599
    if-eqz p1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(I)V

    .line 602
    :cond_0
    return-void
.end method

.method private setupStitchingEngine()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->setupStitchingEngine()V

    .line 835
    return-void
.end method


# virtual methods
.method public autofocus(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "focusPosition"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 409
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 414
    return-void
.end method

.method public cancelSelftimer()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public capture()V
    .locals 4

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 419
    return-void
.end method

.method public controlPhotoLight()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v0, :cond_0

    .line 803
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsPhotoLightOn:Z

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doAutoFocus()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->AF_ALLLOCK:[Z

    const/4 v4, 0x0

    aget-boolean v0, v3, v4

    .line 166
    .local v0, aeLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->AF_ALLLOCK:[Z

    const/4 v4, 0x1

    aget-boolean v1, v3, v4

    .line 167
    .local v1, awbLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->AF_ALLLOCK:[Z

    const/4 v4, 0x2

    aget-boolean v2, v3, v4

    .line 168
    .local v2, focusLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startAutoFocus(ZZZLcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;)V

    .line 169
    return-void
.end method

.method public doStopAf()V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 203
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xb0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method protected doZoomIn()V
    .locals 2

    .prologue
    .line 395
    sget-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->showZoomMessage(I)V

    .line 396
    return-void
.end method

.method protected doZoomOut()V
    .locals 2

    .prologue
    .line 400
    sget-object v0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->sErrorMessageId:Ljava/util/Map;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->showZoomMessage(I)V

    .line 401
    return-void
.end method

.method public onBatteryLow()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xf3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 510
    return-void
.end method

.method public onChangedLandscape()V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public onChangedPortrait()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 454
    return-void
.end method

.method public onExternalMemoryError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x81

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 460
    return-void
.end method

.method public onHdmiConnected()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 516
    return-void
.end method

.method public onHdmiDisconnected()V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x101

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 522
    return-void
.end method

.method public onMemoryMounted()V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method public onOffHook()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xf2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 500
    return-void
.end method

.method public onRinging()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xf1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 505
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, consumed:Z
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsTouchCapturing:Z

    if-eqz v1, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 477
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 479
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->autofocus(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 483
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->cancelAutoFocus()V

    goto :goto_0

    .line 487
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->release()V

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->release()V

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->removeStoreDataCallback(Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 113
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStoreCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 114
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getHdmiConnection()Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;

    move-result-object v0

    .line 115
    .local v0, hdmiConnection:Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection;->setHdmiConnectionListener(Lcom/sonyericsson/android/camera3d/viewer/service/HdmiConnection$HdmiConnectionListener;)V

    .line 118
    :cond_0
    return-void
.end method

.method public restartPreview()V
    .locals 4

    .prologue
    .line 613
    iget v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mSweepDirection:I

    packed-switch v2, :pswitch_data_0

    .line 625
    const/16 v1, 0x640

    .line 626
    .local v1, previewWidth:I
    const/16 v0, 0x4b0

    .line 630
    .local v0, previewHeight:I
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->isNeedRestartPreview(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->stopPreview(ZZ)V

    .line 632
    iput v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewWidth:I

    .line 633
    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mPreviewHeight:I

    .line 634
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setupPreview(Z)V

    .line 635
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsFaceDetection:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsSceneRecognition:Z

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->startPreview(ZZ)V

    .line 640
    :cond_0
    return-void

    .line 616
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_0
    const/16 v1, 0x640

    .line 617
    .restart local v1       #previewWidth:I
    const/16 v0, 0x4b0

    .line 618
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 621
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_1
    const/16 v1, 0x500

    .line 622
    .restart local v1       #previewWidth:I
    const/16 v0, 0x2d0

    .line 623
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setCapturingMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 752
    const/4 v0, -0x1

    .line 753
    .local v0, mode:I
    const-string v1, "PANORAMA_3D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 754
    const/4 v0, 0x0

    .line 760
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->setCapturingMode(I)Z

    .line 761
    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturingMode:I

    .line 763
    return-void

    .line 755
    :cond_1
    const-string v1, "MULTI_ANGLE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    const/4 v0, 0x2

    goto :goto_0

    .line 757
    :cond_2
    const-string v1, "PANORAMA_2D"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFaceDetection(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 711
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mFocusMode:Ljava/lang/String;

    .line 737
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setFocusModeToDevice(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/SweepCameraController;->setFocusModeToView(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method protected setInitState()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    new-instance v1, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/SweepCameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/SweepCameraController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 796
    return-void
.end method

.method public setPhotoLight(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 787
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mIsPhotoLightOn:Z

    .line 788
    return-void
.end method

.method public setResolution(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "prevW"
    .parameter "prevH"

    .prologue
    .line 745
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/CameraController;->setResolution(IIII)V

    .line 746
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->setResolution(II)V

    .line 747
    return-void
.end method

.method public setSceneRecognition(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 716
    return-void
.end method

.method public setSelfTimer(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 731
    return-void
.end method

.method public setSmileDetection(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 721
    return-void
.end method

.method public setSmileLevel(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 726
    return-void
.end method

.method public setSweepDirection(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, direction:I
    const-string v1, "LEFT_2_RIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const/4 v0, 0x0

    .line 780
    :cond_0
    :goto_0
    iput v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mSweepDirection:I

    .line 781
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mStitchEngine:Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->setCapturingDirection(I)V

    .line 782
    return-void

    .line 771
    :cond_1
    const-string v1, "RIGHT_2_LEFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    const/4 v0, 0x1

    goto :goto_0

    .line 773
    :cond_2
    const-string v1, "TOP_2_BOTTOM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    const/4 v0, 0x2

    goto :goto_0

    .line 775
    :cond_3
    const-string v1, "BOTTOM_2_TOP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected startAutoFocus(ZZZLcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;)V
    .locals 2
    .parameter "aeLock"
    .parameter "awbLock"
    .parameter "focusLock"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method public startPreview(ZZ)V
    .locals 3
    .parameter "startFaceDetect"
    .parameter "startSceneRecognition"

    .prologue
    .line 674
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v1, :cond_0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startPreview(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "SweepCameraController"

    const-string v2, "startPreview: failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSelftimer()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public stopPreview(ZZ)V
    .locals 1
    .parameter "stopFaceDetect"
    .parameter "stopSceneRecognition"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopPreview(ZZ)V

    .line 703
    :cond_0
    return-void
.end method

.method public stopZoom()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/CameraController;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;Z)V
    .locals 5
    .parameter "holder"
    .parameter "sync"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 148
    if-eqz p2, :cond_0

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    .local v0, dummy:Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v1, v4, v3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEmergencyEvent(IILjava/lang/Object;)V

    .line 154
    .end local v0           #dummy:Ljava/lang/Object;
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/SweepCameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public switchCamera(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 817
    return-void
.end method
