.class public Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;
.super Landroid/view/animation/Animation;
.source "GuideAnimation.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GuideAnimation"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

.field private mTotalDuration:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method private getProgress(J)F
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 70
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationStartTime:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 80
    .local v2, progress:F
    :goto_0
    return v2

    .line 72
    .end local v2           #progress:F
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationEndTime:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 73
    const/high16 v2, 0x3f80

    .restart local v2       #progress:F
    goto :goto_0

    .line 75
    .end local v2           #progress:F
    :cond_1
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationEndTime:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    .line 76
    .local v1, duration:F
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationStartTime:J

    sub-long v3, p1, v3

    long-to-float v0, v3

    .line 77
    .local v0, current:F
    div-float v2, v0, v1

    .restart local v2       #progress:F
    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 60
    iget-wide v4, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mTotalDuration:J

    long-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-long v0, v4

    .line 62
    .local v0, currentTime:J
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->getProgress(J)F

    move-result v3

    .line 64
    .local v3, progress:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 65
    .local v2, matrix:Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    invoke-static {v3, v4, v2}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator;->calculate(FLcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Landroid/graphics/Matrix;)V

    .line 66
    return-void
.end method

.method public setDuration(JJJ)V
    .locals 2
    .parameter "animatingDuration"
    .parameter "waitingDurationInStart"
    .parameter "waitingDurationInEnd"

    .prologue
    .line 42
    add-long v0, p1, p3

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mTotalDuration:J

    .line 46
    iput-wide p3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationStartTime:J

    .line 47
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationStartTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mAnimationEndTime:J

    .line 49
    iget-wide v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mTotalDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setDuration(J)V

    .line 50
    return-void
.end method

.method public setParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->mParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .line 54
    return-void
.end method
