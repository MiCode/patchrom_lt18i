.class public Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;
.super Landroid/widget/RelativeLayout;
.source "SettingsCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$1;,
        Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingsCategory"


# instance fields
.field private mBlankButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonList:Ljava/util/ArrayList;
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

.field private mIndex:I

.field private mListener:Landroid/view/View$OnTouchListener;

.field private mOrientation:I

.field private mSelectableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mBlankButtons:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$ButtonListener;-><init>(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mOrientation:I

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method public clearPressed()V
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->clearPressed(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 242
    return-void
.end method

.method public commit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    .line 163
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    goto :goto_1

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->updateLayout(I)V

    .line 173
    iput v3, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mBlankButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    return-void
.end method

.method public getButton(I)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    .locals 2
    .parameter "index"

    .prologue
    .line 179
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 185
    .local v0, target:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    goto :goto_0
.end method

.method public hideButton(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setVisibility(I)V

    .line 220
    return-void
.end method

.method public isStateHalf()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 304
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 308
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setSquare(Z)V

    .line 71
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 312
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 320
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->clearButtonList(Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method public setBlankButton(Ljava/lang/Object;Landroid/view/View$OnTouchListener;)V
    .locals 5
    .parameter "tag"
    .parameter "modificationListener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 206
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 207
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setIconResource(I)V

    .line 210
    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 211
    invoke-static {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 212
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    .line 213
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mBlankButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    return-void
.end method

.method public setButton(Ljava/lang/Object;IILandroid/view/View$OnTouchListener;)V
    .locals 4
    .parameter "tag"
    .parameter "iconResourceId"
    .parameter "textResourceId"
    .parameter "modificationListener"

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 195
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setTag(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setIconResource(I)V

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonListener:Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    invoke-static {v0, v3, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    .line 200
    iget v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mIndex:I

    .line 201
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method

.method protected setButtonBackground(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 224
    const v1, 0x7f020050

    .line 226
    .local v1, pressed:I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 227
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 231
    invoke-static {p1, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonPressed(Landroid/view/View;Z)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-static {p1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsController;->setButtonSelected(Landroid/view/View;ZZ)V

    goto :goto_0
.end method

.method public setListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mListener:Landroid/view/View$OnTouchListener;

    .line 84
    return-void
.end method

.method public setSelected(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getButton(I)Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    move-result-object v0

    .line 250
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setSelected(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 251
    return-void
.end method

.method public setSelected(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/VisualFeedbackListener;->setSelected(Landroid/view/View;Ljava/util/ArrayList;Z)V

    .line 246
    return-void
.end method

.method public setup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 88
    const v5, 0x7f0d0034

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, parent:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 90
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 93
    .local v4, widthRatio:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v5, v4

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 98
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 99
    .local v0, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, v7, v7, v7, v7}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setPadding(IIII)V

    .line 101
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_1
    return-void
.end method

.method protected updateLayout(I)V
    .locals 21
    .parameter "selectables"

    .prologue
    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090120

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 117
    .local v13, shortcutImgHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090124

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 119
    .local v14, shortcutTopMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090115

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 123
    .local v11, shortcutBottomMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 124
    .local v6, heightPixels:I
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 125
    .local v16, widthPixels:I
    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 127
    .local v5, displayHeightPixels:I
    add-int v17, v14, v11

    sub-int v17, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    div-int v12, v17, v18

    .line 129
    .local v12, shortcutHeight:I
    sub-int v9, v12, v13

    .line 131
    .local v9, margin:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 133
    .local v10, selectableButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setPadding(IIII)V

    .line 134
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iput v13, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mSelectableButtons:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 136
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v10, v0, v9, v1, v2}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setMargin(IIII)V

    .line 131
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 138
    :cond_0
    const/16 v17, 0x0

    div-int/lit8 v18, v9, 0x2

    const/16 v19, 0x0

    div-int/lit8 v20, v9, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->setMargin(IIII)V

    goto :goto_1

    .line 142
    .end local v10           #selectableButton:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_1
    const/4 v15, 0x0

    .line 143
    .local v15, textVisibility:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mButtonList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;

    .line 144
    .local v4, button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    invoke-virtual {v4, v15}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;->updateLayout(Z)V

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->setButtonBackground(Landroid/view/View;)V

    goto :goto_2

    .line 148
    .end local v4           #button:Lcom/sonyericsson/android/camera3d/view/settings/SettingsButton;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->requestLayout()V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->invalidate()V

    .line 150
    return-void
.end method

.method public updateOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 155
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/settings/SettingsCategory;->mOrientation:I

    .line 156
    return-void
.end method
