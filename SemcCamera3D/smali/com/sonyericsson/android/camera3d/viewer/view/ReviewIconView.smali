.class public Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
.super Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;
.source "ReviewIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_GUIDE:I = 0x4

.field private static final MSG_SHOW_ICONS:I = 0x2

.field private static final MSG_START_GUIDE_FADING:I = 0x5

.field private static final MSG_START_ICONS_FADING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ReviewIconView"


# instance fields
.field private mActionListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;

.field private mDeleteIcon:Landroid/widget/ImageButton;

.field private mFadeInAnimationForGuide:Landroid/view/animation/Animation;

.field private mFadeInAnimationForIcons:Landroid/view/animation/Animation;

.field private mFadeOutAnimationForGuide:Landroid/view/animation/Animation;

.field private mFadeOutAnimationForIcons:Landroid/view/animation/Animation;

.field private mGuide:Landroid/view/View;

.field private mGuideFading:Landroid/view/View;

.field private mGuideIcon:Landroid/view/View;

.field private mGuideMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIconsFading:Landroid/view/View;

.field private mPlayIcon:Landroid/widget/ImageButton;

.field private mProgress:Landroid/view/View;

.field private mShareIcon:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;-><init>(Landroid/content/Context;)V

    .line 289
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 289
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 289
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$8;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mActionListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForIcons:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForIcons:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForGuide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForGuide:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private setupAnimation()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const v3, 0x3f4ccccd

    const/4 v2, 0x0

    .line 218
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForIcons:Landroid/view/animation/Animation;

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForIcons:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForIcons:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForIcons:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$4;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 236
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForIcons:Landroid/view/animation/Animation;

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForIcons:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForIcons:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$5;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForGuide:Landroid/view/animation/Animation;

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForGuide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForGuide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeInAnimationForGuide:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$6;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForGuide:Landroid/view/animation/Animation;

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForGuide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mFadeOutAnimationForGuide:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$7;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 282
    return-void
.end method


# virtual methods
.method public getIconsVisibility()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageVisibility()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Output3dView;->onFinishInflate()V

    .line 77
    const v0, 0x7f0d0015

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    .line 78
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    .line 79
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mProgress:Landroid/view/View;

    .line 80
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuide:Landroid/view/View;

    .line 81
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideIcon:Landroid/view/View;

    .line 82
    const v0, 0x7f0d0018

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideMessage:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0d001a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mPlayIcon:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mShareIcon:Landroid/widget/ImageButton;

    .line 85
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mDeleteIcon:Landroid/widget/ImageButton;

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setupAnimation()V

    .line 87
    return-void
.end method

.method public resetFading()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x1388

    const/4 v2, 0x5

    const/4 v1, 0x3

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    :cond_1
    return-void
.end method

.method public setActionListener(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mActionListener:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mShareIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mDeleteIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$2;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mPlayIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$3;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method public setFunctionIconEnable(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 110
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mShareIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mDeleteIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 112
    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v1, v2

    .line 111
    goto :goto_1
.end method

.method public setIconFocusable(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 139
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mDeleteIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 141
    const v1, 0x7f0d001c

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, first:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 145
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    return-void
.end method

.method public setMessageEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuide:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setPlayIconEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mPlayIcon:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 117
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setProgressEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showIcons(Z)V
    .locals 4
    .parameter "fading"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x2

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    if-eqz p1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mIconsFading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMessage(Z)V
    .locals 4
    .parameter "fading"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x4

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 178
    if-eqz p1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->mGuideFading:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
