.class public final Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;
.super Ljava/lang/Object;
.source "CoordinateUtil.java"


# static fields
.field private static final ROUNDING:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CoordinateUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAbsolutePositionToRelative(II)I
    .locals 2
    .parameter "position"
    .parameter "length"

    .prologue
    .line 227
    mul-int/lit8 v1, p0, 0x64

    div-int v0, v1, p1

    .line 230
    .local v0, relative:I
    return v0
.end method

.method public static convertDevToView(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .parameter "srcArea"
    .parameter "windowArea"
    .parameter "orient"

    .prologue
    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 167
    .local v0, dstRect:Landroid/graphics/Rect;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 169
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 171
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 173
    :cond_0
    return-object v0
.end method

.method public static convertDipToPx(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "dip"

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .local v0, density:F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 250
    .local v1, px:I
    return v1
.end method

.method public static convertDipToPx(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .parameter "context"
    .parameter "dip"

    .prologue
    const/high16 v4, 0x3f00

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 264
    .local v0, density:F
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 266
    .local v1, px:Landroid/graphics/Point;
    return-object v1
.end method

.method public static convertDipToPx(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "context"
    .parameter "dip"

    .prologue
    const/high16 v6, 0x3f00

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 281
    .local v0, density:F
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    .local v1, px:Landroid/graphics/Rect;
    return-object v1
.end method

.method public static convertFacePositionForFaceDetect(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 6
    .parameter "face"
    .parameter "rectPicture"
    .parameter "rectPreview"
    .parameter "orient"

    .prologue
    .line 211
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v2, v2, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    iget-object v3, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v3, v3, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    iget-object v4, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v4, v4, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v4, v4, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    iget-object v5, p0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult$FaceData;->position:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    iget v5, v5, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 216
    .local v0, rectFace:Landroid/graphics/Rect;
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->scale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->convertDevToView(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public static convertPxToDip(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "px"

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 299
    .local v0, density:F
    int-to-float v2, p1

    div-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 300
    .local v1, dip:I
    return v1
.end method

.method public static convertPxToDip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .parameter "context"
    .parameter "px"

    .prologue
    const/high16 v4, 0x3f00

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 314
    .local v0, density:F
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 316
    .local v1, dip:Landroid/graphics/Point;
    return-object v1
.end method

.method public static convertPxToDip(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .parameter "context"
    .parameter "px"

    .prologue
    const/high16 v6, 0x3f00

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 332
    .local v0, density:F
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 335
    .local v1, dip:Landroid/graphics/Rect;
    return-object v1
.end method

.method public static convertViewToDev(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .parameter "srcArea"
    .parameter "windowArea"
    .parameter "orient"

    .prologue
    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 200
    .local v0, dstRect:Landroid/graphics/Rect;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 201
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 203
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 206
    :cond_0
    return-object v0
.end method

.method public static isInScreen(Landroid/graphics/Rect;I)Z
    .locals 5
    .parameter "check"
    .parameter "orient"

    .prologue
    const/16 v4, 0x356

    const/16 v3, 0x1e0

    const/4 v1, 0x0

    .line 117
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    .local v0, rect:Landroid/graphics/Rect;
    :goto_0
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->isInScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    return v1

    .line 120
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static isInScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "obj"
    .parameter "screen"

    .prologue
    .line 136
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isInScreen(Landroid/graphics/Rect;Landroid/view/View;)Z
    .locals 2
    .parameter "obj"
    .parameter "root"

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v0, screen:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 132
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/util/CoordinateUtil;->isInScreen(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public static scale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "original"
    .parameter "base"
    .parameter "disp"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 54
    .local v4, origHeight:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 55
    .local v5, origWidth:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 56
    .local v6, showHeight:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 66
    .local v7, showWidth:I
    iget v8, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v8, v6

    div-int v3, v8, v4

    .line 67
    .local v3, dispTop:I
    iget v8, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v8, v7

    div-int v1, v8, v5

    .line 68
    .local v1, dispLeft:I
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v8, v6

    div-int v0, v8, v4

    .line 69
    .local v0, dispBottom:I
    iget v8, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v8, v7

    div-int v2, v8, v5

    .line 77
    .local v2, dispRight:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static scaleToDev(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 23
    .parameter "src"
    .parameter "picture"
    .parameter "disp"

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 82
    .local v10, origHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 83
    .local v11, origWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 84
    .local v16, showHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 88
    .local v17, showWidth:I
    int-to-double v0, v11

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    .line 89
    .local v14, ratio_w:D
    int-to-double v0, v10

    move-wide/from16 v18, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 100
    .local v12, ratio_h:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v8, v18, v12

    .line 101
    .local v8, devTop:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v4, v18, v14

    .line 102
    .local v4, devLeft:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v2, v18, v12

    .line 103
    .local v2, devBottom:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v18, v14

    .line 112
    .local v6, devRight:D
    new-instance v18, Landroid/graphics/Rect;

    double-to-int v0, v4

    move/from16 v19, v0

    double-to-int v0, v8

    move/from16 v20, v0

    double-to-int v0, v6

    move/from16 v21, v0

    double-to-int v0, v2

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v18
.end method
