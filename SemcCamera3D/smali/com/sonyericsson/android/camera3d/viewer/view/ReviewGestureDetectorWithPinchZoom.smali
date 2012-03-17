.class public Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;
.super Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;
.source "ReviewGestureDetectorWithPinchZoom.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReviewGestureDetector"


# instance fields
.field private final mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;)V
    .locals 3
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;)V

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 36
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mOnScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->onImageScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method private onImageScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->isPhotoReview()Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->nowZoomProgress()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mNowZooming:Z

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->getZoomRatio()F

    move-result v1

    .line 62
    .local v1, prevRatio:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float v0, v1, v2

    .line 63
    .local v0, newRatio:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getListener()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    move-result-object v2

    const/high16 v4, 0x3f80

    const/high16 v5, 0x4180

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v2, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onZoom(FII)V

    move v2, v3

    .line 67
    goto :goto_0
.end method

.method private onImageScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->isPhotoReview()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->nowZoomProgress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->nowZooming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getListener()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onStartZoomMode()V

    .line 82
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mNowZooming:Z

    move v0, v1

    .line 83
    goto :goto_0
.end method

.method private onImageScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->isPhotoReview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->nowZoomProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->getZoomRatio()F

    move-result v1

    const v2, 0x3f8ccccd

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 96
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mNowZooming:Z

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->getListener()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onEndZoomMode()V

    .line 99
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public nowZoomProgress()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 48
    .local v0, handled:Z
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v1, v0

    return v1
.end method
