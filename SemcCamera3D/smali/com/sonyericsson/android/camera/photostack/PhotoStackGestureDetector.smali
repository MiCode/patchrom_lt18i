.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;
.super Ljava/lang/Object;
.source "PhotoStackGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;
    }
.end annotation


# static fields
.field public static final IS_CONSUMPTION:I = 0x2

.field public static final IS_NOT_TOUCHING_AND_NOT_CONSUMPTION:I = 0x0

.field public static final IS_TOUCHING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoStackGestureDetector"


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mIsScrolling:Z

.field private mIsTouching:Z

.field private final mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

.field private final mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsScrolling:Z

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$1;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 53
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mOnGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsTouching:Z

    return p1
.end method


# virtual methods
.method public getListener()Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    return-object v0
.end method

.method protected onImageDown(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "e"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onDown(Landroid/view/MotionEvent;)I

    move-result v0

    goto :goto_0
.end method

.method protected onImageFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsScrolling:Z

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-nez v3, :cond_0

    .line 136
    :goto_0
    return v1

    .line 124
    :cond_0
    const/4 v0, 0x1

    .line 126
    .local v0, isOpening:Z
    cmpl-float v1, p3, v4

    if-lez v1, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v1, p2, v0, p3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onFlingTray(Landroid/view/MotionEvent;ZF)V

    move v1, v2

    .line 136
    goto :goto_0

    .line 128
    :cond_1
    cmpg-float v1, p3, v4

    if-gez v1, :cond_2

    .line 129
    const/4 v0, 0x1

    goto :goto_1

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v1, p2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onRelease(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 132
    goto :goto_0
.end method

.method protected onImageLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onShowMenu(Landroid/view/MotionEvent;)Z

    .line 104
    :cond_0
    return-void
.end method

.method protected onImageScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "downEvent"
    .parameter "nowEvent"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-nez v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onMove(II)V

    .line 95
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsScrolling:Z

    goto :goto_0
.end method

.method protected onImageSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onSelectThumbnail(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    .local v0, rtn:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return v0

    .line 67
    :pswitch_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsScrolling:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;->onRelease(Landroid/view/MotionEvent;)V

    .line 70
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;->mIsScrolling:Z

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
