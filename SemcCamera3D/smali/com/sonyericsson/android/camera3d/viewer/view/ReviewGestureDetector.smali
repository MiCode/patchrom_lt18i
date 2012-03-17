.class public Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;
.super Ljava/lang/Object;
.source "ReviewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;,
        Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;
    }
.end annotation


# static fields
.field private static final GESTUREDETECT_INTERVAL:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ReviewGestureDetector"

.field protected static final ZOOM_RAITIO_DOUBLETAP:F = 3.0f

.field protected static final ZOOM_RAITIO_MAXIMUM:F = 16.0f

.field protected static final ZOOM_RAITIO_MINIMUM:F = 1.1f


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mLastDoubleTapTime:J

.field private final mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

.field protected mNowZooming:Z

.field private final mOnDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;)V
    .locals 3
    .parameter "target"
    .parameter "listener"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 207
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mOnDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    .line 69
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mOnDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mLastDoubleTapTime:J

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mNowZooming:Z

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    return-object v0
.end method


# virtual methods
.method protected checkGestureDetectorInterval(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mLastDoubleTapTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mLastDoubleTapTime:J

    .line 105
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mLastDoubleTapTime:J

    .line 108
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    return-object v0
.end method

.method public getTarget()Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    return-object v0
.end method

.method public nowZoomProgress()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public nowZooming()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mNowZooming:Z

    return v0
.end method

.method protected onImageDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->checkGestureDetectorInterval(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->isPhotoReview()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->nowZooming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mNowZooming:Z

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onEndZoomMode()V

    :goto_1
    move v0, v1

    .line 146
    goto :goto_0

    .line 142
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mNowZooming:Z

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onStartZoomMode()V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    const/high16 v2, 0x4040

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onZoom(FII)V

    goto :goto_1
.end method

.method protected onImageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->nowZooming()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 160
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onPrevious()V

    .line 166
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 169
    :goto_1
    return v0

    .line 163
    :cond_1
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onNext()V

    goto :goto_0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onImageLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 151
    return-void
.end method

.method protected onImageScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mTarget:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;->isPhotoReview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->nowZooming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;

    neg-float v1, p3

    float-to-int v1, v1

    neg-float v2, p4

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;->onMove(II)V

    .line 121
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector;->mNowZooming:Z

    .line 93
    return-void
.end method
