.class public Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;
.super Landroid/widget/RelativeLayout;
.source "CapturingModeSelectorButtonView.java"


# static fields
.field private static final ROTATE_DEGREE:F = -90.0f


# instance fields
.field private mBackgroundView:Landroid/widget/ImageView;

.field protected mIconHeight:I

.field private mIconView:Landroid/widget/ImageView;

.field protected mIconWidth:I

.field private mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

.field private mSensorOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x2

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconWidth:I

    .line 47
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconHeight:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mSensorOrientation:I

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconWidth:I

    .line 47
    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconHeight:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mSensorOrientation:I

    .line 59
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->init()V

    .line 60
    return-void
.end method

.method private contains(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 291
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public clearMode()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V

    .line 212
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, 0x4000

    .line 239
    iget v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 241
    .local v1, width:F
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 243
    .local v0, height:F
    const/high16 v2, -0x3d4c

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 246
    .end local v0           #height:F
    .end local v1           #width:F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 247
    return-void
.end method

.method protected getIconBitmapId()I
    .locals 2

    .prologue
    .line 191
    const/4 v0, -0x1

    .line 192
    .local v0, result:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;->getIconId()I

    move-result v0

    .line 195
    :cond_0
    return v0
.end method

.method protected getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getModeAttributes()Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    return-object v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->initValue()V

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->initthis()V

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->initBackground()V

    .line 66
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->initIcon()V

    .line 67
    return-void
.end method

.method protected initBackground()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setupBackground()V

    .line 94
    const v0, 0x7f02009a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setBackgroundImageDrawable(I)V

    .line 96
    return-void
.end method

.method protected initIcon()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setupIcon()V

    .line 144
    return-void
.end method

.method protected initValue()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconWidth:I

    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconHeight:I

    .line 74
    return-void
.end method

.method protected initthis()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setClickable(Z)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setFocusable(Z)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setFocusableInTouchMode(Z)V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 252
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 277
    return v0

    .line 257
    :pswitch_0
    const/4 v0, 0x1

    .line 258
    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setPressed(Z)V

    .line 261
    const/4 v0, 0x1

    .line 262
    goto :goto_0

    .line 264
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setPressed(Z)V

    .line 265
    const/4 v0, 0x1

    .line 266
    goto :goto_0

    .line 268
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setPressed(Z)V

    .line 270
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundImageDrawable(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 119
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 229
    return-void
.end method

.method public setModeAttributes(Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;)V
    .locals 0
    .parameter "modeAttr"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 204
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 232
    iput p1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mSensorOrientation:I

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateLayout()V

    .line 234
    return-void
.end method

.method protected setupBackground()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 99
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->addView(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method protected setupIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 152
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconWidth:I

    iget v2, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 157
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method protected updateBackground()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, visible:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-nez v1, :cond_0

    .line 131
    const/4 v0, 0x4

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    :cond_1
    return-void
.end method

.method protected updateIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 168
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mModeAttr:Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeAttributes;

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->getIconBitmapId()I

    move-result v0

    .line 179
    .local v0, icon:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v1, p0, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->mIconView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateLayout()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateBackground()V

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->updateIcon()V

    .line 217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/capturingmodeselector/CapturingModeSelectorButtonView;->invalidate()V

    .line 218
    return-void
.end method
