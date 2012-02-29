.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final ALL_LEFT_TO_RIGHT:I = 0x7fff

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 846
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 118
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 120
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 124
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 134
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 138
    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 140
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 141
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 142
    const/4 v11, 0x1

    .line 151
    .local v11, trust:Z
    :goto_0
    iget-object v3, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 152
    return-void

    .line 144
    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 147
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 148
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method

.method private drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 30
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mPaint:Landroid/text/TextPaint;

    move-object v9, v0

    .line 766
    .local v9, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    move-object v4, v0

    .line 770
    .local v4, buf:Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 771
    if-eqz p4, :cond_0

    .line 772
    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 775
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 777
    if-eqz p4, :cond_1

    .line 778
    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 782
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v23, v0

    .line 784
    .local v23, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 785
    .local v5, start:I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 787
    .local v6, end:I
    const/16 v17, 0x0

    .line 788
    .local v17, ltop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mBottom:I

    move/from16 v19, v0

    .line 789
    .local v19, lbottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mDesc:I

    move v3, v0

    sub-int v18, v19, v3

    .line 791
    .local v18, lbaseline:I
    const/16 v25, 0x0

    .line 792
    .local v25, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mWidth:I

    move/from16 v27, v0

    .line 795
    .local v27, right:I
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v23

    move-object v1, v3

    if-ne v0, v1, :cond_2

    .line 796
    move/from16 v29, v25

    .line 812
    .local v29, x:I
    :goto_0
    move-object v0, v4

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v28, v0

    .line 815
    .local v28, spannedText:Z
    if-nez v28, :cond_4

    .line 816
    move/from16 v0, v29

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v8, v0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 822
    :goto_1
    return-void

    .line 799
    .end local v28           #spannedText:Z
    .end local v29           #x:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/BoringLayout;->mMax:F

    move v3, v0

    move v0, v3

    float-to-int v0, v0

    move/from16 v26, v0

    .line 800
    .local v26, max:I
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v23

    move-object v1, v3

    if-ne v0, v1, :cond_3

    .line 801
    sub-int v29, v27, v26

    .restart local v29       #x:I
    goto :goto_0

    .line 805
    .end local v29           #x:I
    :cond_3
    and-int/lit8 v26, v26, -0x2

    .line 806
    sub-int v3, v27, v25

    sub-int v3, v3, v26

    shr-int/lit8 v24, v3, 0x1

    .line 807
    .local v24, half:I
    add-int v29, v25, v24

    .restart local v29       #x:I
    goto :goto_0

    .line 818
    .end local v24           #half:I
    .end local v26           #max:I
    .restart local v28       #spannedText:Z
    :cond_4
    const/4 v14, 0x1

    const/4 v15, 0x0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v10, p1

    move-object v11, v4

    move v12, v5

    move v13, v6

    move-object/from16 v20, v9

    invoke-static/range {v10 .. v22}, Landroid/text/Styled;->drawText(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIIZFIIILandroid/text/TextPaint;Landroid/text/TextPaint;Z)F

    goto :goto_1
.end method

.method private getHorizontal(I)F
    .locals 12
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-object v0, p0, Landroid/text/BoringLayout;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/text/BoringLayout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 546
    .local v11, wid:F
    iget-object v6, p0, Landroid/text/BoringLayout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 547
    .local v6, align:Landroid/text/Layout$Alignment;
    invoke-virtual {p0, v3}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v8

    .line 548
    .local v8, left:I
    invoke-virtual {p0, v3}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v10

    .line 550
    .local v10, right:I
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v6, v0, :cond_0

    .line 551
    int-to-float v0, v8

    add-float/2addr v0, v11

    .line 560
    :goto_0
    return v0

    .line 554
    :cond_0
    invoke-virtual {p0, v3}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v9

    .line 556
    .local v9, max:F
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v0, :cond_1

    .line 557
    int-to-float v0, v10

    sub-float/2addr v0, v9

    add-float/2addr v0, v11

    goto :goto_0

    .line 559
    :cond_1
    float-to-int v0, v9

    and-int/lit8 v7, v0, -0x2

    .line 560
    .local v7, imax:I
    sub-int v0, v10, v8

    sub-int/2addr v0, v7

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v8

    int-to-float v0, v0

    add-float/2addr v0, v11

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 10
    .parameter "offset"

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v8, 0x0

    .line 485
    :goto_0
    return v8

    .line 462
    :cond_0
    iget-object v7, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    .line 463
    .local v7, text:Ljava/lang/CharSequence;
    invoke-interface {v7, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 465
    .local v1, c:C
    const v8, 0xdc00

    if-lt v1, v8, :cond_1

    const v8, 0xdfff

    if-gt v1, v8, :cond_1

    .line 466
    const/4 v8, 0x1

    sub-int v8, p1, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 468
    .local v2, c1:C
    const v8, 0xd800

    if-lt v2, v8, :cond_1

    const v8, 0xdbff

    if-gt v2, v8, :cond_1

    .line 469
    add-int/lit8 p1, p1, -0x1

    .line 472
    .end local v2           #c1:C
    :cond_1
    instance-of v8, v7, Landroid/text/Spanned;

    if-eqz v8, :cond_3

    .line 473
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 476
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v5

    if-ge v4, v8, :cond_3

    .line 477
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 478
    .local v6, start:I
    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v5, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 480
    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 481
    move p1, v6

    .line 476
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    :cond_3
    move v8, p1

    .line 485
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 9
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"

    .prologue
    .line 227
    const/16 v1, 0x1f4

    new-array v7, v1, [C

    .line 228
    .local v7, temp:[C
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 229
    .local v5, len:I
    const/4 v2, 0x1

    .line 231
    .local v2, boring:Z
    const/4 v1, 0x0

    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_8

    .line 232
    add-int/lit16 v1, v4, 0x1f4

    .line 234
    .local v1, j:I
    if-le v1, v5, :cond_0

    .line 235
    move v1, v5

    .line 237
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v7, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 239
    sub-int v6, v1, v4

    .line 241
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, a:I
    :goto_1
    if-ge v1, v6, :cond_6

    .line 242
    aget-char v3, v7, v1

    .line 244
    .local v3, c:C
    const/16 v8, 0xa

    if-eq v3, v8, :cond_2

    const/16 v8, 0x9

    if-eq v3, v8, :cond_2

    const/16 v8, 0x590

    if-lt v3, v8, :cond_1

    const/16 v8, 0x1c7f

    if-le v3, v8, :cond_2

    :cond_1
    const/16 v8, 0x2d30

    if-lt v3, v8, :cond_5

    const/16 v8, 0x2ddf

    if-gt v3, v8, :cond_5

    .line 246
    :cond_2
    const/4 v1, 0x0

    .line 253
    .end local v2           #boring:Z
    .end local v3           #c:C
    .end local v6           #n:I
    .local v1, boring:Z
    :goto_2
    if-eqz v1, :cond_3

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    .line 254
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v2, v0

    .line 255
    .local v2, sp:Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .end local v4           #i:I
    const-class v5, Landroid/text/style/ParagraphStyle;

    .end local v5           #len:I
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, styles:[Ljava/lang/Object;
    array-length v2, v2

    .end local v2           #styles:[Ljava/lang/Object;
    if-lez v2, :cond_3

    .line 257
    const/4 v1, 0x0

    .line 261
    :cond_3
    if-eqz v1, :cond_7

    .line 262
    move-object v6, p2

    .line 263
    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    if-nez v6, :cond_4

    .line 264
    new-instance v6, Landroid/text/BoringLayout$Metrics;

    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    invoke-direct {v6}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 269
    .restart local v6       #fm:Landroid/text/BoringLayout$Metrics;
    :cond_4
    sget-object p2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local p2
    monitor-enter p2

    .line 270
    :try_start_0
    sget-object v2, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    .end local v1           #boring:Z
    move-result p0

    .end local p0
    invoke-static {p0}, Landroid/util/FloatMath;->ceil(F)F

    move-result p0

    float-to-int p0, p0

    .line 272
    .local p0, wid:I
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput p0, v6, Landroid/text/BoringLayout$Metrics;->width:I

    move-object p0, v6

    .line 276
    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .end local p0           #wid:I
    :goto_3
    return-object p0

    .line 241
    .local v1, a:I
    .local v2, boring:Z
    .restart local v3       #c:C
    .restart local v4       #i:I
    .restart local v5       #len:I
    .local v6, n:I
    .local p0, text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v3           #c:C
    :cond_6
    add-int/lit16 v1, v4, 0x1f4

    .end local v4           #i:I
    .local v1, i:I
    move v4, v1

    .end local v1           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 272
    .end local v2           #boring:Z
    .end local v4           #i:I
    .end local v5           #len:I
    .end local p0           #text:Ljava/lang/CharSequence;
    .end local p2
    .local v6, fm:Landroid/text/BoringLayout$Metrics;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 276
    .end local v6           #fm:Landroid/text/BoringLayout$Metrics;
    .local v1, boring:Z
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p2
    :cond_7
    const/4 p0, 0x0

    goto :goto_3

    .end local v1           #boring:Z
    .restart local v2       #boring:Z
    .restart local v4       #i:I
    .restart local v5       #len:I
    :cond_8
    move v1, v2

    .end local v2           #boring:Z
    .restart local v1       #boring:Z
    goto :goto_2
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 58
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 65
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .parameter "c"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffset"

    .prologue
    .line 749
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 750
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/BoringLayout;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 828
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 829
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 830
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 11
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 633
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 635
    iget-object v8, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge p1, v8, :cond_7

    .line 636
    :goto_0
    if-ltz p1, :cond_8

    .line 637
    :goto_1
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineForOffset(I)I

    move-result v6

    .line 638
    .local v6, line:I
    invoke-virtual {p0, v6}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v7

    .line 639
    .local v7, top:I
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v0

    .line 641
    .local v0, bottom:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v4, v8, v9

    .line 642
    .local v4, h1:F
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getSecondaryHorizontal(I)F

    move-result v8

    const/high16 v9, 0x3f00

    sub-float v5, v8, v9

    .line 644
    .local v5, h2:F
    const/4 v8, 0x1

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 645
    .local v1, caps:I
    const/4 v8, 0x2

    invoke-static {p3, v8}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 646
    .local v3, fn:I
    const/4 v2, 0x0

    .line 648
    .local v2, dist:I
    if-nez v1, :cond_0

    if-eqz v3, :cond_2

    .line 649
    :cond_0
    sub-int v8, v0, v7

    shr-int/lit8 v2, v8, 0x2

    .line 651
    if-eqz v3, :cond_1

    .line 652
    add-int/2addr v7, v2

    .line 653
    :cond_1
    if-eqz v1, :cond_2

    .line 654
    sub-int/2addr v0, v2

    .line 657
    :cond_2
    const/high16 v8, 0x3f00

    cmpg-float v8, v4, v8

    if-gez v8, :cond_3

    .line 658
    const/high16 v4, 0x3f00

    .line 659
    :cond_3
    const/high16 v8, 0x3f00

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 660
    const/high16 v5, 0x3f00

    .line 662
    :cond_4
    cmpl-float v8, v4, v5

    if-nez v8, :cond_9

    .line 663
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 664
    int-to-float v8, v0

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 673
    :goto_2
    const/4 v8, 0x2

    if-ne v1, v8, :cond_a

    .line 674
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 675
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 676
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 677
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    :cond_5
    :goto_3
    const/4 v8, 0x2

    if-ne v3, v8, :cond_b

    .line 690
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 691
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 692
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 693
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 704
    :cond_6
    :goto_4
    return-void

    .line 635
    .end local v0           #bottom:I
    .end local v1           #caps:I
    .end local v2           #dist:I
    .end local v3           #fn:I
    .end local v4           #h1:F
    .end local v5           #h2:F
    .end local v6           #line:I
    .end local v7           #top:I
    :cond_7
    iget-object v8, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move p1, v8

    goto/16 :goto_0

    .line 636
    :cond_8
    const/4 v8, 0x0

    move p1, v8

    goto/16 :goto_1

    .line 666
    .restart local v0       #bottom:I
    .restart local v1       #caps:I
    .restart local v2       #dist:I
    .restart local v3       #fn:I
    .restart local v4       #h1:F
    .restart local v5       #h2:F
    .restart local v6       #line:I
    .restart local v7       #top:I
    :cond_9
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 667
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 669
    add-int v8, v7, v0

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 670
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 678
    :cond_a
    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    .line 679
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 680
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 682
    int-to-float v8, v2

    sub-float v8, v5, v8

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 683
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    sub-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 685
    int-to-float v8, v2

    add-float/2addr v8, v5

    add-int v9, v0, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 686
    int-to-float v8, v0

    invoke-virtual {p2, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 694
    :cond_b
    const/4 v8, 0x1

    if-ne v3, v8, :cond_6

    .line 695
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 696
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 698
    int-to-float v8, v2

    sub-float v8, v4, v8

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 699
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 701
    int-to-float v8, v2

    add-float/2addr v8, v4

    sub-int v9, v7, v2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 702
    int-to-float v8, v7

    invoke-virtual {p2, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 349
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 354
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 300
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 334
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 580
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v1

    .line 581
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 583
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 584
    if-ne v1, v7, :cond_0

    .line 585
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 598
    :goto_0
    return v5

    :cond_0
    move v5, v6

    .line 587
    goto :goto_0

    .line 588
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 589
    if-ne v1, v7, :cond_2

    move v5, v6

    .line 590
    goto :goto_0

    .line 592
    :cond_2
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 594
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v2

    .line 595
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v4

    .line 596
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 598
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 1
    .parameter "line"

    .prologue
    .line 323
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 608
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphDirection(I)I

    move-result v1

    .line 609
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 611
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 612
    if-ne v1, v6, :cond_0

    .line 613
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    .line 626
    :goto_0
    return v5

    .line 615
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 616
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 617
    if-ne v1, v6, :cond_2

    .line 618
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 620
    :cond_2
    iget v5, p0, Landroid/text/BoringLayout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 622
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphLeft(I)I

    move-result v2

    .line 623
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getParagraphRight(I)I

    move-result v4

    .line 624
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/BoringLayout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 626
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 305
    if-gtz p1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 292
    if-gtz p1, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    goto :goto_0
.end method

.method public getLineWidth(I)F
    .locals 1
    .parameter "line"

    .prologue
    .line 328
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 18
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    const/16 p1, 0x0

    .line 387
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v16

    const/16 v17, 0x1

    sub-int v11, v16, v17

    .line 388
    .local v11, max:I
    invoke-virtual/range {p0 .. p1}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v12

    .line 390
    .local v12, min:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->getLineCount()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 391
    add-int/lit8 v11, v11, 0x1

    .line 393
    :cond_1
    move v4, v12

    .line 394
    .local v4, best:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    sub-float v16, v16, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 396
    .local v5, bestdist:F
    move v8, v12

    .line 397
    .local v8, here:I
    add-int/lit16 v15, v8, 0x7fff

    .line 398
    .local v15, there:I
    const/4 v14, 0x1

    .line 400
    .local v14, swap:I
    if-le v15, v11, :cond_2

    .line 401
    move v15, v11

    .line 403
    :cond_2
    const/16 v16, 0x1

    sub-int v16, v15, v16

    add-int/lit8 v9, v16, 0x1

    .local v9, high:I
    add-int/lit8 v16, v8, 0x1

    const/16 v17, 0x1

    sub-int v10, v16, v17

    .line 405
    .local v10, low:I
    :goto_0
    sub-int v16, v9, v10

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 406
    add-int v16, v9, v10

    div-int/lit8 v7, v16, 0x2

    .line 407
    .local v7, guess:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/text/BoringLayout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 409
    .local v2, adguess:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p2

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_3

    .line 410
    move v9, v7

    goto :goto_0

    .line 412
    :cond_3
    move v10, v7

    goto :goto_0

    .line 415
    .end local v2           #adguess:I
    .end local v7           #guess:I
    :cond_4
    add-int/lit8 v16, v8, 0x1

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 416
    add-int/lit8 v10, v8, 0x1

    .line 418
    :cond_5
    if-ge v10, v15, :cond_7

    .line 419
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Landroid/text/BoringLayout;->getOffsetAtStartOf(I)I

    move-result v10

    .line 421
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    sub-float v16, v16, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 423
    .local v6, dist:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v10

    invoke-static {v0, v1}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 424
    .local v3, aft:I
    if-ge v3, v15, :cond_6

    .line 425
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    sub-float v16, v16, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 427
    .local v13, other:F
    cmpg-float v16, v13, v6

    if-gez v16, :cond_6

    .line 428
    move v6, v13

    .line 429
    move v10, v3

    .line 433
    .end local v13           #other:F
    :cond_6
    cmpg-float v16, v6, v5

    if-gez v16, :cond_7

    .line 434
    move v5, v6

    .line 435
    move v4, v10

    .line 439
    .end local v3           #aft:I
    .end local v6           #dist:F
    :cond_7
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    sub-float v16, v16, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 441
    .restart local v6       #dist:F
    cmpg-float v16, v6, v5

    if-gez v16, :cond_8

    .line 442
    move v5, v6

    .line 443
    move v4, v8

    .line 446
    :cond_8
    move v8, v15

    .line 447
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getPrimaryHorizontal(I)F

    move-result v16

    sub-float v16, v16, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 449
    cmpg-float v16, v6, v5

    if-gez v16, :cond_9

    .line 450
    move v5, v6

    .line 451
    move v4, v11

    .line 454
    :cond_9
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 490
    iget-object v1, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 491
    .local v0, len:I
    if-gez p1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 493
    :cond_0
    if-le p1, v0, :cond_1

    .line 494
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 498
    :cond_1
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 500
    if-gez p1, :cond_2

    .line 501
    const/4 v1, 0x0

    .line 505
    :goto_0
    return v1

    .line 502
    :cond_2
    if-le p1, v0, :cond_3

    move v1, v0

    .line 503
    goto :goto_0

    :cond_3
    move v1, p1

    .line 505
    goto :goto_0
.end method

.method public getOffsetToRightOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 511
    iget-object v1, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 512
    .local v0, len:I
    if-gez p1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 514
    :cond_0
    if-le p1, v0, :cond_1

    .line 515
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 519
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 521
    if-gez p1, :cond_2

    .line 522
    const/4 v1, 0x0

    .line 526
    :goto_0
    return v1

    .line 523
    :cond_2
    if-le p1, v0, :cond_3

    move v1, v0

    .line 524
    goto :goto_0

    :cond_3
    move v1, p1

    .line 526
    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Landroid/text/BoringLayout;->getHorizontal(I)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .parameter "offset"

    .prologue
    .line 537
    invoke-direct {p0, p1}, Landroid/text/BoringLayout;->getHorizontal(I)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 17
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 709
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 711
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 744
    :goto_0
    return-void

    .line 714
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 715
    move/from16 v14, p2

    .line 716
    .local v14, temp:I
    move/from16 p2, p1

    .line 717
    move/from16 p1, v14

    .line 720
    .end local v14           #temp:I
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineTop(I)I

    move-result v16

    .line 721
    .local v16, top:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineBottom(I)I

    move-result v8

    .line 722
    .local v8, bottom:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineStart(I)I

    move-result v12

    .line 723
    .local v12, linestart:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/BoringLayout;->getLineEnd(I)I

    move-result v11

    .line 725
    .local v11, lineend:I
    move v10, v12

    .line 726
    .local v10, here:I
    add-int/lit16 v15, v10, 0x7fff

    .line 727
    .local v15, there:I
    if-le v15, v11, :cond_2

    .line 728
    move v15, v11

    .line 730
    :cond_2
    move/from16 v0, p1

    move v1, v15

    if-gt v0, v1, :cond_3

    move/from16 v0, p2

    move v1, v10

    if-lt v0, v1, :cond_3

    .line 731
    move/from16 v0, p1

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 732
    .local v13, st:I
    move/from16 v0, p2

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 734
    .local v9, en:I
    if-eq v13, v9, :cond_3

    .line 735
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Landroid/text/BoringLayout;->getHorizontal(I)F

    move-result v3

    .line 736
    .local v3, h1:F
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/text/BoringLayout;->getHorizontal(I)F

    move-result v5

    .line 738
    .local v5, h2:F
    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    int-to-float v6, v8

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 742
    .end local v3           #h1:F
    .end local v5           #h2:F
    .end local v9           #en:I
    .end local v13           #st:I
    :cond_3
    move v10, v15

    .line 744
    goto :goto_0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 7
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "trustWidth"

    .prologue
    .line 170
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p4, v0, :cond_3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 176
    :goto_0
    if-eqz p8, :cond_4

    .line 177
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v6, v0, v1

    .line 182
    .local v6, spacing:I
    :goto_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    int-to-float v0, v6

    mul-float/2addr v0, p5

    add-float/2addr v0, p6

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 186
    :cond_1
    iput v6, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 188
    if-eqz p8, :cond_5

    .line 189
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 194
    :goto_2
    if-eqz p9, :cond_6

    .line 195
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 208
    .end local v6           #spacing:I
    :goto_3
    if-eqz p8, :cond_2

    .line 209
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->top:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 210
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 212
    :cond_2
    return-void

    .line 173
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_4
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v1, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v6, v0, v1

    .restart local v6       #spacing:I
    goto :goto_1

    .line 191
    :cond_5
    iget v0, p7, Landroid/text/BoringLayout$Metrics;->ascent:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    .line 202
    :cond_6
    sget-object v6, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .end local v6           #spacing:I
    monitor-enter v6

    .line 203
    :try_start_0
    sget-object v1, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Styled;->measureText(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/text/BoringLayout;->mMax:F

    .line 205
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method initLayout()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method isValidLine(I)Z
    .locals 1
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, p1, v0, v0}, Landroid/text/BoringLayout;->isValidLine(III)Z

    move-result v0

    return v0
.end method

.method reflowFull(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 156
    return-void
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 79
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 83
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 84
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12
    .parameter "source"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "metrics"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 97
    if-eqz p9, :cond_0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    move-object v1, v2

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 100
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 102
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 103
    const/4 v11, 0x1

    .line 112
    .local v11, trust:Z
    :goto_0
    iget-object v3, p0, Landroid/text/BoringLayout;->mText:Ljava/lang/CharSequence;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 113
    return-object p0

    .line 105
    .end local v11           #trust:Z
    :cond_1
    move/from16 v0, p10

    int-to-float v0, v0

    move v4, v0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p9

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 108
    move/from16 v0, p10

    move-object v1, p0

    iput v0, v1, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 109
    const/4 v11, 0x0

    .restart local v11       #trust:Z
    goto :goto_0
.end method
