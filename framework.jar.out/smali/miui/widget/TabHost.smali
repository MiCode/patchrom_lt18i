.class public Lmiui/widget/TabHost;
.super Landroid/widget/TabHost;
.source "TabHost.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 10
    .parameter "tabSpec"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 25
    invoke-super {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 26
    invoke-virtual {p0}, Lmiui/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 27
    .local v5, tabWidget:Landroid/widget/TabWidget;
    invoke-virtual {v5}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    sub-int v2, v7, v8

    .line 28
    .local v2, tabIndex:I
    invoke-virtual {v5, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 30
    .local v3, tabIndicator:Landroid/view/View;
    const v7, 0x1020006

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, iconView:Landroid/widget/ImageView;
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    const v7, 0x1020016

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 34
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v1, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 36
    const/16 v7, 0xf

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 40
    .local v4, tabParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x2

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    if-nez v2, :cond_1

    .line 44
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {v5, v9}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 46
    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->setGravity(I)V

    .line 47
    const v7, 0x6020390

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->setBackgroundResource(I)V

    .line 48
    const v7, 0x6020382

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const v7, 0x6020383

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    if-le v2, v8, :cond_0

    .line 52
    sub-int v7, v2, v8

    invoke-virtual {v5, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x6020384

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
