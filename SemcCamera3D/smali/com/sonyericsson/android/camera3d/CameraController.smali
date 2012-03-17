.class public Lcom/sonyericsson/android/camera3d/CameraController;
.super Lcom/sonyericsson/android/camera3d/BaseController;
.source "CameraController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/android/camera3d/Capturer;
.implements Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
.implements Lcom/sonyericsson/android/camera3d/ExtendedActivity$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/CameraController$1;,
        Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerWait;,
        Lcom/sonyericsson/android/camera3d/CameraController$Store;,
        Lcom/sonyericsson/android/camera3d/CameraController$Capture;,
        Lcom/sonyericsson/android/camera3d/CameraController$WaitingForSmile;,
        Lcom/sonyericsson/android/camera3d/CameraController$AfSearchBeforeSmile;,
        Lcom/sonyericsson/android/camera3d/CameraController$AfDone;,
        Lcom/sonyericsson/android/camera3d/CameraController$Inactive;,
        Lcom/sonyericsson/android/camera3d/CameraController$AfSearch;,
        Lcom/sonyericsson/android/camera3d/CameraController$Warning;,
        Lcom/sonyericsson/android/camera3d/CameraController$ViewFinder;,
        Lcom/sonyericsson/android/camera3d/CameraController$Pause;,
        Lcom/sonyericsson/android/camera3d/CameraController$Error;,
        Lcom/sonyericsson/android/camera3d/CameraController$Idle;,
        Lcom/sonyericsson/android/camera3d/CameraController$CameraCapturerState;,
        Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;,
        Lcom/sonyericsson/android/camera3d/CameraController$SceneRecognitionCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;,
        Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;,
        Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;
    }
.end annotation


# static fields
.field public static final AF_FAILED:I = 0x1

.field public static final AF_STOP:I = 0x2

.field public static final AF_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraController"


# instance fields
.field protected final AF_AEAWBLOCK:[Z

.field protected final AF_AFLOCK:[Z

.field protected final AF_ALLLOCK:[Z

.field private mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

.field private mAutoFocusCallbackDetectedFace:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

.field private mCurrentOrientation:I

.field private mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

.field private mFaceDetectTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;

.field private mJpegPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;

.field private mLastTakenState:Lcom/sonyericsson/android/camera3d/TakenStatus;

.field private mRawPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;

.field private mSceneRecogCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

.field private mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

.field private mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

.field private mShutterCallback:Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;

.field private mShutterPressTime:J

.field protected mSurcaceChangedLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 4
    .parameter "context"
    .parameter "window"
    .parameter "device"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/BaseController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/view/CameraWindow;Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    .line 64
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_ALLLOCK:[Z

    .line 67
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AEAWBLOCK:[Z

    .line 70
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AFLOCK:[Z

    .line 94
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 100
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSurcaceChangedLock:Ljava/lang/Object;

    .line 201
    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera3d/CameraController$Inactive;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/sonyericsson/android/camera3d/CameraController$CameraCaptureContext;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Landroid/app/Activity;Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    .line 204
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    .line 205
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraController$AutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mAutoFocusCallbackDetectedFace:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    .line 206
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mShutterCallback:Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;

    .line 207
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mRawPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;

    .line 208
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mJpegPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;

    .line 209
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$SceneRecognitionCallback;

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera3d/CameraController$SceneRecognitionCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSceneRecogCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    .line 211
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;

    .line 212
    new-instance v0, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    .line 213
    iput-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mLastTakenState:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 214
    return-void

    .line 64
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 67
    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 70
    :array_2
    .array-data 0x1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->doSelfTimerStart()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraController;->doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->doAfFailed()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->doCapture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/SelfTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doUpdateSmileScore(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doCheckSmileLevel(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->doHideSmileGauge()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$FaceDetectTimerHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera3d/CameraController;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doGetCompressedData([B)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera3d/CameraController;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->doGetRawData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera3d/CameraController;)Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sonyericsson/android/camera3d/CameraController;Lcom/sonyericsson/android/camera3d/SelfTimer;)Lcom/sonyericsson/android/camera3d/SelfTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera3d/CameraController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->doSelfTimerCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/CameraController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/CameraController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->setupCameraPreview(Z)V

    return-void
.end method

.method private doAfFailed()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 368
    return-void
.end method

.method private doAfSuccessed(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V
    .locals 3
    .parameter "result"
    .parameter "showOtherFaceRectangles"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v2, "INFINITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 356
    .local v0, act:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 359
    .end local v0           #act:Lcom/sonyericsson/android/camera3d/CameraActivity;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;Z)V

    .line 363
    return-void
.end method

.method private doCapture()V
    .locals 28

    .prologue
    .line 372
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->SHUTTER_TRANSITION:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v11, 0x1

    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 373
    const-string v3, "Start take picture"

    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureResource(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v3, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 376
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mFaceDetectTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sonyericsson/android/camera3d/CameraActivity;

    .line 382
    .local v13, activity:Lcom/sonyericsson/android/camera3d/CameraActivity;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 385
    .local v4, dateTaken:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 386
    .local v10, location:Landroid/location/Location;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentScene:I

    .line 387
    .local v6, scene:I
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getOrientationValue()I

    move-result v9

    .line 388
    .local v9, orientationSensorcaptured:I
    const/4 v7, 0x2

    .line 389
    .local v7, orientationMode:I
    const/4 v8, 0x0

    .line 391
    .local v8, orientation:I
    const/4 v3, -0x1

    if-ne v9, v3, :cond_5

    .line 392
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraController$1;->$SwitchMap$com$sonyericsson$android$camera3d$CameraConfig$LayoutOrientation:[I

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getLastLayoutOrientation()Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera3d/CameraConfig$LayoutOrientation;->ordinal()I

    move-result v11

    aget v3, v3, v11

    packed-switch v3, :pswitch_data_0

    .line 415
    :goto_0
    invoke-virtual {v13}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera3d/ControllerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/ControllerManager;->getCameraId()I

    move-result v16

    .line 416
    .local v16, cameraId:I
    new-instance v18, Landroid/hardware/Camera$CameraInfo;

    invoke-direct/range {v18 .. v18}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 417
    .local v18, info:Landroid/hardware/Camera$CameraInfo;
    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 423
    move-object/from16 v0, v18

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_8

    .line 424
    move-object/from16 v0, v18

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x5a

    rem-int/lit16 v8, v3, 0x168

    .line 425
    rsub-int v3, v8, 0x168

    rem-int/lit16 v8, v3, 0x168

    .line 435
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v23

    .line 437
    .local v23, p:Landroid/hardware/Camera$Parameters;
    if-eqz v23, :cond_3

    .line 438
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 441
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 444
    if-eqz v10, :cond_3

    .line 447
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v19

    .line 448
    .local v19, lat:D
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v21

    .line 449
    .local v21, lon:D
    const-wide/16 v11, 0x0

    cmpl-double v3, v19, v11

    if-nez v3, :cond_1

    const-wide/16 v11, 0x0

    cmpl-double v3, v21, v11

    if-eqz v3, :cond_9

    :cond_1
    const/16 v17, 0x1

    .line 451
    .local v17, hasLatLon:Z
    :goto_2
    if-eqz v17, :cond_3

    .line 455
    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 456
    move-object/from16 v0, v23

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 460
    invoke-virtual {v10}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 462
    .local v14, altitude:Ljava/lang/Double;
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v26, 0x408f400000000000L

    mul-double v11, v11, v26

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 463
    .local v15, altitudeX1000:Ljava/lang/Double;
    invoke-virtual {v15}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    long-to-double v11, v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 476
    .end local v14           #altitude:Ljava/lang/Double;
    .end local v15           #altitudeX1000:Ljava/lang/Double;
    :cond_2
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    const-wide/16 v26, 0x0

    cmp-long v3, v11, v26

    if-eqz v3, :cond_3

    .line 479
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    const-wide/16 v26, 0x3e8

    div-long v24, v11, v26

    .line 480
    .local v24, utcTimeSeconds:J
    invoke-virtual/range {v23 .. v25}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 487
    .end local v17           #hasLatLon:Z
    .end local v19           #lat:D
    .end local v21           #lon:D
    .end local v24           #utcTimeSeconds:J
    :cond_3
    new-instance v3, Lcom/sonyericsson/android/camera3d/TakenStatus;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/sonyericsson/android/camera3d/TakenStatus;-><init>(JIIIILandroid/location/Location;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mLastTakenState:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 496
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->TAKE_PICTURE_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v11, 0x1

    invoke-static {v3, v11}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mShutterPressTime:J

    .line 498
    if-eqz v23, :cond_4

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setParametersSafe(Landroid/hardware/Camera$Parameters;)V

    .line 501
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mShutterCallback:Lcom/sonyericsson/android/camera3d/CameraController$ShutterCallback;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mRawPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$RawPictureCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mJpegPictureCallback:Lcom/sonyericsson/android/camera3d/CameraController$JpegPictureCallback;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v3, v11, v12, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideAfIndicator()V

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationMacro(Z)V

    .line 509
    return-void

    .line 396
    .end local v16           #cameraId:I
    .end local v18           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v23           #p:Landroid/hardware/Camera$Parameters;
    :pswitch_0
    const/4 v7, 0x1

    .line 397
    const/16 v8, 0x5a

    .line 398
    goto/16 :goto_0

    .line 402
    :pswitch_1
    const/4 v7, 0x2

    .line 403
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 407
    :cond_5
    move v8, v9

    .line 408
    const/16 v3, 0x5a

    if-eq v9, v3, :cond_6

    const/16 v3, 0x10e

    if-ne v9, v3, :cond_7

    .line 409
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 411
    :cond_7
    const/4 v7, 0x2

    goto/16 :goto_0

    .line 427
    .restart local v16       #cameraId:I
    .restart local v18       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_8
    move-object/from16 v0, v18

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x5a

    rem-int/lit16 v8, v3, 0x168

    goto/16 :goto_1

    .line 449
    .restart local v19       #lat:D
    .restart local v21       #lon:D
    .restart local v23       #p:Landroid/hardware/Camera$Parameters;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private doCheckSmileLevel(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;)Z
    .locals 2
    .parameter "faceData"

    .prologue
    .line 619
    iget v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->smileScore:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSmileLevel:I

    if-lt v0, v1, :cond_0

    .line 620
    const/4 v0, 0x1

    .line 622
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doGetCompressedData([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 513
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->SAVING_TIME_PHOTO_EACH_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPictureWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPictureHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ZLjava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mLastTakenState:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 517
    .local v0, status:Lcom/sonyericsson/android/camera3d/TakenStatus;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mLastTakenState:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 518
    if-eqz v0, :cond_1

    .line 519
    iget v1, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    if-eqz v1, :cond_0

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->doGetCompressedData()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    .line 524
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mImageManager:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->storePicture([BLcom/sonyericsson/android/camera3d/TakenStatus;)V

    .line 532
    :cond_1
    return-void
.end method

.method private doGetRawData(Ljava/lang/Object;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 535
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->RAW_DATA_CALLBACK_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 556
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->RAW_DATA_CALLBACK_END:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 557
    return-void
.end method

.method private doHideSmileGauge()V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method private doSelfTimerCancel()V
    .locals 4

    .prologue
    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 598
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->getSelfTimerTime(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_1

    .line 600
    const/4 v0, 0x2

    .line 604
    .local v0, sound:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->cancelPlayAndBlink(I)V

    .line 605
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 607
    .end local v0           #sound:I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FLASH:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 608
    return-void

    .line 602
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #sound:I
    goto :goto_0
.end method

.method private doSelfTimerStart()V
    .locals 9

    .prologue
    const-wide/16 v3, 0xfa

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->cancel()V

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 565
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SELF_TIMER:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->getSelfTimerTime(Ljava/lang/Object;)I

    move-result v7

    .line 566
    .local v7, maxtime:I
    if-gtz v7, :cond_1

    .line 592
    :goto_0
    return-void

    .line 571
    :cond_1
    const/16 v0, 0x2710

    if-ne v7, v0, :cond_2

    .line 572
    const/4 v8, 0x2

    .line 577
    .local v8, sound:I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v1, "INFINITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    new-instance v0, Lcom/sonyericsson/android/camera3d/SelfTimer;

    add-int/lit16 v1, v7, -0xc8

    int-to-long v1, v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    const-string v6, "SelfTimer"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/SelfTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    .line 589
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->play(I)V

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/SelfTimer;->start()V

    goto :goto_0

    .line 574
    .end local v8           #sound:I
    :cond_2
    const/4 v8, 0x1

    .restart local v8       #sound:I
    goto :goto_1

    .line 585
    :cond_3
    new-instance v0, Lcom/sonyericsson/android/camera3d/SelfTimer;

    add-int/lit16 v1, v7, -0xc8

    sget v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->AF_DELAY_AVERAGE_TIME:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimerHandler:Lcom/sonyericsson/android/camera3d/CameraController$SelfTimerHandler;

    const-string v6, "SelfTimer"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/SelfTimer;-><init>(JJLandroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSelfTimer:Lcom/sonyericsson/android/camera3d/SelfTimer;

    goto :goto_2
.end method

.method private doUpdateSmileScore(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 635
    return-void
.end method

.method private setupCameraPreview(Z)V
    .locals 7
    .parameter "init"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->changeSurfaceSize(II)V

    .line 257
    iget v6, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    .line 258
    .local v6, prevOrientation:I
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(I)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewHeight:I

    iget v4, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPictureWidth:I

    iget v5, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPictureHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/CameraDevice;->changeSize(ZIIII)V

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->setMaxZoomStep()V

    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->initZoom()V

    .line 273
    return-void
.end method

.method private startSceneRecogition()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSceneRecogCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 646
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startSceneRecognition()V

    .line 649
    invoke-virtual {p0, v2, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->changeRecognizedScene(IZ)V

    .line 650
    return-void
.end method

.method private stopSceneRecogition()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopSceneRecognition()V

    .line 658
    return-void
.end method


# virtual methods
.method public autofocus(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "focusPosition"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 663
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x32

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 668
    return-void
.end method

.method public cancelSelftimer()V
    .locals 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xe4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 683
    return-void
.end method

.method public capture()V
    .locals 4

    .prologue
    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 673
    return-void
.end method

.method public changeRecognizedScene(IZ)V
    .locals 2
    .parameter "scene"
    .parameter "isMacroFocus"

    .prologue
    const/4 v1, -0x1

    .line 2686
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    if-eqz v0, :cond_1

    .line 2688
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentScene:I

    if-eq v0, p1, :cond_0

    .line 2689
    iput p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentScene:I

    .line 2690
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationScene(I)V

    .line 2693
    :cond_0
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsMacroFocus:Z

    .line 2694
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationMacro(Z)V

    .line 2700
    :goto_0
    return-void

    .line 2696
    :cond_1
    iput v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentScene:I

    .line 2697
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationScene(I)V

    goto :goto_0
.end method

.method public doAutoFocus()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v4, "INFINITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AEAWBLOCK:[Z

    aget-boolean v0, v3, v5

    .line 287
    .local v0, aeLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AEAWBLOCK:[Z

    aget-boolean v1, v3, v6

    .line 288
    .local v1, awbLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AEAWBLOCK:[Z

    aget-boolean v2, v3, v7

    .line 295
    .local v2, focusLock:Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mAutoFocusCallback:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->startAutoFocus(ZZZLcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;)V

    .line 296
    return-void

    .line 290
    .end local v0           #aeLock:Z
    .end local v1           #awbLock:Z
    .end local v2           #focusLock:Z
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_ALLLOCK:[Z

    aget-boolean v0, v3, v5

    .line 291
    .restart local v0       #aeLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_ALLLOCK:[Z

    aget-boolean v1, v3, v6

    .line 292
    .restart local v1       #awbLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_ALLLOCK:[Z

    aget-boolean v2, v3, v7

    .restart local v2       #focusLock:Z
    goto :goto_0
.end method

.method public doAutoFocusDetectedFace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AFLOCK:[Z

    const/4 v4, 0x0

    aget-boolean v0, v3, v4

    .line 304
    .local v0, aeLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AFLOCK:[Z

    const/4 v4, 0x1

    aget-boolean v1, v3, v4

    .line 305
    .local v1, awbLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->AF_AFLOCK:[Z

    const/4 v4, 0x2

    aget-boolean v2, v3, v4

    .line 306
    .local v2, focusLock:Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mAutoFocusCallbackDetectedFace:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->startAutoFocus(ZZZLcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;)V

    .line 307
    return-void
.end method

.method public doStopAf()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopAutoFocus()V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xb0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 350
    return-void
.end method

.method protected doStopZoom()V
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopSmoothZoom()V

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsRecording:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->hideZoombar(Z)V

    .line 926
    return-void
.end method

.method protected doZoomIn()V
    .locals 2

    .prologue
    .line 896
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mMaxZoomStep:I

    if-lez v0, :cond_0

    .line 897
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mMaxZoomStep:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->startAutoZoom(I)V

    .line 902
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->getErrorMessageId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->showZoomMessage(I)V

    goto :goto_0
.end method

.method protected doZoomOut()V
    .locals 2

    .prologue
    .line 909
    iget v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mMaxZoomStep:I

    if-lez v0, :cond_0

    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->startAutoZoom(I)V

    .line 915
    :goto_0
    return-void

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->getErrorMessageId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->showZoomMessage(I)V

    goto :goto_0
.end method

.method protected doZoomProgress(IZ)V
    .locals 3
    .parameter "current_value"
    .parameter "stopped"

    .prologue
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->updateZoombar(I)V

    .line 936
    if-eqz p2, :cond_1

    .line 937
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomContinued:Z

    .line 940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->setTouchAreaListener()V

    .line 944
    if-nez p1, :cond_0

    .line 945
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v1, "MULTI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomingAfModeChanged:Z

    if-eqz v0, :cond_0

    .line 947
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mZoomingAfModeChanged:Z

    .line 948
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->setAfMulti()V

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->releaseOrientation()V

    .line 955
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->clearIgnoreOnKeyDownEventUntilZoomStop()V

    .line 957
    :cond_1
    return-void
.end method

.method public initZoom()V
    .locals 3

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, zoomStep:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->ZOOM_STEP:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->setZoomStep(Ljava/lang/Object;I)V

    .line 873
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setZoom(I)V

    .line 874
    return-void
.end method

.method protected isPreviewing()Z
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v0

    return v0
.end method

.method public onBatteryLow()V
    .locals 4

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xf3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 1130
    return-void
.end method

.method public onChangedLandscape()V
    .locals 5

    .prologue
    .line 2639
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    .line 2642
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSurcaceChangedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2646
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->cancel(I)V

    .line 2647
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->cancel(I)V

    .line 2648
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xa0

    iget v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 2650
    monitor-exit v1

    .line 2651
    return-void

    .line 2650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onChangedPortrait()V
    .locals 5

    .prologue
    .line 2655
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    .line 2658
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mSurcaceChangedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2662
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->cancel(I)V

    .line 2663
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->cancel(I)V

    .line 2664
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v2, 0xa0

    iget v3, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentOrientation:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 2666
    monitor-exit v1

    .line 2667
    return-void

    .line 2666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter "error"
    .parameter "camera"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 976
    return-void
.end method

.method public onExternalMemoryError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x81

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 982
    return-void
.end method

.method public onHdmiConnected()V
    .locals 0

    .prologue
    .line 1134
    return-void
.end method

.method public onHdmiDisconnected()V
    .locals 0

    .prologue
    .line 1138
    return-void
.end method

.method public onMemoryMounted()V
    .locals 4

    .prologue
    .line 986
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 987
    return-void
.end method

.method public onOffHook()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public onRinging()V
    .locals 0

    .prologue
    .line 1125
    return-void
.end method

.method public onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .parameter "status"
    .parameter "store_result"
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 992
    const/4 v2, 0x0

    .line 994
    .local v2, res:Z
    if-eqz p4, :cond_3

    .line 995
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 996
    if-nez p2, :cond_2

    .line 997
    const/4 v2, 0x1

    .line 1001
    :goto_0
    if-eqz p1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    iget v1, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    const-string v4, "image/jpeg"

    iget v5, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->onStoreComplete(IZLandroid/net/Uri;Ljava/lang/String;I)V

    .line 1017
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->enableAutoOffTimer()V

    .line 1018
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->SAVING_TIME_PHOTO_EACH_SIZE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v0, v7}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1020
    if-eqz p1, :cond_1

    .line 1021
    iget v0, p1, Lcom/sonyericsson/android/camera3d/TakenStatus;->mRequestId:I

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->showStoreResult(II)V

    .line 1023
    :cond_1
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object p3, v6, v0

    const/4 v0, 0x2

    aput-object p4, v6, v0

    .line 1025
    .local v6, results:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v7, v6}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendRapidEvent(IILjava/lang/Object;)V

    .line 1026
    return-void

    .line 999
    .end local v6           #results:[Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1014
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStoreProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "total"

    .prologue
    .line 1030
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, consumed:Z
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsTouchCapturing:Z

    if-eqz v2, :cond_0

    .line 1043
    const/4 v0, 0x1

    .line 1045
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v3, "TOUCH_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    const/4 v0, 0x1

    .line 1048
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsTouchCapturing:Z

    if-eqz v2, :cond_8

    .line 1049
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1116
    .end local v0           #consumed:Z
    :cond_2
    :goto_0
    :pswitch_0
    return v0

    .line 1051
    .restart local v0       #consumed:Z
    :pswitch_1
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSelfTimer:Z

    if-eqz v2, :cond_3

    .line 1052
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mOnCountDown:Z

    if-eqz v2, :cond_3

    .line 1054
    const/4 v0, 0x1

    goto :goto_0

    .line 1060
    :cond_3
    const/4 v1, 0x0

    .line 1061
    .local v1, rectAfPos:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v3, "TOUCH_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1063
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->convertPositionToDevice(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1067
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->autofocus(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1071
    .end local v1           #rectAfPos:Landroid/graphics/Rect;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->cancelAutoFocus()V

    goto :goto_0

    .line 1075
    :pswitch_3
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSelfTimer:Z

    if-eqz v2, :cond_6

    .line 1076
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mOnCountDown:Z

    if-eqz v2, :cond_5

    .line 1078
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setTouchAreaListener(Lcom/sonyericsson/android/camera3d/BaseController;)V

    .line 1079
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->capture()V

    goto :goto_0

    .line 1081
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->startSelftimer()V

    goto :goto_0

    .line 1084
    :cond_6
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSmileDetection:Z

    if-eqz v2, :cond_7

    .line 1087
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->capture()V

    goto :goto_0

    .line 1090
    :cond_7
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0

    .line 1100
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 1102
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    const-string v3, "TOUCH_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1105
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/CameraController;->convertPositionToDevice(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1108
    .restart local v1       #rectAfPos:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v3, 0x42

    invoke-virtual {v2, v3, v4, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0

    .line 1049
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1100
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public restartPreview()V
    .locals 2

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->stopPreview(ZZ)V

    .line 795
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->setupCameraPreview(Z)V

    .line 796
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsFaceDetection:Z

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/CameraController;->startPreview(ZZ)V

    .line 797
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mFocusMode:Ljava/lang/String;

    .line 751
    const/4 v1, 0x0

    .line 752
    .local v1, setToDevice:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->CAPTURING_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NORMAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->SCENE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, scene:Ljava/lang/String;
    const-string v2, "landscape"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "night"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 757
    :cond_0
    const/4 v1, 0x0

    .line 764
    .end local v0           #scene:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 765
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusModeToDevice(Ljava/lang/String;)V

    .line 767
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusModeToView(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraController;->setFaceDetection(Ljava/lang/String;)V

    .line 769
    return-void

    .line 759
    .restart local v0       #scene:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setInitState()V
    .locals 2

    .prologue
    .line 2671
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    new-instance v1, Lcom/sonyericsson/android/camera3d/CameraController$Idle;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/CameraController$Idle;-><init>(Lcom/sonyericsson/android/camera3d/CameraController;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->setState(Lcom/sonyericsson/android/camera3d/Capturer$CapturerState;)V

    .line 2672
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 853
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v1, :cond_0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "changeConfiguration: failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setResolution(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "prevW"
    .parameter "prevH"

    .prologue
    const/4 v4, 0x0

    .line 775
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/BaseController;->setResolution(IIII)V

    .line 777
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureWidth(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPictureHeight(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPictureRect:Landroid/graphics/Rect;

    .line 782
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPreviewWidth(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->RESOLUTION:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/CameraConfig;->getPreviewHeight(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mPreviewRect:Landroid/graphics/Rect;

    .line 786
    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 738
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "night"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFocusMode(Ljava/lang/String;)V

    .line 745
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setScene(Ljava/lang/String;)V

    .line 746
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mConfigManager:Lcom/sonyericsson/android/camera3d/CameraConfigManager;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;->FOCUS_MODE:Lcom/sonyericsson/android/camera3d/CameraConfigManager$CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusModeToDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSceneRecognition(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, -0x1

    .line 702
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    .line 703
    iput v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCurrentScene:I

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsMacroFocus:Z

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setSceneRecognition(Z)V

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraWindow:Lcom/sonyericsson/android/camera3d/view/CameraWindow;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/CameraWindow;->setNotificationScene(I)V

    .line 709
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSceneRecognition:Z

    if-eqz v0, :cond_0

    .line 710
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 715
    const-string v0, "FACE_DETECTION"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusModeToDevice(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->startSceneRecogition()V

    .line 720
    :goto_0
    return-void

    .line 718
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->stopSceneRecogition()V

    goto :goto_0
.end method

.method public setSmileDetection(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSmileDetection:Z

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setSmileDetection(Z)V

    .line 726
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mIsSmileDetection:Z

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "FACE_DETECTION"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/CameraController;->setFocusModeToDevice(Ljava/lang/String;)V

    .line 733
    :cond_0
    return-void
.end method

.method protected startAutoFocus(ZZZLcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;)V
    .locals 3
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
    .line 323
    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->AUTOFOCUS:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 325
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->fixOrientation()V

    .line 329
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 336
    .local v0, ex:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/CameraActivity;->setRequestedOrientation(I)V

    .line 338
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method

.method protected startAutoZoom(I)V
    .locals 1
    .parameter "step_value"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/CameraController;->fixOrientation()V

    .line 884
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/BaseController;->startAutoZoom(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public startPreview(ZZ)V
    .locals 3
    .parameter "startFaceDetect"
    .parameter "startSceneRecognition"

    .prologue
    const/4 v2, 0x0

    .line 809
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v1, :cond_1

    .line 810
    if-eqz p2, :cond_0

    .line 813
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 814
    invoke-virtual {p0, v2, v2}, Lcom/sonyericsson/android/camera3d/CameraController;->changeRecognizedScene(IZ)V

    .line 818
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->startPreview(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_1
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "startPreview: failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSelftimer()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0xe0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public startZoomIn()V
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 688
    return-void
.end method

.method public startZoomOut()V
    .locals 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x34

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 693
    return-void
.end method

.method public stopPreview(ZZ)V
    .locals 1
    .parameter "stopFaceDetect"
    .parameter "stopSceneRecognition"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->stopPreview(ZZ)V

    .line 844
    :cond_0
    return-void
.end method

.method public stopZoom()V
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x35

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 698
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera3d/BaseController;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    .line 226
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

    .line 241
    if-eqz p2, :cond_0

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 243
    .local v0, dummy:Ljava/lang/Object;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    invoke-virtual {v1, v4, v3, v0}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEmergencyEvent(IILjava/lang/Object;)V

    .line 247
    .end local v0           #dummy:Ljava/lang/Object;
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraController;->mCapturer:Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v2}, Lcom/sonyericsson/android/camera3d/Capturer$CapturerContext;->sendEvent(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public switchCamera(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2677
    return-void
.end method
