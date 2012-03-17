.class public abstract Lcom/sonyericsson/android/camera3d/StitchCommon;
.super Ljava/lang/Object;
.source "StitchCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;,
        Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;,
        Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;,
        Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;,
        Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;
    }
.end annotation


# static fields
.field public static final CAPTURE_TIME_OUT_MILLISECS:I = 0x2710

.field private static final NATIVE_BUFFER_NUMBER:I = 0x6

.field public static final STORE_THRESHOLD:F = 50.0f

.field private static final TAG:Ljava/lang/String; = "StitchCommon"


# instance fields
.field public ERROR_CAPTURE_ENGINE:I

.field public mBasePointInTime:J

.field protected mCamera:Landroid/hardware/Camera;

.field public mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

.field protected mContainsGrayArea:Z

.field protected mContext:Landroid/content/Context;

.field protected mConvertNv12ToNv21:Z

.field private mCopyTask:Ljava/lang/Runnable;

.field private mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mDirection:I

.field protected mIsForceSave:Z

.field public mIsInitialized:Z

.field private volatile mIsRunning:Z

.field private final mMainHandler:Landroid/os/Handler;

.field protected mOrientation:I

.field protected mPixelDepth:F

.field private mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<[B>;"
        }
    .end annotation
.end field

.field public mPreviewBufferSize:I

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field protected mPutImageCallback:Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;

.field private final mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

.field public mRestTime:J

.field private mStitchTask:Ljava/lang/Runnable;

.field public mStitchedPercentage:F

.field private mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsForceSave:Z

    .line 50
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mOrientation:I

    .line 53
    iput v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mDirection:I

    .line 56
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mConvertNv12ToNv21:Z

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/StitchCommon$PreviewCallBack;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/StitchCommon$PutImageCallbackImpl;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;Lcom/sonyericsson/android/camera3d/StitchCommon$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPutImageCallback:Lcom/sonyericsson/android/camera3d/engine/multiangle/PutImageCallback;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    .line 91
    const/16 v0, 0xa

    iput v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->ERROR_CAPTURE_ENGINE:I

    .line 97
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 100
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContainsGrayArea:Z

    .line 106
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 389
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mMainHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/sonyericsson/android/camera3d/ImageBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/StitchCommon;)Ljava/util/concurrent/LinkedBlockingDeque;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/StitchCommon;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/StitchCommon;)Lcom/sonyericsson/android/camera3d/ImageBuffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/StitchCommon;IF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/StitchCommon;->checkCondition(IF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/StitchCommon;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkCondition(IF)Z
    .locals 7
    .parameter "result"
    .parameter "percentage"

    .prologue
    const/4 v2, 0x1

    .line 497
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    cmpl-float v3, v3, p2

    if-eqz v3, :cond_1

    .line 498
    iput p2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    .line 507
    :goto_0
    iget v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    const/high16 v4, 0x42c8

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 514
    :cond_0
    :goto_1
    return v2

    .line 502
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 503
    .local v0, time:J
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    .line 504
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mBasePointInTime:J

    goto :goto_0

    .line 509
    .end local v0           #time:J
    :cond_2
    if-gtz p1, :cond_0

    .line 511
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mRestTime:J

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 514
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public finalizeStitchingEngine()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCaptureCallback:Lcom/sonyericsson/android/camera3d/StitchCommon$CaptureCallback;

    .line 525
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 526
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 527
    return-void
.end method

.method protected abstract getCapturingStatus(Ljava/lang/String;)I
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchedPercentage:F

    return v0
.end method

.method protected abstract getStitchedPercentage()F
.end method

.method public initialize(II)Z
    .locals 6
    .parameter "pictureWidth"
    .parameter "pictureHeight"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/ImageManager;->setBufferReleaseRequest(Z)V

    .line 156
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 157
    .local v0, p:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 159
    iget v1, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    int-to-float v1, v1

    const/high16 v4, 0x4100

    div-float/2addr v1, v4

    iput v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPixelDepth:F

    .line 161
    const v1, 0x49ea6000

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPixelDepth:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferSize:I

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferSize:I

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->assignBuffers(II)V

    .line 167
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContainsGrayArea:Z

    .line 171
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 172
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z

    move v1, v2

    .line 175
    .end local v0           #p:Landroid/graphics/PixelFormat;
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public abstract popResultBuffers()[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;
.end method

.method protected abstract putImageYUV(Lcom/sonyericsson/android/camera3d/nativememory/NativeByteArray;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public release()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/StitchCommon;->stop()Z

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->releaseBuffers()V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/ImageManager;->isStoring()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->releaseOutBuffers()V

    .line 299
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    .line 301
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getImageManager()Lcom/sonyericsson/android/camera3d/ImageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->setBufferReleaseRequest(Z)V

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    .line 117
    return-void
.end method

.method public setConvertNv12ToNv21(Z)V
    .locals 0
    .parameter "convert"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mConvertNv12ToNv21:Z

    .line 279
    return-void
.end method

.method public setIsInitialized(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 520
    return-void
.end method

.method protected abstract setOrientation(I)V
.end method

.method protected setResolution(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 308
    return-void
.end method

.method protected setSweepDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 314
    return-void
.end method

.method public abstract setupStitchingEngine()V
.end method

.method public start(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "orientation"
    .parameter "direction"

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->resetMeasuredResults()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z

    .line 187
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsForceSave:Z

    .line 188
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsInitialized:Z

    .line 190
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/StitchCommon$1;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 203
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/StitchCommon$2;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 217
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/StitchCommon$StitchingTask;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchTask:Ljava/lang/Runnable;

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    new-instance v0, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/StitchCommon$CopyTask;-><init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTask:Ljava/lang/Runnable;

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferSize:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 228
    return-void
.end method

.method public stop()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 268
    :goto_0
    return v1

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 245
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mIsRunning:Z

    .line 246
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mCopyTaskExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x4e20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mStitchingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x4e20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mPreviewBufferQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 265
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mReadyBuffers:Lcom/sonyericsson/android/camera3d/ImageBuffer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageBuffer;->recycleBuffers()V

    .line 268
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 260
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method protected updateNotificationResult(I)I
    .locals 1
    .parameter "notificationResult"

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon;->mContainsGrayArea:Z

    if-eqz v0, :cond_0

    .line 534
    const/4 p1, 0x6

    .line 536
    .end local p1
    :cond_0
    return p1
.end method
