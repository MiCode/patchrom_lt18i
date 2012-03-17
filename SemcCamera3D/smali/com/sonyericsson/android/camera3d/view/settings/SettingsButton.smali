.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
.super Landroid/widget/LinearLayout;
.source "SettingsButton.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsButton"


# instance fields
.field private mCanceled:Z

.field private mCategoryModificationListener:Landroid/view/View$OnTouchListener;

.field private mDownPosition:Landroid/graphics/Rect;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mPadding:I

.field private mText:Landroid/widget/TextView;

.field private mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected contains(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mDownPosition:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 265
    .local v0, contains:Z
    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mPadding:I

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setup()V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 213
    .local v1, original:Landroid/view/MotionEvent;
    const/4 v0, 0x1

    .line 214
    .local v0, contains:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 228
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCanceled:Z

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_0

    .line 231
    if-eqz v0, :cond_2

    .line 232
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCanceled:Z

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 243
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCategoryModificationListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCategoryModificationListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 247
    :cond_1
    return v5

    .line 216
    :pswitch_0
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCanceled:Z

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setDownPosition(II)V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->contains(II)Z

    move-result v0

    goto :goto_0

    .line 235
    :cond_2
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCanceled:Z

    .line 236
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    .line 122
    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->removeAllViews()V

    .line 124
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 4
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 132
    const v0, 0x7f02004c

    if-eq p1, v0, :cond_0

    const v0, 0x7f02004f

    if-ne p1, v0, :cond_1

    .line 134
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mPadding:I

    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mPadding:I

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mPadding:I

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mPadding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setPadding(IIII)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->invalidate()V

    .line 139
    return-void

    .line 136
    :cond_1
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setCategoryModificationListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mCategoryModificationListener:Landroid/view/View$OnTouchListener;

    .line 145
    return-void
.end method

.method protected setDownPosition(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 253
    .local v1, width:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 254
    .local v0, height:I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, p1, v1

    sub-int v4, p2, v0

    add-int v5, p1, v1

    add-int v6, p2, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mDownPosition:Landroid/graphics/Rect;

    .line 259
    return-void
.end method

.method public setIconResource(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 189
    if-lez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 201
    return-void
.end method

.method public setListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mListener:Landroid/view/View$OnTouchListener;

    .line 150
    return-void
.end method

.method public setMargin(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 185
    return-void
.end method

.method public setText(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 154
    if-lez p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 160
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 166
    return-void
.end method

.method public setTextMargin(I)V
    .locals 2
    .parameter "left"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 180
    return-void
.end method

.method public setTextWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 173
    return-void
.end method

.method public setup()V
    .locals 8

    .prologue
    const v7, 0x7f090120

    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 82
    invoke-super {p0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    .line 87
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIconLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->addView(Landroid/view/View;)V

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 101
    .local v0, paddingRight:I
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    .line 102
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 105
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mTextLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->addView(Landroid/view/View;)V

    .line 115
    .end local v0           #paddingRight:I
    :cond_1
    return-void
.end method

.method public updateLayout(Z)V
    .locals 2
    .parameter "textVisibility"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->requestLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->invalidate()V

    .line 280
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->mText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
