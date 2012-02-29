.class public Lmiui/widget/SlidingButton;
.super Landroid/widget/CheckBox;
.source "SlidingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SlidingButton$1;,
        Lmiui/widget/SlidingButton$SlidingHandler;,
        Lmiui/widget/SlidingButton$OnCheckedChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final TAP_THRESHOLD:I = 0x6


# instance fields
.field private mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mAlphaPixels:[I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBarBitmap:Landroid/graphics/Bitmap;

.field private mBarSlice:[I

.field private mCurrentAnimationTime:J

.field private mFrame:Landroid/graphics/drawable/BitmapDrawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastX:I

.field private mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

.field private mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

.field private mOriginalTouchPointX:I

.field private mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSlider:Landroid/graphics/drawable/BitmapDrawable;

.field private mSliderMoved:Z

.field private mSliderOffset:I

.field private mSliderPosition:I

.field private mSliderWidth:I

.field private mTapThreshold:I

.field private mTracking:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 53
    new-instance v0, Lmiui/widget/SlidingButton$SlidingHandler;

    invoke-direct {v0, p0, v1}, Lmiui/widget/SlidingButton$SlidingHandler;-><init>(Lmiui/widget/SlidingButton;Lmiui/widget/SlidingButton$1;)V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    .line 58
    const/high16 v0, 0x4316

    iput v0, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    .line 65
    iput-object v1, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    .line 73
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->initialize()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/SlidingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 53
    new-instance v0, Lmiui/widget/SlidingButton$SlidingHandler;

    invoke-direct {v0, p0, v1}, Lmiui/widget/SlidingButton$SlidingHandler;-><init>(Lmiui/widget/SlidingButton;Lmiui/widget/SlidingButton$1;)V

    iput-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    .line 58
    const/high16 v0, 0x4316

    iput v0, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    .line 65
    iput-object v1, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    .line 78
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->initialize()V

    .line 79
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/SlidingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->doAnimation()V

    return-void
.end method

.method private animateOff()V
    .locals 1

    .prologue
    .line 231
    const/high16 v0, -0x3cea

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->performFling(F)V

    .line 232
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 233
    return-void
.end method

.method private animateOn()V
    .locals 1

    .prologue
    .line 226
    const/high16 v0, 0x4316

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->performFling(F)V

    .line 227
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 228
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOff()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOn()V

    goto :goto_0
.end method

.method private cutEdge(II[I)V
    .locals 6
    .parameter "baseWidth"
    .parameter "baseHeight"
    .parameter "basePixels"

    .prologue
    .line 316
    const v2, 0xffffff

    .line 317
    .local v2, sRGBMask:I
    const/16 v1, 0x18

    .line 319
    .local v1, sAlphaShift:I
    mul-int v3, p1, p2

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 320
    aget v3, p3, v0

    aget v4, p3, v0

    ushr-int/2addr v4, v1

    iget-object v5, p0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    aget v5, v5, v0

    ushr-int/2addr v5, v1

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    add-int/2addr v4, v2

    and-int/2addr v3, v4

    aput v3, p3, v0

    .line 319
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 258
    iget-boolean v0, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->incrementAnimation()V

    .line 262
    iget v0, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lmiui/widget/SlidingButton;->moveSlider(I)V

    .line 263
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    if-lez v0, :cond_2

    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    if-lt v0, v1, :cond_4

    .line 264
    :cond_2
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 266
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lmiui/widget/SlidingButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 266
    goto :goto_1

    .line 271
    :cond_4
    iget-wide v0, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 272
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private drawSlidingBar(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 306
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    sub-int v4, v0, v1

    .line 307
    .local v4, barOffset:I
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mBarBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v5, 0x0

    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 310
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    iget-object v2, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    invoke-direct {p0, v0, v1, v2}, Lmiui/widget/SlidingButton;->cutEdge(II[I)V

    .line 311
    iget-object v6, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    const/4 v7, 0x0

    iget v8, p0, Lmiui/widget/SlidingButton;->mWidth:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v12, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v14}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 312
    return-void
.end method

.method private incrementAnimation()V
    .locals 6

    .prologue
    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 278
    .local v0, now:J
    iget-wide v4, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 279
    .local v3, t:F
    iget v2, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 280
    .local v2, position:F
    iget v4, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 281
    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    .line 282
    return-void
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0, v2}, Lmiui/widget/SlidingButton;->setDrawingCacheEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v8, density:F
    const/high16 v1, 0x40c0

    mul-float/2addr v1, v8

    const/high16 v3, 0x3f00

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    .line 90
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x6020347

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    .line 91
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x602034b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x602034c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 93
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x602034a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 94
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x6020349

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    .line 97
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    .line 99
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget-object v3, p0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    .line 101
    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v1, v3

    iput v1, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    .line 103
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 104
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 105
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 108
    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    .line 109
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x6020348

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-static {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, alphaCutter:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/SlidingButton;->mAlphaPixels:[I

    iget v3, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v6, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v7, p0, Lmiui/widget/SlidingButton;->mHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    iget v1, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v2, p0, Lmiui/widget/SlidingButton;->mHeight:I

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mBarSlice:[I

    .line 119
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x6020346

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lmiui/widget/SlidingButton;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmiui/widget/SlidingButton;->mHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lmiui/widget/SlidingButton;->mBarBitmap:Landroid/graphics/Bitmap;

    .line 124
    return-void
.end method

.method private moveSlider(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 237
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 238
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    if-gez v0, :cond_1

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 243
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 244
    return-void

    .line 240
    :cond_1
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    if-le v0, v1, :cond_0

    .line 241
    iget v0, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method

.method private performFling(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    const/16 v4, 0x3e8

    .line 247
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/widget/SlidingButton;->mAnimating:Z

    .line 248
    const/4 v2, 0x0

    iput v2, p0, Lmiui/widget/SlidingButton;->mAnimationPosition:F

    .line 249
    iput p1, p0, Lmiui/widget/SlidingButton;->mAnimatedVelocity:F

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 251
    .local v0, now:J
    iput-wide v0, p0, Lmiui/widget/SlidingButton;->mAnimationLastTime:J

    .line 252
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    .line 253
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v2, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/widget/SlidingButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lmiui/widget/SlidingButton;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 255
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOnDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mOffDisable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lmiui/widget/SlidingButton;->drawSlidingBar(Landroid/graphics/Canvas;)V

    .line 297
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mFrame:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    const/4 v2, 0x0

    iget v3, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 300
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 146
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/SlidingButton;->setMeasuredDimension(II)V

    .line 147
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 152
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    .line 214
    :goto_0
    return v4

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 156
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 157
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 158
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v5, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v6, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    add-int/2addr v5, v6

    iget v6, p0, Lmiui/widget/SlidingButton;->mHeight:I

    invoke-direct {v1, v4, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 160
    .local v1, sliderFrame:Landroid/graphics/Rect;
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v8

    .line 214
    goto :goto_0

    .line 162
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    iput-boolean v8, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 164
    iget-object v4, p0, Lmiui/widget/SlidingButton;->mPressedSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v4, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 165
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 169
    :goto_2
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 170
    iput v2, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    .line 171
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 167
    :cond_2
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    goto :goto_2

    .line 175
    :pswitch_1
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_1

    .line 176
    iget v4, p0, Lmiui/widget/SlidingButton;->mLastX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lmiui/widget/SlidingButton;->moveSlider(I)V

    .line 177
    iput v2, p0, Lmiui/widget/SlidingButton;->mLastX:I

    .line 178
    iget v4, p0, Lmiui/widget/SlidingButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiui/widget/SlidingButton;->mTapThreshold:I

    if-lt v4, v5, :cond_1

    .line 179
    iput-boolean v8, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    .line 180
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 186
    :pswitch_2
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    if-eqz v4, :cond_5

    .line 187
    iget-boolean v4, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    if-nez v4, :cond_3

    .line 188
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    .line 199
    :goto_3
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 200
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 190
    :cond_3
    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    if-ltz v4, :cond_4

    iget v4, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    iget v5, p0, Lmiui/widget/SlidingButton;->mSliderPosition:I

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_4

    .line 191
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOff()V

    goto :goto_3

    .line 193
    :cond_4
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOn()V

    goto :goto_3

    .line 197
    :cond_5
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateToggle()V

    goto :goto_3

    .line 204
    :pswitch_3
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 205
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOn()V

    .line 209
    :goto_4
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mTracking:Z

    .line 210
    iput-boolean v7, p0, Lmiui/widget/SlidingButton;->mSliderMoved:Z

    goto :goto_1

    .line 207
    :cond_6
    invoke-direct {p0}, Lmiui/widget/SlidingButton;->animateOff()V

    goto :goto_4

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 141
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget v0, p0, Lmiui/widget/SlidingButton;->mWidth:I

    iget v1, p0, Lmiui/widget/SlidingButton;->mSliderWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    .line 134
    :goto_0
    iget-object v0, p0, Lmiui/widget/SlidingButton;->mSlider:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lmiui/widget/SlidingButton;->mActiveSlider:Landroid/graphics/drawable/BitmapDrawable;

    .line 135
    invoke-virtual {p0}, Lmiui/widget/SlidingButton;->invalidate()V

    .line 136
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/SlidingButton;->mSliderOffset:I

    goto :goto_0
.end method

.method public setOnCheckedChangedListener(Lmiui/widget/SlidingButton$OnCheckedChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 68
    iput-object p1, p0, Lmiui/widget/SlidingButton;->mOnCheckedChangedListener:Lmiui/widget/SlidingButton$OnCheckedChangedListener;

    .line 69
    return-void
.end method
