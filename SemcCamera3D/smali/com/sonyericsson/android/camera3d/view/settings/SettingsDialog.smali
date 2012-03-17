.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;
.super Landroid/widget/RelativeLayout;
.source "SettingsDialog.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$SettingsDialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$1;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;
    }
.end annotation


# static fields
.field public static final MAX_NUMBER_OF_BUTTONS:I = 0x7

.field public static final TAG:Ljava/lang/String; = "SettingsDialog"


# instance fields
.field protected mButtonListLandscape:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

.field protected mIndex:I

.field protected mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

.field protected mOrientation:I

.field protected mScrollOn:Z

.field protected mTitle:Landroid/widget/TextView;

.field protected mValuesLandscape:Landroid/widget/LinearLayout;

.field private mViewFinderListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mScrollOn:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    .line 68
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mOrientation:I

    .line 81
    return-void
.end method

.method public static contains(Landroid/view/View;II)Z
    .locals 2
    .parameter "background"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 282
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 283
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 288
    .local v0, contains:Z
    return v0
.end method

.method public static updateViewFinderLayout(Landroid/widget/RelativeLayout;ILandroid/content/res/Resources;Landroid/content/Context;)V
    .locals 6
    .parameter "viewFinder"
    .parameter "orientation"
    .parameter "resources"
    .parameter "context"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const-string v4, "window"

    invoke-virtual {p3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 180
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 181
    .local v0, disp:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 182
    .local v1, outSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 183
    iget v4, v1, Landroid/graphics/Point;->x:I

    const v5, 0x7f0900d2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 186
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setAnimation(Landroid/view/animation/Animation;)V

    .line 162
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setVisibility(I)V

    .line 147
    return-void
.end method

.method public commit()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 219
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    .line 220
    .local v2, numberOfOptions:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 222
    .local v0, button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 223
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    if-ge v1, v3, :cond_1

    .line 224
    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    .line 220
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    goto :goto_1

    .line 230
    .end local v0           #button_l:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_2
    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_3

    .line 231
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mScrollOn:Z

    .line 235
    :goto_2
    iput v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    .line 236
    return v2

    .line 233
    :cond_3
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mScrollOn:Z

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/CameraActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraActivity;->finish(I)V

    .line 296
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 340
    const v3, 0x7f0d0075

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 347
    .local v0, background:Landroid/widget/RelativeLayout;
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 351
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    .line 352
    .local v2, top:I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    .line 353
    .local v1, bottom:I
    invoke-virtual {v0, v4, v2, v4, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 354
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 88
    const v5, 0x7f0d0078

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mTitle:Landroid/widget/TextView;

    .line 89
    const v5, 0x7f0d0086

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mValuesLandscape:Landroid/widget/LinearLayout;

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mValuesLandscape:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 95
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mValuesLandscape:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 96
    .local v4, line:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 97
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 98
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTextMargin(I)V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090122

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTextWidth(I)V

    .line 103
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 96
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v3           #j:I
    .end local v4           #line:Landroid/widget/RelativeLayout;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setup()V

    .line 112
    return-void
.end method

.method public open(Z)Z
    .locals 1
    .parameter "isQuick"

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->updateLayout()V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setVisibility(I)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setDialogListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;)V

    .line 127
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearButtonList(Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method

.method public setButton(Ljava/lang/Object;IIZ)V
    .locals 7
    .parameter "tag"
    .parameter "iconResourceId"
    .parameter "textResourceId"
    .parameter "isSelected"

    .prologue
    .line 246
    const/4 v6, 0x0

    .line 248
    .local v6, prepared:Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .local v1, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 249
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->setButton(Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;Ljava/lang/Object;IIZ)Z

    move-result v6

    .line 252
    if-eqz v6, :cond_0

    .line 253
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mIndex:I

    .line 255
    :cond_0
    return-void
.end method

.method protected setButton(Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;Ljava/lang/Object;IIZ)Z
    .locals 3
    .parameter "button"
    .parameter "tag"
    .parameter "iconResourceId"
    .parameter "textResourceId"
    .parameter "isSelected"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTag(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1, p3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setIconResource(I)V

    .line 262
    invoke-virtual {p1, p4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setText(I)V

    .line 263
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    if-eqz p5, :cond_0

    .line 265
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 271
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-static {p1, v1, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 271
    goto :goto_0
.end method

.method public setDialogListener(Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mListener:Lcom/sonyericsson/android/camera3d/view/settings/SettingsController$DialogListener;

    .line 134
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 167
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mOrientation:I

    .line 168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->updateLayout()V

    .line 169
    return-void
.end method

.method public setTitle(IF)V
    .locals 1
    .parameter "resourceId"
    .parameter "textSize"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 278
    return-void
.end method

.method protected setup()V
    .locals 3

    .prologue
    .line 115
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mButtonListLandscape:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 122
    return-void
.end method

.method public startCloseAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-void
.end method

.method protected updateLayout()V
    .locals 6

    .prologue
    .line 194
    const v2, 0x7f0d0046

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mOrientation:I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->updateViewFinderLayout(Landroid/widget/RelativeLayout;ILandroid/content/res/Resources;Landroid/content/Context;)V

    .line 199
    const v2, 0x7f0d0075

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 200
    .local v0, background:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 202
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 205
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mValuesLandscape:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->requestLayout()V

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->invalidate()V

    .line 215
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 209
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsDialog;->mValuesLandscape:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
