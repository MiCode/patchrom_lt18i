.class public Lcom/sonyericsson/android/camera3d/view/AfRectangles;
.super Ljava/lang/Object;
.source "AfRectangles.java"


# static fields
.field public static final AF_IND_FAIL:I = 0x3

.field public static final AF_IND_NONE:I = 0x0

.field public static final AF_IND_NORMAL:I = 0x1

.field public static final AF_IND_SUCCESS:I = 0x2

.field public static final AF_MODE_AREA:I = 0x3

.field public static final AF_MODE_MULTI:I = 0x2

.field public static final AF_MODE_NONE:I = 0x0

.field public static final AF_MODE_SINGLE:I = 0x1

.field public static NUM_OF_POSITION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AfRectangles"


# instance fields
.field private mColorMode:I

.field private mIsVideoMode:Z

.field private mMode:I

.field private mMultiResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

.field private mNeutralColor:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

.field private mVisibility:I


# direct methods
.method public constructor <init>([Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;I)V
    .locals 1
    .parameter "rects"
    .parameter "orientation"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mNeutralColor:I

    .line 76
    invoke-virtual {p1}, [Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .line 77
    return-void
.end method

.method private update()V
    .locals 14

    .prologue
    .line 117
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera3d/CameraActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera3d/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera3d/CameraDevice;

    move-result-object v1

    .line 118
    .local v1, device:Lcom/sonyericsson/android/camera3d/CameraDevice;
    if-nez v1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->getFocusRectangles()Ljava/util/List;

    move-result-object v7

    .line 133
    .local v7, relativeRects:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    sget v9, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    if-ge v4, v9, :cond_2

    .line 134
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 135
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    .line 136
    .local v6, relative:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/RectF;->left:F

    iget v10, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewWidth:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v6, Landroid/graphics/RectF;->top:F

    iget v11, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewHeight:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iget v11, v6, Landroid/graphics/RectF;->right:F

    iget v12, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v6, Landroid/graphics/RectF;->bottom:F

    iget v13, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewHeight:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 141
    .local v0, absolute:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aget-object v9, v9, v4

    iget v10, v0, Landroid/graphics/Rect;->left:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setRectTopLeft(II)V

    .line 142
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aget-object v9, v9, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setRectSize(II)V

    .line 133
    .end local v0           #absolute:Landroid/graphics/Rect;
    .end local v6           #relative:Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_2
    const v8, 0x7f020055

    .line 155
    .local v8, succ:I
    const v2, 0x7f020057

    .line 156
    .local v2, fail:I
    iget v5, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mNeutralColor:I

    .line 158
    .local v5, neutral:I
    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mColorMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 159
    const/4 v4, 0x0

    :goto_2
    sget v9, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    if-ge v4, v9, :cond_7

    .line 160
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aget-object v9, v9, v4

    invoke-virtual {v9, v5}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->changeRectangleIcon(I)V

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    :cond_3
    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mColorMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 164
    const/4 v4, 0x0

    :goto_3
    sget v9, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    if-ge v4, v9, :cond_7

    .line 165
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aget-object v9, v9, v4

    invoke-virtual {v9, v2}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->changeRectangleIcon(I)V

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 168
    :cond_4
    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mColorMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 169
    const/4 v4, 0x0

    :goto_4
    sget v9, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->NUM_OF_POSITION:I

    if-ge v4, v9, :cond_7

    .line 170
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMultiResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    iget v9, v9, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->multiFocusState:I

    invoke-static {v9, v4}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->isFocused(II)Z

    move-result v3

    .line 171
    .local v3, focused:Z
    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    aget-object v10, v9, v4

    if-eqz v3, :cond_5

    move v9, v8

    :goto_5
    invoke-virtual {v10, v9}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->changeRectangleIcon(I)V

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v9, v5

    .line 171
    goto :goto_5

    .line 178
    .end local v3           #focused:Z
    :cond_6
    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mColorMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 184
    :cond_7
    iget v9, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    if-nez v9, :cond_8

    .line 185
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    goto/16 :goto_0

    .line 187
    :cond_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getVisibility()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mVisibility:I

    return v0
.end method

.method public onStartAf()V
    .locals 1

    .prologue
    .line 107
    const v0, 0x7f020059

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mNeutralColor:I

    .line 108
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->update()V

    .line 109
    return-void
.end method

.method public setFocusIndicator(IIIIIII)V
    .locals 0
    .parameter "mode"
    .parameter "prevWidth"
    .parameter "prevHeight"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 220
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    .line 221
    iput p2, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewWidth:I

    .line 222
    iput p3, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mPreviewHeight:I

    .line 223
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->update()V

    .line 224
    return-void
.end method

.method public setMode(ZI)V
    .locals 0
    .parameter "isVideo"
    .parameter "visibility"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mIsVideoMode:Z

    .line 302
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .local v0, arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 291
    .local v3, tangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    invoke-virtual {v3, p1, p2}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setSize(II)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v3           #tangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x4

    .line 234
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mIsVideoMode:Z

    if-eqz v4, :cond_2

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .local v0, arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 236
    .local v3, rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    invoke-virtual {v3, v5}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setVisibility(I)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v3           #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    :cond_0
    iput v5, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mVisibility:I

    .line 269
    .end local v0           #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    return-void

    .line 241
    :cond_2
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mVisibility:I

    .line 242
    if-nez p1, :cond_4

    .line 243
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 250
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .restart local v0       #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 252
    .restart local v3       #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setVisibility(I)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    .end local v0           #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    :cond_3
    iget v4, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMode:I

    if-nez v4, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .restart local v0       #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 256
    .restart local v3       #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setVisibility(I)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 260
    .end local v0           #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mRectangles:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;

    .restart local v0       #arr$:[Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_3
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 261
    .restart local v3       #rectangle:Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;
    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera3d/view/TaggedRectangle;->setVisibility(I)V

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public updateAfIndicatorColor(ILcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 1
    .parameter "mode"
    .parameter "multi"

    .prologue
    .line 100
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mColorMode:I

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mMultiResult:Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->mNeutralColor:I

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->update()V

    .line 104
    return-void
.end method

.method public updateOrientation(I)V
    .locals 0
    .parameter "orient"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/AfRectangles;->update()V

    .line 87
    return-void
.end method
