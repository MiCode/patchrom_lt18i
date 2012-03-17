.class public Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;
.super Landroid/widget/RelativeLayout;
.source "SweepProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SweepProgress"


# instance fields
.field private mCurrentParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mLastDirection:Ljava/lang/String;

.field private mMessage:Landroid/widget/TextView;

.field mProgress:F

.field private mSweepProgressBackground:Landroid/widget/ImageView;

.field private mSweepProgressFrame:Landroid/widget/ImageView;

.field public sDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mInvalidateRect:Landroid/graphics/Rect;

    .line 83
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    .line 218
    const/4 v1, 0x0

    .line 220
    .local v1, transformed:Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressFrame:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_0

    .line 222
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 223
    .local v0, matrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mProgress:F

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mCurrentParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator;->calculate(FLcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Landroid/graphics/Matrix;)V

    .line 224
    const/4 v1, 0x1

    .line 227
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return v1
.end method

.method public hideProgress()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->setVisibility(I)V

    .line 209
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 145
    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressFrame:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressBackground:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mMessage:Landroid/widget/TextView;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->setStaticTransformationsEnabled(Z)V

    .line 153
    return-void
.end method

.method public setup(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 88
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 137
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 105
    .local v4, frame:Landroid/graphics/drawable/Drawable;
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 108
    .local v7, background:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .line 109
    .local v0, params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const v9, 0x7f0c0092

    .line 110
    .local v9, textID:I
    new-instance v8, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;

    invoke-direct {v8, v4, v7, v0, v9}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 111
    .local v8, data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    const-string v3, "LEFT_2_RIGHT"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v0           #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .line 115
    .restart local v0       #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const v9, 0x7f0c0093

    .line 116
    new-instance v8, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;

    .end local v8           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    invoke-direct {v8, v4, v7, v0, v9}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 117
    .restart local v8       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    const-string v3, "RIGHT_2_LEFT"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 122
    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 125
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v0           #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .line 126
    .restart local v0       #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const v9, 0x7f0c0094

    .line 127
    new-instance v8, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;

    .end local v8           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    invoke-direct {v8, v4, v7, v0, v9}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 128
    .restart local v8       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    const-string v3, "BOTTOM_2_TOP"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .end local v0           #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .line 132
    .restart local v0       #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    const v9, 0x7f0c0095

    .line 133
    new-instance v8, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;

    .end local v8           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    invoke-direct {v8, v4, v7, v0, v9}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;I)V

    .line 134
    .restart local v8       #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    const-string v3, "TOP_2_BOTTOM"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    .line 160
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->setVisibility(I)V

    .line 161
    const/4 v5, 0x0

    iput v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mProgress:F

    .line 165
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mLastDirection:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mLastDirection:Ljava/lang/String;

    .line 169
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->sDataMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;

    .line 172
    .local v0, data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mParameters:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mCurrentParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    .line 175
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressFrame:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mFrameImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressBackground:Landroid/widget/ImageView;

    iget-object v6, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 180
    .local v4, w:I
    iget-object v5, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 181
    .local v1, h:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mCurrentParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    float-to-int v5, v5

    div-int/lit8 v6, v4, 0x2

    sub-int v2, v5, v6

    .line 182
    .local v2, px:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mCurrentParams:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    iget v5, v5, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    float-to-int v5, v5

    div-int/lit8 v6, v1, 0x2

    sub-int v3, v5, v6

    .line 183
    .local v3, py:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mSweepProgressBackground:Landroid/widget/ImageView;

    invoke-virtual {v5, v2, v3, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 186
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mInvalidateRect:Landroid/graphics/Rect;

    add-int v6, v2, v4

    add-int v7, v3, v1

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mMessage:Landroid/widget/TextView;

    iget v6, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;->mTextId:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .end local v0           #data:Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress$Data;
    .end local v1           #h:I
    .end local v2           #px:I
    .end local v3           #py:I
    .end local v4           #w:I
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->invalidate(Landroid/graphics/Rect;)V

    .line 193
    return-void
.end method

.method public updateProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 200
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mProgress:F

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/sweeper/SweepProgress;->invalidate(Landroid/graphics/Rect;)V

    .line 202
    return-void
.end method
