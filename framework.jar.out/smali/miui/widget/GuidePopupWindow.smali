.class public Lmiui/widget/GuidePopupWindow;
.super Landroid/widget/PopupWindow;
.source "GuidePopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDissmissRunnable:Ljava/lang/Runnable;

.field private mPopupView:Lmiui/widget/GuidePopupView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 86
    new-instance v0, Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {v0, p0}, Lmiui/widget/GuidePopupWindow$1;-><init>(Lmiui/widget/GuidePopupWindow;)V

    iput-object v0, p0, Lmiui/widget/GuidePopupWindow;->mDissmissRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lmiui/widget/GuidePopupWindow;->init()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/GuidePopupWindow;)Lmiui/widget/GuidePopupView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 36
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 37
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x6030004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/GuidePopupView;

    iput-object v2, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    .line 39
    invoke-virtual {p0, v4}, Lmiui/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 41
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 42
    .local v1, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {p0, v2}, Lmiui/widget/GuidePopupWindow;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0, v5}, Lmiui/widget/GuidePopupWindow;->setWidth(I)V

    .line 44
    invoke-virtual {p0, v5}, Lmiui/widget/GuidePopupWindow;->setHeight(I)V

    .line 45
    invoke-virtual {p0, v6}, Lmiui/widget/GuidePopupWindow;->setFocusable(Z)V

    .line 47
    invoke-virtual {p0, v4}, Lmiui/widget/GuidePopupWindow;->setTouchable(Z)V

    .line 48
    invoke-virtual {p0, v6}, Lmiui/widget/GuidePopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 49
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lmiui/widget/GuidePopupWindow;->setSoftInputMode(I)V

    .line 52
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, v2}, Lmiui/widget/GuidePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->update()V

    .line 54
    return-void
.end method


# virtual methods
.method public enableOutSideWindowTouchDismiss(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/GuidePopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void

    :cond_0
    move-object v0, p0

    .line 119
    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 125
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 127
    .local v2, y:I
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 128
    .local v0, drawingLocation:[I
    iget-object v3, p0, Lmiui/widget/GuidePopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 129
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    aget v3, v0, v5

    if-lt v1, v3, :cond_1

    iget-object v3, p0, Lmiui/widget/GuidePopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    aget v4, v0, v5

    add-int/2addr v3, v4

    if-gt v1, v3, :cond_1

    aget v3, v0, v6

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lmiui/widget/GuidePopupWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    aget v4, v0, v6

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    :cond_0
    move v3, v6

    .line 136
    :goto_0
    return v3

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move v3, v5

    .line 134
    goto :goto_0
.end method

.method public setArrowMode(I)V
    .locals 1
    .parameter "arrowMode"

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupView;->setArrowMode(I)V

    .line 58
    return-void
.end method

.method public setGuideText(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupView;->setGuideText(I)V

    .line 66
    return-void
.end method

.method public setGuideText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 61
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupView;->setGuideText(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "anchor"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "autoDissmiss"

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {v0, p1}, Lmiui/widget/GuidePopupView;->setAnchor(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    invoke-virtual {v0, p2, p3}, Lmiui/widget/GuidePopupView;->setOffset(II)V

    .line 79
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow;->mAnchor:Landroid/view/View;

    .line 80
    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/widget/GuidePopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 81
    if-eqz p4, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;

    iget-object v1, p0, Lmiui/widget/GuidePopupWindow;->mDissmissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lmiui/widget/GuidePopupView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    :cond_0
    return-void
.end method
