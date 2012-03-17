.class public Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;
.super Landroid/widget/RelativeLayout;
.source "SweepGuide.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$1;,
        Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;,
        Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SweepGuide"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationRepeatInterval:J

.field private mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

.field private mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

.field private mGuideMessageId:I

.field private mLastDirection:Ljava/lang/String;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageFrame:Landroid/widget/RelativeLayout;

.field private mPanorama2d:Z

.field private mRestartAnimationTask:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;

.field private mSweepGuideRealImage:Landroid/widget/ImageView;

.field private mSweepGuideShadowImage:Landroid/widget/ImageView;

.field private mWaitingDurationInEnd:J

.field private mWaitingDurationInStart:J

.field public sDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mAnimationHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;-><init>(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mRestartAnimationTask:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mPanorama2d:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->startAnimation()V

    return-void
.end method

.method private createShadowParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;FFFF)Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    .locals 2
    .parameter "realParams"
    .parameter "sdx"
    .parameter "sdy"
    .parameter "sdz"
    .parameter "sdr"

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->clone()Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v0

    .line 178
    .local v0, shadowParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    iget v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    .line 179
    iget v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    add-float/2addr v1, p3

    iput v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    .line 180
    iget v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    add-float/2addr v1, p4

    iput v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    .line 181
    iget v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    add-float/2addr v1, p5

    iput v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    .line 182
    return-object v0
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    return-void
.end method


# virtual methods
.method public hideGuide()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mRestartAnimationTask:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public hideGuideText()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessageFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x4

    .line 287
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->hasEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 292
    .local v0, hasEnded:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mRestartAnimationTask:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$RestartAnimationTask;

    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mAnimationRepeatInterval:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    :cond_0
    return-void

    .line 287
    .end local v0           #hasEnded:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 284
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 280
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 191
    const v1, 0x7f0d0051

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    .line 192
    const v1, 0x7f0d0050

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    .line 193
    const v1, 0x7f0d0053

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessage:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f0d0052

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessageFrame:Landroid/widget/RelativeLayout;

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f010018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInStart:J

    .line 200
    const v1, 0x7f010019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInEnd:J

    .line 202
    const v1, 0x7f01001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mAnimationRepeatInterval:J

    .line 205
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    return-void
.end method

.method public setup(II)V
    .locals 18
    .parameter "width"
    .parameter "height"

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "SweepGuide"

    const-string v4, "setupDataMap: sDataMap has already been set up."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f090148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v8, v3

    .line 121
    .local v8, sdx:F
    const v3, 0x7f090149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v9, v3

    .line 122
    .local v9, sdy:F
    const v3, 0x7f09014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v10, v3

    .line 123
    .local v10, sdz:F
    const v3, 0x7f09014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v11, v3

    .line 133
    .local v11, sdr:F
    const v3, 0x7f010016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 136
    .local v17, duration:I
    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 137
    .local v5, realImage:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 138
    .local v14, shadowImage:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .local v1, realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    move-object/from16 v6, p0

    move-object v7, v1

    .line 139
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->createShadowParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;FFFF)Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v16

    .line 140
    .local v16, shadowParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    new-instance v12, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;

    move-object v13, v5

    move-object v15, v1

    invoke-direct/range {v12 .. v17}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 141
    .local v12, data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    const-string v4, "LEFT_2_RIGHT"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 145
    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 146
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v1           #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v6, 0x1

    const/4 v7, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .restart local v1       #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    move-object/from16 v6, p0

    move-object v7, v1

    .line 147
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->createShadowParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;FFFF)Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v16

    .line 148
    new-instance v12, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;

    .end local v12           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object v13, v5

    move-object v15, v1

    invoke-direct/range {v12 .. v17}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 149
    .restart local v12       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    const-string v4, "RIGHT_2_LEFT"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const v3, 0x7f010017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 156
    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 157
    const v3, 0x7f020032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 158
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v1           #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .restart local v1       #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    move-object/from16 v6, p0

    move-object v7, v1

    .line 159
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->createShadowParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;FFFF)Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v16

    .line 160
    new-instance v12, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;

    .end local v12           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object v13, v5

    move-object v15, v1

    invoke-direct/range {v12 .. v17}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 161
    .restart local v12       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    const-string v4, "BOTTOM_2_TOP"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const v3, 0x7f02002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 165
    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 166
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v1           #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .restart local v1       #realParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    move-object/from16 v6, p0

    move-object v7, v1

    .line 167
    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->createShadowParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;FFFF)Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v16

    .line 168
    new-instance v12, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;

    .end local v12           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object v13, v5

    move-object v15, v1

    invoke-direct/range {v12 .. v17}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 169
    .restart local v12       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    const-string v4, "TOP_2_BOTTOM"

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public showGuide(Ljava/lang/String;Z)V
    .locals 8
    .parameter "direction"
    .parameter "panorama2d"

    .prologue
    .line 217
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mPanorama2d:Z

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mLastDirection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mLastDirection:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->sDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;

    .line 228
    .local v7, data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideRealImage:Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mRealImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mSweepGuideShadowImage:Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mShadowImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    iget-object v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mRealParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;)V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    iget-object v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mShadowParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setParameters(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;)V

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForReal:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    iget v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mAnimatingDuration:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInStart:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInEnd:J

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setDuration(JJJ)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideAnimationForShadow:Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;

    iget v1, v7, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;->mAnimatingDuration:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInStart:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mWaitingDurationInEnd:J

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/GuideAnimation;->setDuration(JJJ)V

    .line 248
    .end local v7           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide$Data;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera3d/CameraConfigManager;->hasShutterKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    const v0, 0x7f0c00bf

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessage:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->setVisibility(I)V

    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->startAnimation()V

    .line 257
    return-void

    .line 251
    :cond_1
    const v0, 0x7f0c00c1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mGuideMessageId:I

    goto :goto_0
.end method

.method public showGuideText()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->mMessageFrame:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    return-void
.end method
