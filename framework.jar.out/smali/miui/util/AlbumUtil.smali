.class public Lmiui/util/AlbumUtil;
.super Ljava/lang/Object;
.source "AlbumUtil.java"


# static fields
.field private static final ASPECT_RADIO_THRESHOLD:F = 0.1f


# instance fields
.field private final mAlbumShadowHeight:I

.field private mAspectRatio:F

.field private mContext:Landroid/content/Context;

.field private final mRotateMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "albumShadowHeight"

    .prologue
    const/high16 v2, 0x3f80

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lmiui/util/AlbumUtil;->mContext:Landroid/content/Context;

    .line 36
    iput p2, p0, Lmiui/util/AlbumUtil;->mAlbumShadowHeight:I

    .line 38
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/util/AlbumUtil;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 39
    iget-object v0, p0, Lmiui/util/AlbumUtil;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 40
    iput v2, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    .line 41
    return-void
.end method

.method private getAspectRadio(Landroid/graphics/Bitmap;)F
    .locals 2
    .parameter "bm"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public cutToDefauleAspectRadio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bm"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lmiui/util/AlbumUtil;->getAspectRadio(Landroid/graphics/Bitmap;)F

    move-result v7

    .line 52
    .local v7, radio:F
    iget v0, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3dcccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move-object v0, p1

    .line 74
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 57
    .local v8, rawHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 58
    .local v9, rawWidth:I
    const/4 v3, 0x0

    .line 59
    .local v3, width:I
    const/4 v4, 0x0

    .line 61
    .local v4, height:I
    iget v0, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 62
    move v4, v8

    .line 63
    int-to-float v0, v8

    iget v2, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 69
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 70
    .local v10, ret:Landroid/graphics/Bitmap;
    if-eq v10, p1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v0, v10

    .line 74
    goto :goto_0

    .line 65
    .end local v10           #ret:Landroid/graphics/Bitmap;
    :cond_2
    move v3, v9

    .line 66
    int-to-float v0, v9

    iget v2, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v4, v0

    goto :goto_1
.end method

.method public getAlbumBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "uri"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, bm:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lmiui/util/AlbumUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 137
    .local v6, res:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 138
    const/4 v4, 0x0

    .line 140
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 142
    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 143
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 144
    const/4 v7, 0x0

    invoke-static {v4, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    if-eqz v4, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 170
    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #in:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 145
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 148
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "r"

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 149
    .local v5, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 151
    .local v3, fd:Ljava/io/FileDescriptor;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    .end local v3           #fd:Ljava/io/FileDescriptor;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    if-nez v7, :cond_2

    .line 154
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 162
    .end local v5           #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 163
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 165
    :catch_1
    move-exception v7

    goto :goto_0

    .line 161
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    .line 162
    if-eqz v4, :cond_3

    .line 163
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    :cond_3
    :goto_2
    throw v7

    .line 165
    .restart local v0       #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v0           #bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v8

    goto :goto_2

    .line 156
    .restart local v2       #ex:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method public getAlbumShadow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bm"

    .prologue
    const/4 v0, 0x0

    .line 78
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 82
    .local v7, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 84
    .local v3, width:I
    if-lez v7, :cond_0

    if-lez v3, :cond_0

    .line 88
    iget v4, p0, Lmiui/util/AlbumUtil;->mAlbumShadowHeight:I

    .line 89
    .local v4, scaledHeight:I
    iget v0, p0, Lmiui/util/AlbumUtil;->mAlbumShadowHeight:I

    sub-int v2, v7, v0

    .line 90
    .local v2, y:I
    if-gtz v2, :cond_2

    .line 91
    const/4 v2, 0x0

    .line 92
    move v4, v7

    .line 95
    :cond_2
    const/4 v1, 0x0

    iget-object v5, p0, Lmiui/util/AlbumUtil;->mRotateMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 96
    .local v8, ret:Landroid/graphics/Bitmap;
    const/16 v0, 0x32

    invoke-virtual {p0, v8, v0}, Lmiui/util/AlbumUtil;->setAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v0, v8

    .line 97
    goto :goto_0
.end method

.method public getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "radius"

    .prologue
    const/4 v9, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 175
    const/4 v6, 0x0

    .line 194
    :goto_0
    return-object v6

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 180
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 182
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 186
    .local v5, rectF:Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 188
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    invoke-virtual {v0, v5, p2, p2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 191
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 192
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object v6, v2

    .line 194
    goto :goto_0
.end method

.method public setAlpha(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "sourceImg"
    .parameter "maxAlpha"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lmiui/util/AlbumUtil;->setAlpha(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "sourceImg"
    .parameter "startY"
    .parameter "endY"
    .parameter "maxAlpha"
    .parameter "isIncrease"

    .prologue
    .line 105
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move-object/from16 v14, p1

    .line 130
    .end local p1
    .local v14, sourceImg:Landroid/graphics/Bitmap;
    :goto_0
    return-object v14

    .line 108
    .end local v14           #sourceImg:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 109
    .local v5, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 110
    .local v9, height:I
    move/from16 v0, p3

    move v1, v9

    if-le v0, v1, :cond_2

    move-object/from16 v14, p1

    .line 111
    .end local p1
    .restart local v14       #sourceImg:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 113
    .end local v14           #sourceImg:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_2
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 114
    .local v3, argb:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 115
    sub-int v11, p3, p2

    .line 117
    .local v11, deltaY:I
    move/from16 v12, p2

    .local v12, i:I
    :goto_1
    move v0, v12

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 118
    const/4 v10, 0x0

    .line 119
    .local v10, alpha:I
    if-eqz p5, :cond_3

    .line 120
    sub-int v2, v12, p2

    mul-int v2, v2, p4

    div-int v10, v2, v11

    .line 124
    :goto_2
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    if-ge v13, v5, :cond_4

    .line 125
    mul-int v2, v12, v5

    add-int/2addr v2, v13

    shl-int/lit8 v4, v10, 0x18

    mul-int v6, v12, v5

    add-int/2addr v6, v13

    aget v6, v3, v6

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, v3, v2

    .line 124
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 122
    .end local v13           #j:I
    :cond_3
    sub-int v2, v12, p2

    mul-int v2, v2, p4

    div-int/2addr v2, v11

    sub-int v10, p4, v2

    goto :goto_2

    .line 117
    .restart local v13       #j:I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 128
    .end local v10           #alpha:I
    .end local v13           #j:I
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object/from16 v14, p1

    .line 130
    .end local p1
    .restart local v14       #sourceImg:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public setAspectRadio(F)V
    .locals 0
    .parameter "aspectRadio"

    .prologue
    .line 48
    iput p1, p0, Lmiui/util/AlbumUtil;->mAspectRatio:F

    .line 49
    return-void
.end method
