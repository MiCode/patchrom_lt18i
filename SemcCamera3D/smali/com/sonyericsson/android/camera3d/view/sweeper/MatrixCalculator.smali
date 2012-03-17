.class public Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator;
.super Ljava/lang/Object;
.source "MatrixCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    }
.end annotation


# static fields
.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final MOVEMENT_NORMAL:I = 0x0

.field public static final MOVEMENT_REVERSE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MatrixCalculater"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static calculate(FLcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;Landroid/graphics/Matrix;)V
    .locals 15
    .parameter "progress"
    .parameter "parameters"
    .parameter "matrix"

    .prologue
    .line 156
    move-object/from16 v8, p1

    .line 157
    .local v8, params:Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;
    if-nez v8, :cond_0

    .line 193
    :goto_0
    return-void

    .line 161
    :cond_0
    const/high16 v12, 0x3f00

    sub-float v12, p0, v12

    const/high16 v13, 0x4000

    mul-float/2addr v12, v13

    float-to-double v6, v12

    .line 162
    .local v6, p:D
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->movementMode:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 163
    neg-double v6, v6

    .line 166
    :cond_1
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAngle:F

    float-to-double v12, v12

    mul-double v1, v12, v6

    .line 167
    .local v1, angleDec:D
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 168
    .local v3, angleRad:D
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    mul-float v10, v12, v13

    .line 169
    .local v10, x:F
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationRadius:F

    mul-float/2addr v12, v13

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->biasZ:F

    mul-float/2addr v12, v13

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionZ:F

    add-float v11, v12, v13

    .line 171
    .local v11, z:F
    neg-double v12, v1

    double-to-float v9, v12

    .line 173
    .local v9, rotate:F
    #getter for: Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->mCamera:Landroid/graphics/Camera;
    invoke-static {v8}, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->access$000(Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;)Landroid/graphics/Camera;

    move-result-object v5

    .line 174
    .local v5, camera:Landroid/graphics/Camera;
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 175
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationAxis:I

    if-nez v12, :cond_2

    .line 176
    const/4 v12, 0x0

    invoke-virtual {v5, v12, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 177
    invoke-virtual {v5, v9}, Landroid/graphics/Camera;->rotateX(F)V

    .line 183
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 186
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    neg-float v12, v12

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    neg-float v13, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 187
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    iget v12, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionX:F

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterX:F

    sub-float/2addr v12, v13

    iget v13, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->positionY:F

    iget v14, v8, Lcom/sonyericsson/android/camera3d/view/sweeper/MatrixCalculator$Parameters;->rotationCenterY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 192
    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v5, v10, v12, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 180
    invoke-virtual {v5, v9}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1
.end method
