.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$LEADING_START;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_LEADING_START:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 494
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 510
    new-instance v0, Landroid/text/Selection$LEADING_START;

    invoke-direct {v0, v1}, Landroid/text/Selection$LEADING_START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 444
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 445
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 447
    .local v4, line2:I
    if-ne v3, v4, :cond_3

    .line 450
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 451
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 453
    .local v1, h2:F
    if-gez p1, :cond_1

    .line 456
    cmpg-float v6, v0, v1

    if-gez v6, :cond_0

    move v6, p2

    .line 481
    .end local v0           #h1:F
    .end local v1           #h2:F
    :goto_0
    return v6

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    :cond_0
    move v6, p3

    .line 459
    goto :goto_0

    .line 463
    :cond_1
    cmpl-float v6, v0, v1

    if-lez v6, :cond_2

    move v6, p2

    .line 464
    goto :goto_0

    :cond_2
    move v6, p3

    .line 466
    goto :goto_0

    .line 475
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 476
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 478
    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    .line 479
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 481
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 345
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 346
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 348
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v2, v4, :cond_1

    .line 351
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 353
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 354
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 359
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 366
    .end local v3           #move:I
    :goto_1
    return v4

    .line 356
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 361
    .end local v3           #move:I
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 362
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 363
    goto :goto_1

    :cond_2
    move v4, v6

    .line 366
    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 374
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 375
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 377
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 378
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 382
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 390
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 391
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 393
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 394
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 398
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 159
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 160
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 161
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 402
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 403
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 404
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 408
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 409
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 410
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 316
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 317
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 319
    .local v2, line:I
    if-lez v2, :cond_1

    .line 322
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    sub-int v5, v2, v6

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 324
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 325
    .local v1, h:F
    sub-int v4, v2, v6

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 330
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 337
    .end local v3           #move:I
    :goto_1
    return v4

    .line 327
    :cond_0
    sub-int v4, v2, v6

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 332
    .end local v3           #move:I
    :cond_1
    if-eqz v0, :cond_2

    .line 333
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v4, v6

    .line 334
    goto :goto_1

    :cond_2
    move v4, v6

    .line 337
    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 6
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    const/4 v5, 0x1

    .line 426
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 427
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 428
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 430
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_0

    .line 431
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 438
    :goto_0
    return v4

    .line 433
    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 435
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    move v4, v0

    .line 436
    goto :goto_0

    .line 438
    :cond_1
    sub-int v4, v0, v5

    goto :goto_0
.end method

.method private static getAdjustedSelectStart(Landroid/text/Spannable;I)I
    .locals 2
    .parameter "text"
    .parameter "position"

    .prologue
    .line 122
    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    add-int/lit8 p1, p1, -0x1

    .line 126
    :cond_0
    return p1
.end method

.method private static getAdjustedSelectStop(Landroid/text/Spannable;I)I
    .locals 2
    .parameter "text"
    .parameter "position"

    .prologue
    .line 134
    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    sub-int v0, p1, v0

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    add-int/lit8 p1, p1, 0x1

    .line 138
    :cond_0
    return p1
.end method

.method public static getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;
    .locals 3
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance p1, Landroid/text/Layout$CursorPosition;

    .end local p1
    invoke-direct {p1}, Landroid/text/Layout$CursorPosition;-><init>()V

    .line 524
    .restart local p1
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 526
    .local v1, trailing:I
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 527
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v2, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 532
    .local v0, lead:I
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 534
    return-object p1

    .line 529
    .end local v0           #lead:I
    .restart local p0
    :cond_1
    move v0, v1

    .restart local v0       #lead:I
    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 58
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 61
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 47
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 222
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 223
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 225
    .local v0, end:I
    if-eq v6, v0, :cond_1

    .line 226
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 227
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 229
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 231
    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .line 255
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    .line 235
    goto :goto_0

    .line 237
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 239
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    sub-int/2addr v7, v9

    if-ge v2, v7, :cond_3

    .line 242
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 244
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 245
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 250
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 251
    goto :goto_0

    .line 247
    .end local v5           #move:I
    :cond_2
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    .line 255
    goto :goto_0
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 264
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 265
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 267
    .local v0, end:I
    if-eq v2, v0, :cond_0

    .line 268
    const/4 v3, -0x1

    invoke-static {p1, v3, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 281
    :goto_0
    return v3

    .line 272
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 273
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 275
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 276
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v3, v4

    .line 277
    goto :goto_0

    .line 281
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v4, 0x1

    .line 291
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 292
    .local v2, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 294
    .local v0, end:I
    if-eq v2, v0, :cond_0

    .line 295
    invoke-static {p1, v4, v2, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 308
    :goto_0
    return v3

    .line 299
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/text/Selection;->getCursorPosition(Ljava/lang/CharSequence;Landroid/text/Layout$CursorPosition;)Landroid/text/Layout$CursorPosition;

    move-result-object v1

    .line 300
    .local v1, pos:Landroid/text/Layout$CursorPosition;
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 302
    invoke-static {p0, v1}, Landroid/text/Selection;->setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V

    .line 303
    invoke-virtual {v1}, Landroid/text/Layout$CursorPosition;->getLogicalIndex()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v3, v4

    .line 304
    goto :goto_0

    .line 308
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 414
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 415
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 416
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 421
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 422
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 181
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 182
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 184
    .local v0, end:I
    if-eq v6, v0, :cond_1

    .line 185
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 186
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 188
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 190
    if-nez v4, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v7

    if-ne v3, v7, :cond_0

    move v7, v8

    .line 214
    .end local v3           #max:I
    .end local v4           #min:I
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_0
    move v7, v9

    .line 194
    goto :goto_0

    .line 196
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 198
    .local v2, line:I
    if-lez v2, :cond_3

    .line 201
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    sub-int v8, v2, v9

    invoke-virtual {p1, v8}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 203
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 204
    .local v1, h:F
    sub-int v7, v2, v9

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 209
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v9

    .line 210
    goto :goto_0

    .line 206
    .end local v5           #move:I
    :cond_2
    sub-int v7, v2, v9

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1

    .end local v5           #move:I
    :cond_3
    move v7, v8

    .line 214
    goto :goto_0
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 167
    sget-object v0, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 168
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 169
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-static {p0, v1, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 153
    return-void
.end method

.method public static setCursorPosition(Landroid/text/Spannable;Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "text"
    .parameter "pos"

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getTrailingAbsPos()I

    move-result v0

    .line 546
    .local v0, trail:I
    invoke-virtual {p1}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    invoke-static {p0, v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 547
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 145
    invoke-static {p0, p1, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 146
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 77
    invoke-static {p0, p1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    .line 78
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;III)V
    .locals 6
    .parameter "text"
    .parameter "leading"
    .parameter "start"
    .parameter "stop"

    .prologue
    const/16 v5, 0x222

    .line 90
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 91
    .local v3, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 92
    .local v1, oend:I
    sget-object v4, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 94
    .local v2, olead:I
    if-ne v2, p1, :cond_0

    if-ne v3, p2, :cond_0

    if-eq v1, p3, :cond_1

    .line 97
    :cond_0
    if-ne p2, p3, :cond_2

    const/4 v4, 0x1

    move v0, v4

    .line 98
    .local v0, cursorAdjustment:Z
    :goto_0
    invoke-static {p0, p1}, Landroid/text/Selection;->getAdjustedSelectStart(Landroid/text/Spannable;I)I

    move-result p1

    .line 99
    invoke-static {p0, p2}, Landroid/text/Selection;->getAdjustedSelectStart(Landroid/text/Spannable;I)I

    move-result p2

    .line 100
    if-nez v0, :cond_3

    .line 102
    invoke-static {p0, p3}, Landroid/text/Selection;->getAdjustedSelectStop(Landroid/text/Spannable;I)I

    move-result p3

    .line 108
    :goto_1
    sget-object v4, Landroid/text/Selection;->SELECTION_LEADING_START:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 110
    sget-object v4, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v4, p2, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 112
    sget-object v4, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    invoke-interface {p0, v4, p3, p3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 115
    .end local v0           #cursorAdjustment:Z
    :cond_1
    return-void

    .line 97
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 105
    .restart local v0       #cursorAdjustment:Z
    :cond_3
    move p3, p2

    goto :goto_1
.end method
