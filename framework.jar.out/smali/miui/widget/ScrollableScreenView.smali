.class public Lmiui/widget/ScrollableScreenView;
.super Lmiui/widget/ScreenView;
.source "ScrollableScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScrollableScreenView$ScrollAnimation;,
        Lmiui/widget/ScrollableScreenView$OnScrollOutListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0x64


# instance fields
.field private mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/ScrollableScreenView;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private makeWholeViewVisiable()V
    .locals 6

    .prologue
    .line 83
    iget-object v3, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScrollableScreenView;->getTop()I

    move-result v1

    .line 88
    .local v1, disToScrollParent:I
    invoke-virtual {p0}, Lmiui/widget/ScrollableScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 89
    .local v2, pare:Landroid/view/ViewParent;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    if-eq v2, v3, :cond_3

    .line 90
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 91
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v1, v3

    .line 92
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    .line 94
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 98
    :cond_3
    iget-object v3, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 99
    iget-object v3, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v4, Lmiui/widget/ScrollableScreenView$ScrollAnimation;

    iget-object v5, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    invoke-direct {v4, p0, v5, v1}, Lmiui/widget/ScrollableScreenView$ScrollAnimation;-><init>(Lmiui/widget/ScrollableScreenView;II)V

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 44
    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v0, v1, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableScreenView;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lmiui/widget/ScreenView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnScrollOutListener(Lmiui/widget/ScrollableScreenView$OnScrollOutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lmiui/widget/ScrollableScreenView;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    .line 33
    return-void
.end method

.method public setParentScrollView(Landroid/widget/ScrollView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 76
    iput-object p1, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    .line 77
    iget-object v0, p0, Lmiui/widget/ScrollableScreenView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 78
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lmiui/widget/ScrollableScreenView;->setScreenSnapDuration(I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 12
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v11, 0x1

    const-wide v9, 0x3fc999999999999aL

    const/4 v8, 0x0

    .line 52
    invoke-virtual {p0}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScrollableScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lmiui/widget/ScrollableScreenView;->mNextScreen:I

    .line 53
    iget v2, p0, Lmiui/widget/ScrollableScreenView;->mNextScreen:I

    iget v3, p0, Lmiui/widget/ScrollableScreenView;->mCurrentScreen:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lmiui/widget/ScrollableScreenView;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    if-eqz v2, :cond_2

    .line 54
    const-wide v0, 0x3fc999999999999aL

    .line 55
    .local v0, RATIO:D
    iget v2, p0, Lmiui/widget/ScrollableScreenView;->mScrollX:I

    int-to-double v2, v2

    iget v4, p0, Lmiui/widget/ScrollableScreenView;->mScrollLeftBound:I

    int-to-double v4, v4

    iget v6, p0, Lmiui/widget/ScrollableScreenView;->mChildScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/widget/ScrollableScreenView;->mOverScrollRatio:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v9

    add-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lmiui/widget/ScrollableScreenView;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    invoke-interface {v2, p0, v8}, Lmiui/widget/ScrollableScreenView$OnScrollOutListener;->onScrollOut(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lmiui/widget/ScrollableScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {p0, v2}, Lmiui/widget/ScrollableScreenView;->setCurrentScreen(I)V

    .line 68
    .end local v0           #RATIO:D
    :goto_0
    invoke-direct {p0}, Lmiui/widget/ScrollableScreenView;->makeWholeViewVisiable()V

    .line 69
    return-void

    .line 58
    .restart local v0       #RATIO:D
    :cond_0
    iget v2, p0, Lmiui/widget/ScrollableScreenView;->mScrollX:I

    int-to-double v2, v2

    iget v4, p0, Lmiui/widget/ScrollableScreenView;->mScrollRightBound:I

    int-to-double v4, v4

    iget v6, p0, Lmiui/widget/ScrollableScreenView;->mChildScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lmiui/widget/ScrollableScreenView;->mOverScrollRatio:F

    mul-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v9

    sub-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lmiui/widget/ScrollableScreenView;->mScrollOutListener:Lmiui/widget/ScrollableScreenView$OnScrollOutListener;

    invoke-interface {v2, p0, v11}, Lmiui/widget/ScrollableScreenView$OnScrollOutListener;->onScrollOut(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p0, v8}, Lmiui/widget/ScrollableScreenView;->setCurrentScreen(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 65
    .end local v0           #RATIO:D
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0
.end method
