.class public Lcom/sonyericsson/android/camera3d/view/NumberImageView;
.super Lcom/sonyericsson/android/camera3d/view/RotatableImageView;
.source "NumberImageView.java"


# static fields
.field private static final NON_FIGURE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "NumberImageView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mNumber:I

.field private mNumberImageIdTable:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumber:I

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->createNumberImageTable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumber:I

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->createNumberImageTable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumber:I

    .line 49
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 52
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->createNumberImageTable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method private createBitmap()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 121
    iget v2, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumber:I

    .line 123
    .local v2, num:I
    rem-int/lit8 v3, v2, 0xa

    .line 124
    .local v3, onesDigit:I
    div-int/lit8 v6, v2, 0xa

    .line 125
    .local v6, tenthsDigit:I
    if-nez v6, :cond_0

    .line 126
    const/16 v6, 0xa

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    const/16 v11, 0xa

    invoke-virtual {v10, v6, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 132
    .local v7, tenthsDigitImage:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 134
    .local v4, onesDigitImage:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int v8, v9, v10

    .line 135
    .local v8, width:I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 138
    .local v1, height:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v5, p:Landroid/graphics/Paint;
    invoke-virtual {v0, v7, v12, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v4, v9, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected createNumberImageTable(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 78
    sget-object v2, Lcom/sonyericsson/android/camera3d/R$styleable;->NumberImageView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 81
    .local v1, tableId:I
    if-nez v1, :cond_0

    .line 82
    const-string v2, "NumberImageView"

    const-string v3, "Can not get drawableTable."

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumberImageIdTable:Landroid/content/res/TypedArray;

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public setNumber(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 108
    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "num is over 99."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput p1, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mNumber:I

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->updateBitmap()V

    .line 114
    return-void
.end method

.method public setOrientationSensor(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->updateBitmap()V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera3d/view/RotatableImageView;->setSensorOrientation(I)V

    .line 100
    return-void
.end method

.method public updateBitmap()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->createBitmap()V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/view/NumberImageView;->requestLayout()V

    .line 156
    return-void
.end method
