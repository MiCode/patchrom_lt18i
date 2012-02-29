.class public Lmiui/util/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field private static sAsiaLangPattern:Ljava/util/regex/Pattern;

.field private static suffix:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u8001\u5e08"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u5148\u751f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u8001\u677f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u4ed4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u624b\u673a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u53d4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u963f\u59e8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u5b85"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u4f2f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u4f2f\u6bcd"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u4f2f\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u54e5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u59d0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u5f1f"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u59b9"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u8205"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u59d1"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u4e3b\u4efb"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u7ecf\u7406"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u5de5\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u540c\u4e8b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u5f8b\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u53f8\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\u5e08\u5085"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\u5e08\u7236"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\u7237"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\u5976"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\u4e2d\u4ecb"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\u8463"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\u603b"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\u592a\u592a"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "\u4fdd\u59c6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "\u67d0"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\u79d8\u4e66"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\u5904\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\u5c40\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\u73ed\u957f"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\u5144"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\u52a9\u7406"

    aput-object v2, v0, v1

    sput-object v0, Lmiui/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    .line 31
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/util/GraphicsUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNameBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "src"
    .parameter "name"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 43
    if-gtz p2, :cond_0

    .line 44
    const/4 p0, 0x0

    .line 98
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .line 46
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    if-gtz p3, :cond_1

    .line 47
    const/4 p0, 0x0

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 p0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/GraphicsUtils;->getWordFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, word:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 53
    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 55
    .end local v0           #word:Ljava/lang/String;
    .local v3, word:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    const/4 p0, 0x0

    goto :goto_0

    .line 58
    :cond_4
    move-object v0, p0

    .line 59
    .local v0, bmpSrc:Landroid/graphics/Bitmap;
    const/4 p0, 0x0

    invoke-static {v0, p2, p3, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .end local p0
    move-result-object p0

    .line 60
    .local p0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    invoke-static {p1}, Lmiui/util/GraphicsUtils;->isChinese(Ljava/lang/String;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_5

    .line 65
    invoke-static {p2, p3}, Landroid/util/MathUtils;->min(II)F

    move-result p1

    const p4, 0x3f666666

    mul-float/2addr p1, p4

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 66
    .end local p4
    int-to-double p1, p2

    const-wide v4, 0x3fa999999999999aL

    mul-double/2addr p1, v4

    double-to-int p1, p1

    int-to-float p1, p1

    int-to-double p2, p3

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr p2, v4

    double-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 68
    .restart local p4
    :cond_5
    const-string p1, " |\\.|-|,|\\(|\\)|\uff08|\uff09|\u2014"

    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, nameStrs:[Ljava/lang/String;
    if-nez v0, :cond_6

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 71
    const/4 p0, 0x0

    goto :goto_0

    .line 73
    :cond_6
    const/4 p1, 0x0

    .line 74
    .local p1, first:Ljava/lang/String;
    const/4 v3, 0x0

    .line 75
    .local v3, second:Ljava/lang/String;
    const/4 p4, 0x0

    .local p4, i:I
    :goto_1
    array-length v4, v0

    if-ge p4, v4, :cond_9

    .line 76
    aget-object v4, v0, p4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 77
    if-nez p1, :cond_8

    .line 78
    aget-object p1, v0, p4

    .end local p1           #first:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 75
    .restart local p1       #first:Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 79
    :cond_8
    if-nez v3, :cond_9

    .line 80
    aget-object v3, v0, p4

    .end local v3           #second:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #second:Ljava/lang/String;
    goto :goto_2

    .line 86
    :cond_9
    if-nez p1, :cond_a

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 89
    :cond_a
    if-nez v3, :cond_b

    .line 90
    invoke-static {p2, p3}, Landroid/util/MathUtils;->min(II)F

    move-result p4

    .end local p4           #i:I
    const v0, 0x3f666666

    mul-float/2addr p4, v0

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    .end local v0           #nameStrs:[Ljava/lang/String;
    int-to-double v3, p2

    const-wide v5, 0x3fa999999999999aL

    mul-double/2addr v3, v5

    double-to-int p2, v3

    int-to-float p2, p2

    int-to-double p3, p3

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr p3, v3

    double-to-int p3, p3

    int-to-float p3, p3

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 93
    .restart local v0       #nameStrs:[Ljava/lang/String;
    .restart local p4       #i:I
    :cond_b
    invoke-static {p2, p3}, Landroid/util/MathUtils;->min(II)F

    move-result p4

    .end local p4           #i:I
    const v0, 0x3ecccccd

    mul-float/2addr p4, v0

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 94
    .end local v0           #nameStrs:[Ljava/lang/String;
    int-to-double v4, p2

    const-wide v6, 0x3fa999999999999aL

    mul-double/2addr v4, v6

    double-to-int p4, v4

    int-to-float p4, p4

    int-to-double v4, p3

    const-wide v6, 0x3fdccccccccccccdL

    mul-double/2addr v4, v6

    double-to-int v0, v4

    int-to-float v0, v0

    invoke-virtual {v1, p1, p4, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 95
    int-to-double p1, p2

    const-wide v4, 0x3fd3333333333333L

    mul-double/2addr p1, v4

    double-to-int p1, p1

    int-to-float p1, p1

    int-to-double p2, p3

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr p2, v4

    double-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {v1, v3, p1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private static getWordFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 106
    invoke-static {p0}, Lmiui/util/GraphicsUtils;->isChinese(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {p0}, Lmiui/util/GraphicsUtils;->removeSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, word:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v2, 0x0

    .line 113
    .end local v1           #word:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 110
    .restart local v1       #word:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 111
    .local v0, length:I
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #length:I
    .end local v1           #word:Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 113
    goto :goto_0
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    sget-object v0, Lmiui/util/GraphicsUtils;->sAsiaLangPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public static makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "rx"
    .parameter "ry"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v6, 0x0

    .line 177
    :goto_0
    return-object v6

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 161
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 162
    .local v1, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 163
    .local v4, round:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 166
    .local v3, paint:Landroid/graphics/Paint;
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v2, v6, 0x3

    .line 167
    .local v2, minRound:I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 168
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 170
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 171
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v1

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 175
    invoke-virtual {v0, p0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v6, v4

    .line 177
    goto :goto_0
.end method

.method private static removeSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    move-object v3, p0

    .line 119
    .local v3, result:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    const/4 v4, 0x0

    .line 144
    :goto_0
    return-object v4

    .line 121
    :cond_0
    const/4 v1, 0x0

    .line 123
    .local v1, found:Z
    :cond_1
    const/4 v1, 0x0

    .line 124
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v4, Lmiui/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 125
    sget-object v4, Lmiui/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v5, Lmiui/util/GraphicsUtils;->suffix:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 140
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    :cond_4
    if-eqz v3, :cond_5

    .line 142
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v4, v3

    .line 144
    goto :goto_0

    .line 129
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 131
    .local v0, c:C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_7

    const/16 v4, 0x5a

    if-le v0, v4, :cond_9

    :cond_7
    const/16 v4, 0x61

    if-lt v0, v4, :cond_8

    const/16 v4, 0x7a

    if-le v0, v4, :cond_9

    :cond_8
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_9

    const/16 v4, 0x28

    if-eq v0, v4, :cond_9

    const/16 v4, 0x29

    if-eq v0, v4, :cond_9

    const v4, 0xff08

    if-eq v0, v4, :cond_9

    const v4, 0xff09

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2014

    if-ne v0, v4, :cond_2

    .line 134
    :cond_9
    const/4 v1, 0x1

    .line 135
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 124
    .end local v0           #c:C
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
