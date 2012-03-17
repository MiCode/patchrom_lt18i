.class public Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;
.super Landroid/widget/FrameLayout;
.source "PanoramaSweeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;,
        Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PanoramaSweeper"

.field public static final sDirectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

.field private mIsAnimationAvailable:Z

.field private mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

.field private mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->sDirectionMap:Ljava/util/HashMap;

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->sDirectionMap:Ljava/util/HashMap;

    const-string v1, "LEFT_2_RIGHT"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;

    invoke-direct {v2, v4, v3}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;-><init>(ZZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->sDirectionMap:Ljava/util/HashMap;

    const-string v1, "RIGHT_2_LEFT"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;

    invoke-direct {v2, v4, v4}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;-><init>(ZZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->sDirectionMap:Ljava/util/HashMap;

    const-string v1, "BOTTOM_2_TOP"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;

    invoke-direct {v2, v3, v3}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;-><init>(ZZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->sDirectionMap:Ljava/util/HashMap;

    const-string v1, "TOP_2_BOTTOM"

    new-instance v2, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$Direction;-><init>(ZZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 86
    return-void
.end method


# virtual methods
.method public hideGuide()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->hideGuide()V

    .line 143
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->setVisibility(I)V

    .line 144
    return-void
.end method

.method public hideGuideText()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->hideGuideText()V

    .line 172
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->HIDDEN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 173
    return-void
.end method

.method public hideProgress()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->hideProgress()V

    .line 166
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->setVisibility(I)V

    .line 167
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 93
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    .line 94
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mIsAnimationAvailable:Z

    .line 97
    return-void
.end method

.method public onTouchGuideAnimationEnd()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mIsAnimationAvailable:Z

    .line 105
    return-void
.end method

.method public onTouchGuideAnimationStart()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mIsAnimationAvailable:Z

    .line 101
    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 109
    .local v1, parent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 112
    .local v2, width:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 116
    .local v0, height:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v3, v2, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->setup(II)V

    .line 117
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    invoke-virtual {v3, v2, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->setup(II)V

    .line 118
    return-void
.end method

.method public showGuide(Ljava/lang/String;Z)V
    .locals 2
    .parameter "direction"
    .parameter "panorama2d"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mIsAnimationAvailable:Z

    if-nez v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideProgress()V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->showGuide(Ljava/lang/String;Z)V

    .line 132
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->SHOWN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->showGuideText()V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->hideGuideText()V

    goto :goto_0
.end method

.method public showGuideText()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepGuide:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepGuide;->showGuideText()V

    .line 178
    sget-object v0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;->SHOWN:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mGuideTextState:Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper$GuideTextState;

    .line 179
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->hideGuide()V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->showProgress(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public updateProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 155
    if-gez p1, :cond_1

    .line 156
    const/4 p1, 0x0

    .line 160
    :cond_0
    :goto_0
    int-to-float v1, p1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 161
    .local v0, prog:F
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/PanoramaSweeper;->mSweepProgress:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->updateProgress(F)V

    .line 162
    return-void

    .line 157
    .end local v0           #prog:F
    :cond_1
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 158
    const/16 p1, 0x64

    goto :goto_0
.end method
