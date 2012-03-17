.class public Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
.super Landroid/view/View;
.source "ScrollableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$2;,
        Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;,
        Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;,
        Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;
    }
.end annotation


# static fields
.field private static final ANIMATION_FPS:I = 0xa

.field private static final MILLISECOND_UNIT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ScrollableImageView"


# instance fields
.field private mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

.field private mAnimationSpeed:F

.field private mAnimationUptime:J

.field private mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

.field private mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

.field private mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

.field private mIsAnimationRunning:Z

.field private mLeftImageBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;

.field private mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field private mRightImageBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    const v0, 0x3851b717

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationSpeed:F

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const v0, 0x3851b717

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationSpeed:F

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const v0, 0x3851b717

    iput v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationSpeed:F

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;

    return-object v0
.end method

.method private convertToImageDistance(F)F
    .locals 2
    .parameter "x"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private getImageClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;
    .locals 5
    .parameter "eye"

    .prologue
    .line 237
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    float-to-int v0, v2

    .line 238
    .local v0, left:I
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    float-to-int v1, v2

    .line 240
    .local v1, top:I
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    float-to-int v3, v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private getViewClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;
    .locals 5
    .parameter "eye"

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getMeasuredWidth()I

    move-result v1

    .line 249
    .local v1, width:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getMeasuredHeight()I

    move-result v0

    .line 250
    .local v0, height:I
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$2;->$SwitchMap$com$sonyericsson$android$camera3d$viewer$Constants$OutputMode:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 266
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v2

    .line 252
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    if-ne p1, v2, :cond_0

    .line 253
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 255
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 259
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    if-ne p1, v2, :cond_1

    .line 260
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 262
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v4, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initImageParameters()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    .line 278
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageClipSize:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    goto :goto_0
.end method

.method private processAutoScroll()V
    .locals 7

    .prologue
    .line 199
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    if-eqz v3, :cond_1

    .line 200
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidateDelayed(J)V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 202
    .local v1, time:J
    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationUptime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 203
    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationUptime:J

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iget v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationSpeed:F

    mul-float v0, v3, v4

    .line 206
    .local v0, msecToPixel:F
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationUptime:J

    sub-long v5, v1, v5

    long-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 207
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v3, v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v4, v4, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iput v4, v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 209
    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;)V

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->post(Ljava/lang/Runnable;)Z

    .line 220
    .end local v0           #msecToPixel:F
    .end local v1           #time:J
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->pauseAutoScroll()V

    .line 149
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    .line 150
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    .line 151
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    .line 152
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mRightImageBitmap:Landroid/graphics/Bitmap;

    .line 153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidate()V

    .line 154
    return-void
.end method

.method public getScrollProgress()F
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v2, v2, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    div-float v0, v1, v2

    .line 170
    .local v0, progress:F
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->processAutoScroll()V

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 111
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 118
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getImageClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;

    move-result-object v2

    .line 119
    .local v2, src:Landroid/graphics/Rect;
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Left:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getViewClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;

    move-result-object v0

    .line 120
    .local v0, dst:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 122
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v2           #src:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mRightImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->is3D()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Right:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getImageClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;

    move-result-object v2

    .line 124
    .restart local v2       #src:Landroid/graphics/Rect;
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;->Right:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->getViewClipRect(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Eye;)Landroid/graphics/Rect;

    move-result-object v0

    .line 125
    .restart local v0       #dst:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mRightImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 127
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v2           #src:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->clear()V

    .line 105
    return-void
.end method

.method public pauseAutoScroll()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationUptime:J

    .line 195
    :cond_0
    return-void
.end method

.method public scroll(I)V
    .locals 4
    .parameter "dx"

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->convertToImageDistance(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iput v3, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidate()V

    .line 165
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v0, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMovableLimit:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mLeftImageBitmap:Landroid/graphics/Bitmap;

    .line 141
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mRightImageBitmap:Landroid/graphics/Bitmap;

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->initImageParameters()V

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidate()V

    .line 144
    return-void
.end method

.method public setListsner(Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mListener:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$AutoScrollListener;

    .line 137
    return-void
.end method

.method public setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidate()V

    .line 133
    return-void
.end method

.method public startAutoScroll()V
    .locals 2

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mIsAnimationRunning:Z

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationUptime:J

    .line 178
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->x:F

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mAnimationOffset:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->mImageMove:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;

    iget v1, v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    iput v1, v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView$Distance;->y:F

    .line 181
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->postInvalidate()V

    .line 185
    :cond_0
    return-void
.end method
