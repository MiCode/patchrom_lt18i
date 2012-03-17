.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;
.super Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;
.source "CapturingModeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CapturingModeView"


# instance fields
.field protected mItemHeight:I

.field protected mItemWidth:I

.field protected mTextColor:Landroid/content/res/ColorStateList;

.field protected mTextHeight:I

.field protected mTextSize:F

.field protected mTextTopMargin:I

.field protected mTextView:Landroid/widget/TextView;

.field protected mTextWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x2

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemWidth:I

    .line 37
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemHeight:I

    .line 43
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextWidth:I

    .line 44
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextHeight:I

    .line 59
    return-void
.end method


# virtual methods
.method protected getIconBitmapId()I
    .locals 2

    .prologue
    .line 172
    const/4 v1, -0x1

    .line 173
    .local v1, result:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 174
    .local v0, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getLargeIconId()I

    move-result v1

    .line 177
    :cond_0
    return v1
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->init()V

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->initText()V

    .line 65
    return-void
.end method

.method protected initBackground()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->initBackground()V

    .line 109
    const v0, 0x7f02009b

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setBackgroundImageDrawable(I)V

    .line 111
    return-void
.end method

.method protected initText()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 134
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 139
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 140
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->addView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method protected initValue()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 70
    .local v0, density:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 71
    const/high16 v0, 0x3f80

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemWidth:I

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemHeight:I

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mIconWidth:I

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mIconHeight:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextWidth:I

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextHeight:I

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextTopMargin:I

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextSize:F

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 92
    return-void
.end method

.method protected initthis()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mItemHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setClickable(Z)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setFocusable(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setFocusableInTouchMode(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 208
    .local v0, result:Z
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setEnabled(Z)V

    .line 193
    return-void
.end method

.method protected setupIcon()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setupIcon()V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 117
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 121
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method public updateLayout()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->updateText()V

    .line 183
    invoke-super {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 184
    return-void
.end method

.method protected updateText()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 149
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 168
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    move-result-object v0

    .line 156
    .local v0, modeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    if-nez v0, :cond_1

    .line 157
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getTextId()I

    move-result v1

    .line 162
    .local v1, stringId:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
