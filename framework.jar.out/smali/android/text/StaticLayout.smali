.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# instance fields
.field private mBufferEndDisplay:I

.field private mBufferStartDisplay:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 57
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 13
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 74
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "dynamicAlignment"

    .prologue
    .line 85
    if-nez p10, :cond_2

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v2 .. v12}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 88
    move/from16 v0, p2

    move-object v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    .line 89
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Landroid/text/StaticLayout;->mBufferEndDisplay:I

    .line 99
    if-eqz p10, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 102
    .local v13, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 103
    move/from16 v0, p11

    move-object v1, v13

    iput v0, v1, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 104
    move-object/from16 v0, p10

    move-object v1, v13

    iput-object v0, v1, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 107
    .end local v13           #e:Landroid/text/Layout$Ellipsizer;
    :cond_0
    invoke-virtual {p0}, Landroid/text/StaticLayout;->initLayout()V

    .line 108
    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move/from16 v0, p3

    move v1, v2

    if-eq v0, v1, :cond_4

    .line 109
    :cond_1
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 110
    .local v3, subSequence:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-int v6, p3, p2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/text/StaticLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V

    .line 111
    invoke-virtual {p0, v3}, Landroid/text/StaticLayout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 116
    .end local v3           #subSequence:Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 85
    :cond_2
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v2, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v2, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v2

    goto :goto_0

    .line 113
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/text/StaticLayout;->updateText(Ljava/lang/CharSequence;IIIZ)V

    .line 114
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->reflowFull(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V
    .locals 13
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "dynamicAlignment"

    .prologue
    .line 67
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p5

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 43
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "dynamicAlignment"

    .prologue
    .line 51
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V

    .line 53
    return-void
.end method

.method constructor <init>(Z)V
    .locals 7
    .parameter "ellipsize"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 119
    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 120
    iput v3, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    .line 121
    iput v3, p0, Landroid/text/StaticLayout;->mBufferEndDisplay:I

    .line 122
    return-void
.end method


# virtual methods
.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getBottomPadding()I

    move-result v0

    return v0
.end method

.method public getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "cursor"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/text/Layout$CursorPosition;->offset:I

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IILandroid/graphics/Path;II)V

    .line 187
    return-void
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 251
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 254
    :cond_1
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(I)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 259
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 262
    :cond_1
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .parameter "line"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineContainsTabDefault(I)Z

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 141
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDescent(I)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->getLineDirectionsDefault(I)Landroid/text/Layout$Directions;

    move-result-object v0

    return-object v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 191
    iget v0, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 146
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v0

    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 136
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 2
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 204
    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    if-eqz v1, :cond_1

    .line 205
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 206
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v0

    .line 207
    .local v0, logicalIndex:I
    if-ltz v0, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mBufferEndDisplay:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 208
    invoke-super {p0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 210
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 214
    .end local v0           #logicalIndex:I
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-super {p0, p1}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    goto :goto_0
.end method

.method public getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 221
    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    if-eqz v1, :cond_1

    .line 222
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 223
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v0

    .line 224
    .local v0, logicalIndex:I
    if-ltz v0, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mBufferEndDisplay:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 225
    invoke-super {p0, p1}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 227
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 231
    .end local v0           #logicalIndex:I
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 157
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphDirection(I)I

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 3
    .parameter "offset"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 3
    .parameter "offset"

    .prologue
    .line 240
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 245
    iget v0, p0, Landroid/text/StaticLayout;->mBufferStartDisplay:I

    .line 246
    .local v0, bufstart:I
    sub-int v1, p1, v0

    sub-int v2, p2, v0

    invoke-super {p0, v1, v2, p3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 247
    return-void
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/text/StaticLayout;->mBlockLayout:Landroid/graphics/BlockLayout;

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
    .line 274
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 278
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
