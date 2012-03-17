.class public Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;
.super Ljava/lang/Object;
.source "StitchEngineWrapper.java"


# static fields
.field public static final CAPTURE_STATE_ERR:I = 0x5

.field public static final CAPTURE_STATE_ERR_INVALID_DIRECTION:I = 0x2

.field public static final CAPTURE_STATE_ERR_INVALID_LENGTH:I = 0x3

.field public static final CAPTURE_STATE_ERR_TIMEOUT:I = 0x1

.field public static final CAPTURE_STATE_ERR_TOO_QUICK:I = 0x4

.field public static final CAPTURE_STATE_NORMAL_CAPTURING:I = 0x0

.field public static final CAPTURE_STATE_NORMAL_CONTAINS_GRAY:I = 0x6

.field public static final CAPTURING_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final CAPTURING_ORIENTATION_PORTRAIT:I = 0x1

.field public static final CAPTURING_SWEEP_3D_PANORAMA:I = 0x0

.field public static final CAPTURING_SWEEP_MULTIANGLE:I = 0x2

.field public static final CAPTURING_SWEEP_PANORAMA:I = 0x1

.field public static final SWEEP_DIRECTION_BOTTOM_TO_TOP:I = 0x3

.field public static final SWEEP_DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final SWEEP_DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final SWEEP_DIRECTION_TOP_TO_BOTTOM:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field public mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mIsRunning:Z

.field private mMultiAngleEngine:Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

.field private mPanorama2dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

.field private mPanorama3dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

.field private mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "StitchEngineWrapper"

    sput-object v0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 3
    .parameter "context"
    .parameter "camera"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mCamera:Landroid/hardware/Camera;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mIsRunning:Z

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_3D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/StitchPanorama;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama3dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;->SWEEP_PANORAMA_2D:Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/StitchPanorama;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera3d/StitchPanorama$PanoramaEngineType;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama2dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mMultiAngleEngine:Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama3dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setCamera(Landroid/hardware/Camera;)V

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama2dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setCamera(Landroid/hardware/Camera;)V

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mMultiAngleEngine:Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->setCamera(Landroid/hardware/Camera;)V

    .line 88
    return-void
.end method


# virtual methods
.method public getCaptureProgress()F
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    return v0
.end method

.method public getCapturingEngine()Lcom/sonyericsson/android/camera3d/StitchCommon;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    return-object v0
.end method

.method public getThumbnailBufferLength()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferSize:I

    return v0
.end method

.method public getYUVData()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->popResultBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    move-result-object v0

    return-object v0
.end method

.method public initialize(II)Z
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->initialize(II)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mContext:Landroid/content/Context;

    .line 96
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mCamera:Landroid/hardware/Camera;

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama3dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setCamera(Landroid/hardware/Camera;)V

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama2dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchPanorama;->setCamera(Landroid/hardware/Camera;)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mMultiAngleEngine:Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchMultiAngle;->setCamera(Landroid/hardware/Camera;)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->release()V

    .line 103
    :cond_0
    return-void
.end method

.method public setCapturingDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setSweepDirection(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public setCapturingMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-boolean v1, v1, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->finalizeStitchingEngine()V

    .line 120
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    return v0

    .line 122
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama3dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setIsInitialized(Z)V

    .line 134
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mPanorama2dEngine:Lcom/sonyericsson/android/camera3d/StitchPanorama;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    goto :goto_1

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mMultiAngleEngine:Lcom/sonyericsson/android/camera3d/StitchMultiAngle;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCapturingOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setOrientation(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public setResolution(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setResolution(II)V

    .line 149
    :cond_0
    return-void
.end method

.method public setupStitchingEngine()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->finalizeStitchingEngine()V

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setIsInitialized(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setupStitchingEngine()V

    .line 202
    :cond_1
    return-void
.end method

.method public start(Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;IIIIZ)V
    .locals 3
    .parameter "captureCallback"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "direction"
    .parameter "convertNv12ToNv21"

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mIsRunning:Z

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p6}, Lcom/sonyericsson/android/camera3d/StitchCommon;->setConvertNv12ToNv21(Z)V

    .line 246
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    iput-object p1, v0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sonyericsson/android/camera3d/StitchCommon;->start(IIII)V

    .line 248
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mIsRunning:Z

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchEngineWrapper;->mStitchCommon:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->stop()Z

    .line 259
    :cond_0
    return-void
.end method
