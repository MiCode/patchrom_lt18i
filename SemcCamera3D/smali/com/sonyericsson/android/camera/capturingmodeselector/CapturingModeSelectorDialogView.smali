.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;
.super Landroid/widget/RelativeLayout;
.source "CapturingModeSelectorDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$1;,
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;,
        Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturingModeSelectorDialog"


# instance fields
.field mBackgroundView:Landroid/view/View;

.field mDummyViewFinder:Landroid/view/View;

.field mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->isInDialog(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBackgroundView()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mBackgroundView:Landroid/view/View;

    return-object v0
.end method

.method private getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    return-object v0
.end method

.method private isInDialog(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, result:Z
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentBackgroundView()Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, background:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 158
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 159
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 160
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    .line 163
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_0
    return v2
.end method

.method private setupViewFinder()V
    .locals 7

    .prologue
    .line 68
    new-instance v2, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$1;)V

    .line 69
    .local v2, listner:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$ViewFinderListener;
    const v5, 0x7f0d0046

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    .line 70
    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    if-nez v5, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 77
    .local v1, displayWidthRatio:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 79
    .local v4, viewFinderWidthRatio:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    .local v0, displayWidth:I
    if-eqz v1, :cond_0

    .line 87
    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int v5, v0, v4

    div-int/2addr v5, v1

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 89
    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object v5, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setVisibility(I)V

    .line 109
    return-void
.end method

.method public getModeAttributes(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 2
    .parameter "position"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    .line 117
    .local v0, listView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->getModeAttributes(I)Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v1

    .line 120
    :cond_0
    return-object v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    .line 55
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setupViewFinder()V

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;-><init>(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$1;)V

    .line 58
    .local v0, backgroundListner:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView$BackgroundListener;
    const v1, 0x7f0d0048

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mBackgroundView:Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mBackgroundView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 190
    :goto_0
    if-nez v1, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 194
    :cond_0
    return v1

    .line 176
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    .line 177
    .local v0, listview:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    if-eqz v0, :cond_1

    .line 179
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->onClick(Landroid/view/View;)V

    .line 181
    :cond_1
    const/4 v1, 0x1

    .line 182
    goto :goto_0

    .line 184
    .end local v0           #listview:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    :sswitch_1
    const/4 v1, 0x1

    .line 185
    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 222
    :goto_0
    if-nez v1, :cond_0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 226
    :cond_0
    return v1

    .line 205
    :sswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    .line 206
    .local v0, listview:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    if-eqz v0, :cond_1

    .line 208
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->onClick(Landroid/view/View;)V

    .line 210
    :cond_1
    const/4 v1, 0x1

    .line 211
    goto :goto_0

    .line 217
    .end local v0           #listview:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    :sswitch_1
    const/4 v1, 0x1

    .line 218
    goto :goto_0

    .line 203
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1b -> :sswitch_1
        0x50 -> :sswitch_1
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->requestFocus()Z

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public setItemSelectListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;)V
    .locals 1
    .parameter "listner"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->setItemSelectListener(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView$OnModeSelectListener;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setModeGroup(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->mListView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->setModeGroup(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeGroup;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorDialogView;->getCurrentListView()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;

    move-result-object v0

    .line 133
    .local v0, listView:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorListView;->setSensorOrientation(I)V

    .line 136
    :cond_0
    return-void
.end method
