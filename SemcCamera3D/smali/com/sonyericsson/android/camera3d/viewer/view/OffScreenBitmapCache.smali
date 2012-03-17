.class public Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;
.super Ljava/lang/Object;
.source "OffScreenBitmapCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OffScreenBitmapCache"


# instance fields
.field private final mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 49
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 50
    .local v0, i:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 52
    .end local v0           #i:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 53
    return-void
.end method

.method public release(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, prevBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 111
    :cond_1
    return-void
.end method

.method public reset(Landroid/widget/ImageView;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, prevBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne p3, v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne p2, v3, :cond_3

    .line 76
    move-object v1, v2

    .line 83
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 84
    sget-object v3, Lcom/sonyericsson/android/camera3d/viewer/Constants;->BITMAP_PIXELFORMAT:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    return-object v1

    .line 78
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/view/OffScreenBitmapCache;->mBitmaps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
