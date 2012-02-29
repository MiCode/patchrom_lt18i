.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final PRIORITY:I = 0x80


# instance fields
.field private final mBase:Ljava/lang/CharSequence;

.field private final mDisplay:Ljava/lang/CharSequence;

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .parameter "base"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 55
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move v10, p4

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 67
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 17
    .parameter "base"
    .parameter "display"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "dynamicAlignment"

    .prologue
    .line 77
    if-nez p9, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 82
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 92
    if-eqz p9, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 95
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    move-object v1, v13

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 96
    move/from16 v0, p10

    move-object v1, v13

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 97
    move-object/from16 v0, p9

    move-object v1, v13

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 100
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->initLayout()V

    .line 102
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/DynamicLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V

    .line 104
    invoke-virtual/range {p0 .. p1}, Landroid/text/DynamicLayout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v2, v0

    if-eqz v2, :cond_5

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v2, v0

    if-nez v2, :cond_1

    .line 108
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    .line 111
    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object v15, v0

    .line 112
    .local v15, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface {v15}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    invoke-interface {v15, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 113
    .local v16, spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move v2, v0

    if-ge v14, v2, :cond_4

    .line 114
    aget-object v2, v16, v14

    invoke-interface {v15, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 113
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 77
    .end local v14           #i:I
    .end local v15           #sp:Landroid/text/Spannable;
    .end local v16           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/text/Spanned;

    move v2, v0

    if-eqz v2, :cond_3

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    :cond_3
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto/16 :goto_0

    .line 116
    .restart local v14       #i:I
    .restart local v15       #sp:Landroid/text/Spannable;
    .restart local v16       #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    invoke-interface {v15, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 119
    .end local v14           #i:I
    .end local v15           #sp:Landroid/text/Spannable;
    .end local v16           #spans:[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_5
    return-void
.end method

.method private static findEnd(Ljava/lang/CharSequence;IIII)I
    .locals 2
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "len"

    .prologue
    .line 321
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v0, p1, v1

    .line 324
    .local v0, end:I
    if-lez p2, :cond_0

    if-nez p3, :cond_0

    .line 333
    add-int/lit8 v0, v0, 0x1

    .line 336
    :cond_0
    if-lt v0, p4, :cond_2

    .line 337
    move v0, p4

    .line 342
    :cond_1
    :goto_0
    return v0

    .line 338
    :cond_2
    invoke-static {p0, v0, p4}, Landroid/text/DynamicLayout;->isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static findStart(Ljava/lang/CharSequence;IIII)I
    .locals 2
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "len"

    .prologue
    .line 296
    move v0, p1

    .line 299
    .local v0, start:I
    if-lez p2, :cond_0

    if-nez p3, :cond_0

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 311
    :cond_0
    if-gtz v0, :cond_2

    .line 312
    const/4 v0, 0x0

    .line 317
    :cond_1
    :goto_0
    return v0

    .line 313
    :cond_2
    invoke-static {p0, v0, p4}, Landroid/text/DynamicLayout;->isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getBottomPadding()I

    move-result v0

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 249
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 252
    :cond_1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(I)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    const/high16 v1, -0x8000

    .line 233
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 236
    :cond_1
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_2

    move v0, v1

    .line 243
    :goto_0
    return v0

    .line 239
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 240
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 243
    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineContainsTabDefault(I)Z

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineDirectionsDefault(I)Landroid/text/Layout$Directions;

    move-result-object v0

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 138
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 128
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getTopPadding()I

    move-result v0

    return v0
.end method

.method isValidLine(III)Z
    .locals 1
    .parameter "line"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 258
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 262
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method reflow(Ljava/lang/CharSequence;IIIZ)V
    .locals 10
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "textHasChanged"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v1, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 270
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v8, v0

    .line 272
    .local v8, len:I
    :goto_1
    invoke-static {v1, p2, p3, p4, v8}, Landroid/text/DynamicLayout;->findStart(Ljava/lang/CharSequence;IIII)I

    move-result v9

    .line 273
    .local v9, start:I
    invoke-static {v1, p2, p3, p4, v8}, Landroid/text/DynamicLayout;->findEnd(Ljava/lang/CharSequence;IIII)I

    move-result v7

    .line 275
    .local v7, end:I
    if-eqz p5, :cond_1

    .line 277
    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/text/DynamicLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_2
    invoke-super {p0, v1, v9, v7}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 270
    .end local v7           #end:I
    .end local v8           #len:I
    .end local v9           #start:I
    :cond_2
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .line 278
    .restart local v7       #end:I
    .restart local v8       #len:I
    .restart local v9       #start:I
    :catch_0
    move-exception v6

    .line 280
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v3}, Landroid/graphics/Text;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Text;->removeText(II)V

    .line 281
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 283
    const/4 p2, 0x0

    .line 284
    const/4 p3, 0x0

    .line 285
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result p4

    .line 287
    move v9, p2

    .line 288
    move v7, p4

    goto :goto_2
.end method
