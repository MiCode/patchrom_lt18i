.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;
.super Ljava/lang/Object;
.source "PhotoStackAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$1;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_BASE_TIME:F = 1000.0f

.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final NEED_ANIMATION:Z = true

.field private static final TAG:Ljava/lang/String; = "PhotoStackAnimationManager"


# instance fields
.field private mAcceleration:F

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimeCurrentPosition:Landroid/graphics/Point;

.field private mCurrentAnimationTime:J

.field private mEndPosition:Landroid/graphics/Point;

.field private mIsAnimation:Z

.field private mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

.field private mStartPosition:Landroid/graphics/Point;

.field private mStartTime:J

.field private mVelocity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimeCurrentPosition:Landroid/graphics/Point;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mVelocity:F

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAcceleration:F

    .line 71
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x3e8

    const/4 v5, 0x0

    .line 118
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->getScrollOffset()I

    move-result v1

    .line 120
    .local v1, offset:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimeCurrentPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int v2, v3, v1

    .line 122
    .local v2, position:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ge v3, v4, :cond_3

    .line 123
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 125
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    .line 134
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimeCurrentPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 135
    .local v0, currentPoint:Landroid/graphics/Point;
    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimeCurrentPosition:Landroid/graphics/Point;

    .line 137
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    invoke-interface {v3, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;->onAnimation(Landroid/graphics/Point;)V

    .line 143
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    if-eqz v3, :cond_4

    .line 144
    iget-wide v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mCurrentAnimationTime:J

    const-wide/16 v5, 0x10

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mCurrentAnimationTime:J

    .line 145
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mCurrentAnimationTime:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 155
    :cond_2
    :goto_1
    return-void

    .line 128
    .end local v0           #currentPoint:Landroid/graphics/Point;
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gt v2, v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 130
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    goto :goto_0

    .line 148
    .restart local v0       #currentPoint:Landroid/graphics/Point;
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iput-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartPosition:Landroid/graphics/Point;

    .line 150
    iput-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    .line 151
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    if-eqz v3, :cond_2

    .line 152
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;->onAnimationEnd()V

    goto :goto_1
.end method

.method private getScrollOffset()I
    .locals 5

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->timePassed()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a

    div-float v1, v3, v4

    .line 162
    .local v1, t:F
    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mVelocity:F

    .line 163
    .local v2, v0:F
    const/4 v0, 0x0

    .line 164
    .local v0, a:F
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-lt v3, v4, :cond_0

    .line 166
    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAcceleration:F

    neg-float v0, v3

    .line 172
    :goto_0
    const/high16 v3, 0x3f00

    mul-float/2addr v3, v0

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    mul-float v4, v2, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 169
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAcceleration:F

    goto :goto_0
.end method

.method private timePassed()I
    .locals 4

    .prologue
    .line 176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public cancelAnimation(Z)V
    .locals 2
    .parameter "isMovingEndPosition"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;->onAnimation(Landroid/graphics/Point;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;->onAnimationEnd()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    .line 110
    :cond_1
    return-void
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    return v0
.end method

.method public startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;F)V
    .locals 2
    .parameter "startPoint"
    .parameter "endPosition"
    .parameter "initialVelocity"

    .prologue
    .line 81
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->x:I

    if-eq v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mIsAnimation:Z

    .line 84
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartPosition:Landroid/graphics/Point;

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mEndPosition:Landroid/graphics/Point;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartPosition:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mAnimeCurrentPosition:Landroid/graphics/Point;

    .line 87
    iput p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mVelocity:F

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartTime:J

    .line 89
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mStartTime:J

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mCurrentAnimationTime:J

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->doAnimation()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;->onAnimationEnd()V

    goto :goto_0
.end method
