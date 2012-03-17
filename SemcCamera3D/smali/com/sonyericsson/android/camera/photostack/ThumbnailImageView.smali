.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;
.super Landroid/view/View;
.source "ThumbnailImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailImageView"


# instance fields
.field private mFrameRect:Landroid/graphics/RectF;

.field private mFrameSize:I

.field private mFrameViewBitmap:Landroid/graphics/Bitmap;

.field private mImageSize:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPlayIconBitmap:Landroid/graphics/Bitmap;

.field private mPlayIconRect:Landroid/graphics/RectF;

.field private mPlayIconSize:I

.field private mPlayIconVisiblity:Z

.field private mRotation:I

.field private mSize:I

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailRect:Landroid/graphics/RectF;

.field private mWorkBitmap:Landroid/graphics/Bitmap;

.field private mWorkCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->init()V

    .line 81
    return-void
.end method

.method private createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bm"
    .parameter "size"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 190
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    move v3, p2

    move v4, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 193
    :cond_0
    return-object v5
.end method

.method private decodeAntiAliasBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resourceId"
    .parameter "size"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mImageSize:I

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    .line 93
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconVisiblity:Z

    .line 94
    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mRotation:I

    .line 95
    const v0, 0x7f020067

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->decodeAntiAliasBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameViewBitmap:Landroid/graphics/Bitmap;

    .line 97
    const v0, 0x7f02006b

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->decodeAntiAliasBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconBitmap:Landroid/graphics/Bitmap;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mImageSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mImageSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mImageSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mImageSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailRect:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameRect:Landroid/graphics/RectF;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconRect:Landroid/graphics/RectF;

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    .line 108
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setClickable(Z)V

    .line 109
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setFocusable(Z)V

    .line 110
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setFocusableInTouchMode(Z)V

    .line 112
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkBitmap:Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkCanvas:Landroid/graphics/Canvas;

    .line 115
    return-void
.end method


# virtual methods
.method public clearPressed()V
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f020067

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->decodeAntiAliasBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameViewBitmap:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 182
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkCanvas:Landroid/graphics/Canvas;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameViewBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 146
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconVisiblity:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mRotation:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mWorkBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    iget v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 152
    .local v7, last:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 153
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mSize:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mOffsetY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setOffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mOffsetX:I

    .line 124
    iput p2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mOffsetY:I

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 126
    return-void
.end method

.method setPlayIconVisibility(Z)V
    .locals 0
    .parameter "isVibible"

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mPlayIconVisiblity:Z

    .line 160
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 161
    return-void
.end method

.method public setPressed()V
    .locals 2

    .prologue
    .line 173
    const v0, 0x7f020068

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameSize:I

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->decodeAntiAliasBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mFrameViewBitmap:Landroid/graphics/Bitmap;

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 176
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 118
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mRotation:I

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 120
    return-void
.end method

.method public setThumbnailBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->createAntiAliasBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->invalidate()V

    .line 170
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
