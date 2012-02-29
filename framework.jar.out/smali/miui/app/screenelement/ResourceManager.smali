.class public Lmiui/app/screenelement/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/ResourceManager$ResourceLoader;,
        Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResourceManager"


# instance fields
.field private final mBitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/screenelement/ResourceManager$BitmapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFailedBitmaps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mNinePatches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/NinePatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceLoader:Lmiui/app/screenelement/ResourceManager$ResourceLoader;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/ResourceManager$ResourceLoader;)V
    .locals 1
    .parameter "resourceLoader"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    .line 41
    iput-object p1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceManager$ResourceLoader;

    .line 42
    return-void
.end method

.method private getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 4
    .parameter "src"

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    .line 118
    :goto_0
    return-object v1

    .line 101
    :cond_0
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    .line 102
    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceManager$ResourceLoader;

    invoke-interface {v1, p1}, Lmiui/app/screenelement/ResourceManager$ResourceLoader;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object v1, v0

    .line 118
    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mFailedBitmaps:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to load image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mBitmaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "src"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v0

    .line 58
    .local v0, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "res"
    .parameter "src"

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lmiui/app/screenelement/ResourceManager;->getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    move-result-object v6

    .line 63
    .local v6, info:Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v2, v6, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    iget-object v4, v6, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 1
    .parameter "src"

    .prologue
    .line 54
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceManager$ResourceLoader;

    invoke-interface {v0, p1}, Lmiui/app/screenelement/ResourceManager$ResourceLoader;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    return-object v0
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmiui/app/screenelement/ResourceManager;->mResourceLoader:Lmiui/app/screenelement/ResourceManager$ResourceLoader;

    invoke-interface {v0}, Lmiui/app/screenelement/ResourceManager$ResourceLoader;->getManifestRoot()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getMaskBufferBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object v0, v1

    .line 46
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 47
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lmiui/app/screenelement/ResourceManager;->mMaskBitmap:Ljava/lang/ref/SoftReference;

    .line 50
    :cond_1
    return-object v0

    .line 45
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;
    .locals 4
    .parameter "src"

    .prologue
    .line 76
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/NinePatch;

    .line 77
    .local v1, ret:Landroid/graphics/NinePatch;
    if-nez v1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lmiui/app/screenelement/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v1, Landroid/graphics/NinePatch;

    .end local v1           #ret:Landroid/graphics/NinePatch;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 81
    .restart local v1       #ret:Landroid/graphics/NinePatch;
    iget-object v2, p0, Lmiui/app/screenelement/ResourceManager;->mNinePatches:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_0
    return-object v1
.end method
