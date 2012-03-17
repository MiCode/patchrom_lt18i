.class public Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
.super Landroid/widget/RelativeLayout;
.source "Panorama3dView.java"


# instance fields
.field private mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

.field private mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

.field private mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 53
    return-void
.end method

.method private updateLayout()V
    .locals 12

    .prologue
    const/16 v11, 0xa

    const/4 v10, -0x1

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 169
    const v5, 0x7f0d0021

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    .local v1, leftFrame:Landroid/view/View;
    const v5, 0x7f0d001f

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 171
    .local v3, rightFrame:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getMeasuredHeight()I

    move-result v0

    .line 172
    .local v0, height:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getMeasuredWidth()I

    move-result v4

    .line 173
    .local v4, width:I
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v6, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_TOP_AND_BOTTOM:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-ne v5, v6, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v5, v0, 0x2

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 177
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 178
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v5, v0, 0x2

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 182
    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 183
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 186
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 187
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v9, v7}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    .line 188
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v9, v7}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    .line 219
    :goto_0
    return-void

    .line 190
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    sget-object v6, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_3D_SIDE_BY_SIDE:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    if-ne v5, v6, :cond_1

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 194
    div-int/lit8 v5, v4, 0x2

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 195
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 199
    div-int/lit8 v5, v4, 0x2

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 200
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 203
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 204
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v7, v9}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    .line 205
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v7, v9}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    goto :goto_0

    .line 209
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 210
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 211
    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 212
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 215
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setVisibility(I)V

    .line 216
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v7, v7}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    .line 217
    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v5, v7, v7}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->setStretchAspectRate(FF)V

    goto :goto_0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->clearAnimation()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->clearAnimation()V

    .line 89
    return-void
.end method

.method public commit(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commitWithAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    const/4 p1, 0x0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commitWithAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 114
    :cond_1
    return-void
.end method

.method public commit(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->commit(Z)V

    .line 104
    :cond_1
    return-void
.end method

.method public fitVertical()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->fitVertival()V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->fitVertival()V

    .line 153
    return-void
.end method

.method public forLeftEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    return-object v0
.end method

.method public forRightEye()Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    return-object v0
.end method

.method public getFrameRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 165
    .local v0, rect:Landroid/graphics/RectF;
    return-object v0
.end method

.method public getOutputMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaledImageRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->getScaledImageRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public move(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->move(II)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->move(II)V

    .line 133
    return-void
.end method

.method public moveTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveTo(II)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveTo(II)V

    .line 138
    return-void
.end method

.method public moveXto(I)V
    .locals 1
    .parameter "x"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveXto(I)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveXto(I)V

    .line 143
    return-void
.end method

.method public moveYto(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveYto(I)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->moveYto(I)V

    .line 148
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    .line 75
    const v0, 0x7f0d0020

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    .line 76
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->updateLayout()V

    .line 78
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 224
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->updateLayout()V

    .line 225
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->reset()V

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->reset()V

    .line 83
    return-void
.end method

.method public setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->updateLayout()V

    .line 58
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    return-void
.end method

.method public zoom(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->zoom(F)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->zoom(F)V

    .line 128
    return-void
.end method

.method public zoom(FII)V
    .locals 1
    .parameter "ratio"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mLeftImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->zoom(FII)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->mRightImageView:Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/view/ScalableImageView;->zoom(FII)V

    .line 123
    return-void
.end method
