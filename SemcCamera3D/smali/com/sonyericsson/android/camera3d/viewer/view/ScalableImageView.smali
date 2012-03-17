.class public Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;
.super Landroid/widget/ImageView;
.source "ScalableImageView.java"


# static fields
.field private static final ANIMATING_DURATION_MAX:I = 0x190

.field private static final ANIMATING_DURATION_MIN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ScalableImageView"


# instance fields
.field private mAjustRect:Landroid/graphics/RectF;

.field private mCurrentScaleX:F

.field private mCurrentTranslateX:F

.field private mCurrentTranslateY:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mNewScaleX:F

.field private mNewTranslateX:F

.field private mNewTranslateY:F

.field private mOrientation:I

.field private mPivotFrame:Landroid/graphics/PointF;

.field private mPivotImage:Landroid/graphics/PointF;

.field private mStretchAspectRateYperX:F

.field private mZoomMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->init()V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->init()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->init()V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 105
    return-void
.end method

.method private computeAnimatingDuration(FFF)I
    .locals 5
    .parameter "scaleDelta"
    .parameter "xDelta"
    .parameter "yDelta"

    .prologue
    const/16 v2, 0x190

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p3, v4

    add-float/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 563
    .local v1, factor:F
    const/high16 v3, 0x43c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    mul-int/lit8 v0, v3, 0xa

    .line 565
    .local v0, duration:I
    if-le v0, v2, :cond_1

    move v0, v2

    .line 570
    .end local v0           #duration:I
    :cond_0
    :goto_0
    return v0

    .line 567
    .restart local v0       #duration:I
    :cond_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 568
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private computeTranslate()V
    .locals 10

    .prologue
    const/high16 v9, 0x4000

    .line 437
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 438
    .local v1, imageRect:Landroid/graphics/RectF;
    iget v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAdjustImageRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 439
    .local v0, ajustImageRect:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 442
    .local v3, pivotTo:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    invoke-direct {v2, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 446
    .local v2, pivotFrom:Landroid/graphics/PointF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v4, v6, v9

    .line 447
    .local v4, rangeX:F
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    neg-float v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 448
    iget v6, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v4

    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 449
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 455
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v5, v6, v9

    .line 456
    .local v5, rangeY:F
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    neg-float v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 457
    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v5

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 458
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 464
    :cond_1
    :goto_1
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    .line 465
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    .line 466
    return-void

    .line 450
    .end local v5           #rangeY:F
    :cond_2
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v7, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 451
    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v4

    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 452
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 459
    .restart local v5       #rangeY:F
    :cond_3
    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 460
    iget v6, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v5

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 461
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method private getAdjustImageRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 12
    .parameter "imageRect"
    .parameter "scale"

    .prologue
    const/high16 v11, 0x4000

    const/high16 v9, 0x3f80

    .line 399
    const/high16 v3, 0x3f80

    .line 400
    .local v3, stretchX:F
    const/high16 v4, 0x3f80

    .line 402
    .local v4, stretchY:F
    iget v8, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mStretchAspectRateYperX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 403
    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mStretchAspectRateYperX:F

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v9, v3

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v9, v10

    mul-float/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 410
    .local v1, base:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v8, v1

    mul-float/2addr v8, p2

    mul-float v5, v8, v3

    .line 411
    .local v5, w:F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v1

    mul-float/2addr v8, p2

    mul-float v2, v8, v4

    .line 412
    .local v2, h:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v5

    div-float v6, v8, v11

    .line 413
    .local v6, x:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    div-float v7, v8, v11

    .line 415
    .local v7, y:F
    new-instance v0, Landroid/graphics/RectF;

    add-float v8, v6, v5

    add-float v9, v7, v2

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 419
    .local v0, ajustRect:Landroid/graphics/RectF;
    return-object v0

    .line 405
    .end local v0           #ajustRect:Landroid/graphics/RectF;
    .end local v1           #base:F
    .end local v2           #h:F
    .end local v5           #w:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_0
    iget v8, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mStretchAspectRateYperX:F

    div-float v3, v9, v8

    goto :goto_0
.end method

.method private getImageRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 108
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    .line 109
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    .line 110
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    .line 111
    iput v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mOrientation:I

    .line 112
    iput v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageWidth:I

    .line 113
    iput v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageHeight:I

    .line 114
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mStretchAspectRateYperX:F

    .line 115
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    .line 116
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    .line 117
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    .line 118
    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 119
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    .line 120
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    .line 122
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    return-void
.end method

.method private setupAjustMatrix()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    .line 474
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 475
    .local v1, imageRect:Landroid/graphics/RectF;
    const/high16 v6, 0x3f80

    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAdjustImageRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    .line 476
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float v2, v6, v7

    .line 477
    .local v2, scalex:F
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float v3, v6, v7

    .line 478
    .local v3, scaley:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    div-float v4, v6, v8

    .line 479
    .local v4, transX:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v3

    sub-float/2addr v6, v7

    div-float v5, v6, v8

    .line 480
    .local v5, transY:F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 481
    .local v0, ajust:Landroid/graphics/Matrix;
    iget v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mOrientation:I

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 482
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 483
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 484
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 500
    return-void
.end method

.method private setupAnimation(FFFFFFILandroid/view/animation/Animation$AnimationListener;)V
    .locals 10
    .parameter "scalex"
    .parameter "scaley"
    .parameter "pivotX"
    .parameter "pivotY"
    .parameter "transX"
    .parameter "transY"
    .parameter "duration"
    .parameter "listener"

    .prologue
    .line 531
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 532
    .local v8, animation:Landroid/view/animation/AnimationSet;
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 539
    .local v1, scaleAnimation:Landroid/view/animation/Animation;
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    move/from16 v0, p6

    invoke-direct {v9, v2, p5, v3, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 544
    .local v9, transAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 545
    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 546
    move/from16 v0, p7

    int-to-long v2, v0

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 547
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 548
    move-object/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 550
    return-void
.end method

.method private toString(Landroid/graphics/RectF;)Ljava/lang/String;
    .locals 2
    .parameter "rect"

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commit(Z)V
    .locals 10
    .parameter "animate"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->clearAnimation()V

    .line 236
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->computeTranslate()V

    .line 244
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 245
    .local v9, center:Landroid/graphics/Point;
    if-nez p1, :cond_1

    const/4 v7, 0x0

    .line 249
    .local v7, duration:I
    :goto_0
    if-lez v7, :cond_0

    .line 250
    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iget v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setupAnimation(FFFFFFILandroid/view/animation/Animation$AnimationListener;)V

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 262
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    .line 263
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    .line 264
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->invalidate()V

    .line 269
    return-void

    .line 245
    .end local v7           #duration:I
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->computeAnimatingDuration(FFF)I

    move-result v7

    goto :goto_0
.end method

.method public commitWithAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 10
    .parameter "listener"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->clearAnimation()V

    .line 273
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->computeTranslate()V

    .line 275
    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v9, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 276
    .local v9, center:Landroid/graphics/Point;
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->computeAnimatingDuration(FFF)I

    move-result v7

    .line 280
    .local v7, duration:I
    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iget v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    move-object v0, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setupAnimation(FFFFFFILandroid/view/animation/Animation$AnimationListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 291
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    .line 292
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateX:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    .line 293
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewTranslateY:F

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    iget v3, v9, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v9, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateX:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentTranslateY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->invalidate()V

    .line 298
    return-void
.end method

.method public fitVertival()V
    .locals 4

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 199
    .local v1, imageRect:Landroid/graphics/RectF;
    const/high16 v2, 0x3f80

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAdjustImageRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 200
    .local v0, ajustRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 201
    return-void
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    return v0
.end method

.method public getScaledImageRect()Landroid/graphics/RectF;
    .locals 6

    .prologue
    .line 381
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mAjustRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public move(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v5, 0x3f00

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 216
    return-void
.end method

.method public moveTo(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v4, 0x3f00

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 221
    return-void
.end method

.method public moveXto(I)V
    .locals 4
    .parameter "x"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 226
    return-void
.end method

.method public moveYto(I)V
    .locals 5
    .parameter "y"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 231
    return-void
.end method

.method public nowZooming()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mCurrentScaleX:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 337
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 338
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 339
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v3, v4, :cond_2

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 349
    .local v0, animation:Landroid/view/animation/Animation;
    if-nez v0, :cond_1

    .line 350
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 352
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 356
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 375
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 376
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setupAjustMatrix()V

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 378
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->clearAnimation()V

    .line 140
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 145
    .local v0, matrix:Landroid/graphics/Matrix;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setupAjustMatrix()V

    .line 149
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bm"

    .prologue
    const/4 v1, 0x0

    .line 302
    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageWidth:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageHeight:I

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 303
    .local v0, reset:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageWidth:I

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageHeight:I

    .line 310
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 311
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setupAjustMatrix()V

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 315
    :cond_0
    return-void

    .end local v0           #reset:Z
    :cond_1
    move v0, v1

    .line 302
    goto :goto_0

    .line 307
    .restart local v0       #reset:Z
    :cond_2
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageWidth:I

    .line 308
    iput v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mImageHeight:I

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 157
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mOrientation:I

    .line 158
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    return-void
.end method

.method public setStretchAspectRate(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 134
    div-float v0, p2, p1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mStretchAspectRateYperX:F

    .line 135
    return-void
.end method

.method public zoom(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 193
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 194
    return-void
.end method

.method public zoom(FII)V
    .locals 12
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 163
    iget v6, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 164
    .local v6, prevScalex:F
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getImageRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 165
    .local v3, imageRect:Landroid/graphics/RectF;
    invoke-direct {p0, v3, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getAdjustImageRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v0

    .line 166
    .local v0, ajustImageRect:Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 169
    .local v5, prevPivotTo:Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    invoke-direct {v4, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 173
    .local v4, prevPivotFrom:Landroid/graphics/PointF;
    iput p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mNewScaleX:F

    .line 174
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotFrame:Landroid/graphics/PointF;

    int-to-float v8, p2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v8, v9

    int-to-float v9, p3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f00

    mul-float/2addr v10, v11

    div-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 177
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mZoomMatrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_0

    .line 179
    int-to-float v7, p2

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float v1, v7, v8

    .line 181
    .local v1, ajusteX:F
    int-to-float v7, p3

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float v2, v7, v8

    .line 183
    .local v2, ajusteY:F
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    div-float v8, v1, v8

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    div-float v9, v2, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    .end local v1           #ajusteX:F
    .end local v2           #ajusteY:F
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->mPivotImage:Landroid/graphics/PointF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method
