.class public Lmiui/graphics/drawable/GifAnimationDrawable;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "GifAnimationDrawable.java"


# instance fields
.field private mMaxDecodeSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 17
    const/high16 v0, 0x10

    iput v0, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mMaxDecodeSize:I

    return-void
.end method


# virtual methods
.method public load(Landroid/content/res/Resources;Ljava/io/InputStream;)Z
    .locals 7
    .parameter "res"
    .parameter "inputStream"

    .prologue
    const/4 v6, 0x0

    .line 20
    if-nez p2, :cond_0

    move v4, v6

    .line 37
    :goto_0
    return v4

    .line 23
    :cond_0
    new-instance v1, Lmiui/util/GifDecoder;

    invoke-direct {v1}, Lmiui/util/GifDecoder;-><init>()V

    .line 24
    .local v1, gifDecoder:Lmiui/util/GifDecoder;
    iget v4, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mMaxDecodeSize:I

    invoke-virtual {v1, v4}, Lmiui/util/GifDecoder;->setMaxDecodeSize(I)V

    .line 25
    invoke-virtual {v1, p2}, Lmiui/util/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 26
    .local v3, status:I
    if-eqz v3, :cond_1

    move v4, v6

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1}, Lmiui/util/GifDecoder;->getFrameCount()I

    move-result v0

    .line 30
    .local v0, count:I
    if-lez v0, :cond_3

    .line 31
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 32
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Lmiui/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lmiui/util/GifDecoder;->getDelay(I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lmiui/graphics/drawable/GifAnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p0, v6}, Lmiui/graphics/drawable/GifAnimationDrawable;->setOneShot(Z)V

    .line 35
    invoke-virtual {p0, v6}, Lmiui/graphics/drawable/GifAnimationDrawable;->selectDrawable(I)Z

    .line 37
    .end local v2           #i:I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public load(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 5
    .parameter "res"
    .parameter "gifPath"

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p2, :cond_0

    move v3, v4

    .line 56
    :goto_0
    return v3

    .line 45
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, gifFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 47
    goto :goto_0

    .line 51
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    .local v2, inputStream:Ljava/io/FileInputStream;
    invoke-virtual {p0, p1, v2}, Lmiui/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 54
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 55
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v3, v4

    .line 56
    goto :goto_0
.end method

.method public setMaxDecodeSize(I)V
    .locals 0
    .parameter "maxDecodeSize"

    .prologue
    .line 61
    iput p1, p0, Lmiui/graphics/drawable/GifAnimationDrawable;->mMaxDecodeSize:I

    .line 62
    return-void
.end method
