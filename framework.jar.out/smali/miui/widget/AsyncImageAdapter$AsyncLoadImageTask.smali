.class public Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;
.source "AsyncImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AsyncImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadImageTask"
.end annotation


# instance fields
.field private mScaled:Z

.field private mTargetHeight:I

.field private mTargetWidth:I

.field final synthetic this$0:Lmiui/widget/AsyncImageAdapter;


# direct methods
.method public constructor <init>(Lmiui/widget/AsyncImageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    .local p0, this:Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;,"Lmiui/widget/AsyncImageAdapter<TT;>.AsyncLoadImageTask;"
    iput-object p1, p0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->this$0:Lmiui/widget/AsyncImageAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .parameter "key"

    .prologue
    .line 37
    .local p0, this:Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;,"Lmiui/widget/AsyncImageAdapter<TT;>.AsyncLoadImageTask;"
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_1

    .line 38
    :cond_0
    const/16 v19, 0x0

    .line 88
    .end local p1
    :goto_0
    return-object v19

    .line 40
    .restart local p1
    :cond_1
    const/4 v13, 0x0

    .line 42
    .local v13, scaledBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 43
    .local v5, boundsOptions:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object v1, v5

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 44
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 46
    move-object v0, v5

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 47
    .local v16, width:I
    iget v8, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 49
    .local v8, height:I
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    .local v6, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x0

    .line 53
    .local v11, originalBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mScaled:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 54
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetWidth:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 55
    .local v10, minWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetHeight:I

    move/from16 v19, v0

    move v0, v8

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 57
    .local v9, minHeight:I
    sub-int v19, v16, v10

    div-int/lit8 v17, v19, 0x2

    .line 58
    .local v17, x:I
    sub-int v19, v8, v9

    div-int/lit8 v18, v19, 0x2

    .line 60
    .local v18, y:I
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 62
    if-eqz v11, :cond_2

    .line 63
    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    move v3, v10

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 85
    .end local v9           #minHeight:I
    .end local v10           #minWidth:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_2
    :goto_1
    if-eq v13, v11, :cond_3

    if-eqz v11, :cond_3

    .line 86
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object/from16 v19, v13

    .line 88
    goto :goto_0

    .line 66
    .restart local p1
    :cond_4
    const/high16 v19, 0x3f80

    const/high16 v20, 0x3f80

    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 67
    .local v12, ratio:F
    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move v0, v8

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move v0, v12

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 69
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move v15, v0

    .line 70
    .local v15, scaledWidth:I
    move v0, v8

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move v14, v0

    .line 72
    .local v14, scaledHeight:I
    const-wide/high16 v19, 0x4000

    const/high16 v21, 0x3f80

    div-float v21, v21, v12

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->log(D)D

    move-result-wide v21

    const-wide/high16 v23, 0x4000

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->log(D)D

    move-result-wide v23

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object v1, v6

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 73
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 75
    if-eqz v11, :cond_2

    .line 76
    const/16 v19, 0x0

    move-object v0, v11

    move v1, v15

    move v2, v14

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    goto/16 :goto_1

    .line 79
    .end local v12           #ratio:F
    .end local v14           #scaledHeight:I
    .end local v15           #scaledWidth:I
    :catch_0
    move-exception v19

    move-object/from16 v7, v19

    .line 80
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 81
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v19

    move-object/from16 v7, v19

    .line 82
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public setScaled(Z)V
    .locals 0
    .parameter "scaled"

    .prologue
    .line 32
    .local p0, this:Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;,"Lmiui/widget/AsyncImageAdapter<TT;>.AsyncLoadImageTask;"
    iput-boolean p1, p0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mScaled:Z

    .line 33
    return-void
.end method

.method public setTargetSize(II)V
    .locals 0
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    .line 27
    .local p0, this:Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;,"Lmiui/widget/AsyncImageAdapter<TT;>.AsyncLoadImageTask;"
    iput p1, p0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetWidth:I

    .line 28
    iput p2, p0, Lmiui/widget/AsyncImageAdapter$AsyncLoadImageTask;->mTargetHeight:I

    .line 29
    return-void
.end method
