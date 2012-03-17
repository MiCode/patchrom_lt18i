.class public Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
.super Ljava/lang/Object;
.source "MatrixCalculator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public biasZ:F

.field private mCamera:Landroid/graphics/Camera;

.field public movementMode:I

.field public positionX:F

.field public positionY:F

.field public positionZ:F

.field public rotationAngle:F

.field public rotationAxis:I

.field public rotationCenterX:F

.field public rotationCenterY:F

.field public rotationRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->mCamera:Landroid/graphics/Camera;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V
    .locals 1
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "image"
    .parameter "isHorizontal"
    .parameter "isReverse"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->mCamera:Landroid/graphics/Camera;

    .line 62
    invoke-virtual/range {p0 .. p6}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->setup(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;)Landroid/graphics/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->mCamera:Landroid/graphics/Camera;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v1, params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    .line 77
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    .line 78
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    .line 79
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->biasZ:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->biasZ:F

    .line 80
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAngle:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAngle:F

    .line 81
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    .line 82
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAxis:I

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAxis:I

    .line 83
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    .line 84
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    .line 85
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->movementMode:I

    iput v2, v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->movementMode:I

    .line 87
    return-object v1

    .line 71
    .end local v1           #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;-><init>()V

    .restart local v1       #params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->clone()Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public setup(Landroid/content/res/Resources;IILandroid/graphics/drawable/Drawable;ZZ)V
    .locals 16
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "image"
    .parameter "isHorizontal"
    .parameter "isReverse"

    .prologue
    .line 99
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    .line 100
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    .line 103
    div-int/lit8 v4, p2, 0x2

    .line 104
    .local v4, cx:I
    div-int/lit8 v5, p3, 0x2

    .line 107
    .local v5, cy:I
    move-object/from16 v12, p1

    .line 114
    .local v12, res:Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 115
    const/4 v2, 0x1

    .line 116
    .local v2, axis:I
    const v14, 0x7f090141

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v11, v14

    .line 117
    .local v11, radius:F
    const v14, 0x7f01001b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v1, v14

    .line 118
    .local v1, angle:F
    const v14, 0x7f090142

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v6, v14

    .line 119
    .local v6, marginBottom:F
    const v14, 0x7f090143

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v10, v14

    .line 120
    .local v10, pz:F
    const v14, 0x7f01001c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c8

    div-float v3, v14, v15

    .line 121
    .local v3, biasZ:F
    int-to-float v14, v4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    .line 122
    move/from16 v0, p3

    int-to-float v14, v0

    sub-float/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    .line 138
    .end local v6           #marginBottom:F
    :goto_0
    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v14, v11

    mul-float v9, v14, v3

    .line 140
    .local v9, offsetZ:F
    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAxis:I

    .line 141
    sub-float v14, v10, v9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    .line 142
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    .line 143
    move-object/from16 v0, p0

    iput v1, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAngle:F

    .line 144
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->biasZ:F

    .line 146
    if-eqz p6, :cond_1

    .line 147
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->movementMode:I

    .line 151
    :goto_1
    return-void

    .line 126
    .end local v1           #angle:F
    .end local v2           #axis:I
    .end local v3           #biasZ:F
    .end local v9           #offsetZ:F
    .end local v10           #pz:F
    .end local v11           #radius:F
    :cond_0
    const/4 v2, 0x0

    .line 127
    .restart local v2       #axis:I
    const v14, 0x7f090144

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v11, v14

    .line 128
    .restart local v11       #radius:F
    const v14, 0x7f01001d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v1, v14

    .line 129
    .restart local v1       #angle:F
    const v14, 0x7f090145

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v7, v14

    .line 130
    .local v7, marginLeft:F
    const v14, 0x7f090146

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v8, v14

    .line 131
    .local v8, marginTop:F
    const v14, 0x7f090147

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    int-to-float v10, v14

    .line 132
    .restart local v10       #pz:F
    const v14, 0x7f01001e

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x42c8

    div-float v3, v14, v15

    .line 133
    .restart local v3       #biasZ:F
    div-int/lit8 v13, p2, 0x8

    .line 134
    .local v13, rightPaneWidth:I
    move/from16 v0, p2

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    sub-float/2addr v14, v15

    int-to-float v15, v13

    sub-float/2addr v14, v15

    sub-float/2addr v14, v7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    .line 135
    int-to-float v14, v5

    add-float/2addr v14, v8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    goto :goto_0

    .line 149
    .end local v7           #marginLeft:F
    .end local v8           #marginTop:F
    .end local v13           #rightPaneWidth:I
    .restart local v9       #offsetZ:F
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->movementMode:I

    goto :goto_1
.end method
