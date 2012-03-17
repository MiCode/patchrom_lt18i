.class public Lcom/sonyericsson/android/camera3d/FocusedPosition;
.super Ljava/lang/Object;
.source "FocusedPosition.java"


# static fields
.field private static final FIXED_MULTIFOCUS_RECT_HEIGHT:F = 0.14f

.field private static final FIXED_MULTIFOCUS_RECT_OFFSET_X:F = 0.22f

.field private static final FIXED_MULTIFOCUS_RECT_OFFSET_Y:F = 0.14f

.field private static final FIXED_MULTIFOCUS_RECT_WIDTH:F = 0.11f

.field private static final FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "FocusedPosition"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "\\( *([0-9]+) *, *([0-9]+) *, *([0-9]+) *, *([0-9]+) *\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera3d/FocusedPosition;->FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToRectOnPreview(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    .locals 15
    .parameter "rect"
    .parameter "currentPreviewSize"
    .parameter "maxPictureSize"

    .prologue
    .line 227
    move-object/from16 v0, p2

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float v6, v10, v11

    .line 228
    .local v6, srcAspect:F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float v1, v10, v11

    .line 230
    .local v1, destAspect:F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v10

    .line 231
    .local v3, destWidth:F
    move-object/from16 v0, p1

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v10

    .line 238
    .local v2, destHeight:F
    cmpl-float v10, v1, v6

    if-lez v10, :cond_0

    .line 263
    move-object/from16 v0, p1

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 265
    .local v8, srcToDestRatio:F
    move-object/from16 v0, p2

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    mul-float v7, v10, v8

    .line 267
    .local v7, srcHeight:F
    new-instance v4, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    invoke-direct {v4}, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;-><init>()V

    .line 268
    .local v4, focusInDest:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    iget v10, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    move-object/from16 v0, p2

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iget v11, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v8

    sub-float v12, v7, v2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v12, v12

    iget v13, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float/2addr v13, v14

    move-object/from16 v0, p2

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    mul-float/2addr v13, v8

    float-to-int v13, v13

    invoke-static {v4, v10, v11, v12, v13}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->setData(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;IIII)V

    move-object v5, v4

    .line 330
    .end local v4           #focusInDest:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    .end local v7           #srcHeight:F
    .local v5, focusInDest:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 309
    .end local v5           #focusInDest:Ljava/lang/Object;
    .end local v8           #srcToDestRatio:F
    :cond_0
    move-object/from16 v0, p1

    iget v10, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    move-object/from16 v0, p2

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float v8, v10, v11

    .line 311
    .restart local v8       #srcToDestRatio:F
    move-object/from16 v0, p2

    iget v10, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    mul-float v9, v10, v8

    .line 313
    .local v9, srcWidth:F
    new-instance v4, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    invoke-direct {v4}, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;-><init>()V

    .line 314
    .restart local v4       #focusInDest:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    iget v10, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    move-object/from16 v0, p2

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float/2addr v10, v8

    sub-float v11, v9, v3

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iget v11, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    move-object/from16 v0, p2

    iget v12, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iget v12, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    int-to-float v12, v12

    const/high16 v13, 0x42c8

    div-float/2addr v12, v13

    move-object/from16 v0, p2

    iget v13, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    mul-float/2addr v12, v8

    float-to-int v12, v12

    iget v13, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float/2addr v13, v14

    move-object/from16 v0, p2

    iget v14, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    mul-float/2addr v13, v8

    float-to-int v13, v13

    invoke-static {v4, v10, v11, v12, v13}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->setData(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;IIII)V

    move-object v5, v4

    .line 330
    .restart local v5       #focusInDest:Ljava/lang/Object;
    goto :goto_0
.end method

.method public static getFixedMultiFocusRects(Landroid/hardware/Camera$Size;)[Landroid/graphics/RectF;
    .locals 15
    .parameter "previewSize"

    .prologue
    const v9, 0x3e0f5c29

    const/high16 v14, 0x4000

    const/high16 v13, 0x3f00

    .line 155
    const/high16 v0, 0x3f40

    .line 156
    .local v0, baseAspect:F
    iget v7, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    iget v8, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 157
    .local v1, currentAspect:F
    const v3, 0x3de147ae

    .line 158
    .local v3, focusW:F
    div-float v7, v9, v1

    mul-float v2, v7, v0

    .line 159
    .local v2, focusH:F
    const v4, 0x3e6147ae

    .line 160
    .local v4, focusX:F
    div-float v7, v9, v1

    mul-float v5, v7, v0

    .line 162
    .local v5, focusY:F
    const/4 v7, 0x5

    new-array v6, v7, [Landroid/graphics/RectF;

    .line 163
    .local v6, relativeRects:[Landroid/graphics/RectF;
    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v3, v14

    sub-float v9, v13, v9

    div-float v10, v2, v14

    sub-float v10, v13, v10

    sub-float/2addr v10, v5

    div-float v11, v3, v14

    add-float/2addr v11, v13

    div-float v12, v2, v14

    add-float/2addr v12, v13

    sub-float/2addr v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v6, v7

    .line 168
    const/4 v7, 0x1

    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v3, v14

    sub-float v9, v13, v9

    sub-float/2addr v9, v4

    div-float v10, v2, v14

    sub-float v10, v13, v10

    div-float v11, v3, v14

    add-float/2addr v11, v13

    sub-float/2addr v11, v4

    div-float v12, v2, v14

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v6, v7

    .line 173
    const/4 v7, 0x2

    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v3, v14

    sub-float v9, v13, v9

    div-float v10, v2, v14

    sub-float v10, v13, v10

    div-float v11, v3, v14

    add-float/2addr v11, v13

    div-float v12, v2, v14

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v6, v7

    .line 178
    const/4 v7, 0x3

    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v3, v14

    sub-float v9, v13, v9

    add-float/2addr v9, v4

    div-float v10, v2, v14

    sub-float v10, v13, v10

    div-float v11, v3, v14

    add-float/2addr v11, v13

    add-float/2addr v11, v4

    div-float v12, v2, v14

    add-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v6, v7

    .line 183
    const/4 v7, 0x4

    new-instance v8, Landroid/graphics/RectF;

    div-float v9, v3, v14

    sub-float v9, v13, v9

    div-float v10, v2, v14

    sub-float v10, v13, v10

    add-float/2addr v10, v5

    div-float v11, v3, v14

    add-float/2addr v11, v13

    div-float v12, v2, v14

    add-float/2addr v12, v13

    add-float/2addr v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v6, v7

    .line 188
    return-object v6
.end method

.method public static getFocusAreasOnPreview(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;)Ljava/util/List;
    .locals 9
    .parameter "parameters"
    .parameter "previewSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Landroid/hardware/Camera$Size;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameraextension/CameraExtension$Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/sonyericsson/cameraextension/CameraExtension$Rect;>;"
    invoke-static {p0}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->getMaxPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 96
    .local v2, max:Landroid/hardware/Camera$Size;
    if-nez v2, :cond_1

    .line 97
    const-string v5, "FocusedPosition"

    const-string v6, "failed to get max-picture-size"

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    return-object v4

    .line 103
    :cond_1
    const-string v5, "semc-multi-focus-rects"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, focusRects:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 108
    const-string v5, "FocusedPosition"

    const-string v6, "failed to get semc-multi-focus-rects."

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_2
    sget-object v5, Lcom/sonyericsson/android/camera3d/FocusedPosition;->FOCUS_RECTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 112
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    new-instance v3, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    invoke-direct {v3}, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;-><init>()V

    .line 129
    .local v3, rect:Lcom/sonyericsson/cameraextension/CameraExtension$Rect;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v5, v6, v7, v8}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->setData(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;IIII)V

    .line 134
    invoke-static {v3, p1, v2}, Lcom/sonyericsson/android/camera3d/FocusedPosition;->convertToRectOnPreview(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)Lcom/sonyericsson/cameraextension/CameraExtension$Rect;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getMaxPictureSize(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 3
    .parameter "parameters"

    .prologue
    .line 196
    new-instance v0, Lcom/sonyericsson/android/camera3d/FocusedPosition$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/FocusedPosition$1;-><init>()V

    .line 202
    .local v0, sizeComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_0

    .line 205
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 208
    .end local v1           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFocused(II)Z
    .locals 3
    .parameter "multi"
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 48
    :pswitch_1
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 53
    :pswitch_2
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 58
    :pswitch_3
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 63
    :pswitch_4
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static setData(Lcom/sonyericsson/cameraextension/CameraExtension$Rect;IIII)V
    .locals 0
    .parameter "rect"
    .parameter "inputX"
    .parameter "inputY"
    .parameter "inputWidth"
    .parameter "inputHeight"

    .prologue
    .line 77
    iput p1, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->x:I

    .line 78
    iput p2, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->y:I

    .line 79
    iput p3, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->width:I

    .line 80
    iput p4, p0, Lcom/sonyericsson/cameraextension/CameraExtension$Rect;->height:I

    .line 81
    return-void
.end method
