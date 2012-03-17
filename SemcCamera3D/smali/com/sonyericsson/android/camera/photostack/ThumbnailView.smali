.class public Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
.super Landroid/widget/RelativeLayout;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/ThumbnailView$2;
    }
.end annotation


# static fields
.field private static final INSERTANIMATION_DURATION:I = 0x12c

.field private static final INSERTANIMATION_FADE_END:F = 1.0f

.field private static final INSERTANIMATION_FADE_START:F = 0.0f

.field private static final INSERTANIMATION_SCALE_END:F = 1.0f

.field private static final INSERTANIMATION_SCALE_START:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "ThumbnailView"


# instance fields
.field private mData:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameOverlapSize:I

.field private mInsertAnimation:Landroid/view/animation/Animation;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private final mProgressBarBaseMargin:I

.field private final mProgressBarSize:I

.field private mRequestId:I

.field private mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

.field private final mThumbnailSizeReal:I

.field private mThumbnailVisiblity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7f09002c

    const v2, 0x7f090023

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailSizeReal:I

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mFrameOverlapSize:I

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBarSize:I

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBarBaseMargin:I

    .line 93
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->init()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V

    return-void
.end method

.method private createInsertAnimation()Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/high16 v4, 0x4000

    const v1, 0x3f333333

    const/high16 v2, 0x3f80

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 294
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    .line 324
    :goto_0
    return-object v7

    .line 297
    :cond_0
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 298
    .local v7, animation:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v3, v4

    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 304
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 307
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 308
    const-wide/16 v0, 0x12c

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 309
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;-><init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    .line 98
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    .line 99
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->initMe()V

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->initImageView()V

    .line 102
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->initProgressBar()V

    .line 103
    return-void
.end method

.method private initImageView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setClickable(Z)V

    .line 262
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setFocusable(Z)V

    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setFocusableInTouchMode(Z)V

    .line 264
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailSizeReal:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailSizeReal:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->addView(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method private initMe()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mRequestId:I

    .line 248
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setClickable(Z)V

    .line 250
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setFocusable(Z)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setFocusableInTouchMode(Z)V

    .line 252
    return-void
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 277
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setClickable(Z)V

    .line 279
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setFocusable(Z)V

    .line 280
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setFocusableInTouchMode(Z)V

    .line 281
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailSizeReal:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBarSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 284
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->addView(Landroid/view/View;)V

    .line 286
    return-void
.end method

.method private updateAnimation()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 206
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 207
    .local v0, data:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v0, :cond_1

    .line 208
    sget-object v3, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$2;->$SwitchMap$com$sonyericsson$android$camera$photostack$ThumbnailCache$StoringState:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getStoringState()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 231
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 211
    :pswitch_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->isLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->resetStoringState()V

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->createInsertAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    .line 224
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateImage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 177
    .local v0, data:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getMediaInfo()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;

    move-result-object v2

    .line 179
    .local v2, info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 180
    .local v1, image:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 182
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->destroyDrawingCache()V

    .line 185
    iget v3, v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 186
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setPlayIconVisibility(Z)V

    .line 190
    :goto_0
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    .line 198
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v2           #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_0
    :goto_1
    return-void

    .line 188
    .restart local v1       #image:Landroid/graphics/Bitmap;
    .restart local v2       #info:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$MediaInfo;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setPlayIconVisibility(Z)V

    goto :goto_0

    .line 193
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    .line 194
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setPlayIconVisibility(Z)V

    .line 195
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelStoringAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 360
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_2

    .line 362
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->clearAnimation()V

    .line 366
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 370
    .local v0, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->cancelLoading()V

    .line 372
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->resetStoringState()V

    .line 375
    .end local v0           #thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_2
    return-void
.end method

.method protected clearPressed()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->clearPressed()V

    .line 346
    return-void
.end method

.method public completeStoring()V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 152
    .local v0, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->completeStoring()V

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V

    .line 156
    return-void
.end method

.method public contains(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 333
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getHitRect(Landroid/graphics/Rect;)V

    .line 334
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mFrameOverlapSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 335
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 337
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetThumbnail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    iput-object v2, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 166
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mRequestId:I

    .line 167
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V

    .line 168
    return-void
.end method

.method public setOffset(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 350
    .local v0, param:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBarBaseMargin:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setOffset(II)V

    .line 353
    return-void
.end method

.method protected setPressed()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setPressed()V

    .line 342
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailImageView;->setRotation(I)V

    .line 329
    return-void
.end method

.method public setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 124
    iget v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mRequestId:I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mRequestId:I

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mData:Ljava/lang/ref/WeakReference;

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateImage()V

    .line 134
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V

    .line 135
    return-void

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mThumbnailVisiblity:Z

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateImage()V

    goto :goto_0
.end method

.method public updateThumbnail()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateImage()V

    .line 142
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V

    .line 143
    return-void
.end method
