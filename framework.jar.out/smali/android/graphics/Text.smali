.class public final Landroid/graphics/Text;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Text$ParagraphIndent;,
        Landroid/graphics/Text$CharSubstitution;,
        Landroid/graphics/Text$TextRange;
    }
.end annotation


# static fields
.field public static final TEXT_ALIGN_CENTER:I = 0x2

.field public static final TEXT_ALIGN_LEFT:I = 0x0

.field public static final TEXT_ALIGN_LEFT_DYNAMIC:I = 0x3

.field public static final TEXT_ALIGN_RIGHT:I = 0x1

.field public static final TEXT_ALIGN_RIGHT_DYNAMIC:I = 0x4

.field public static final TEXT_ENCODING_UTF16:I = 0x1

.field public static final TEXT_ENCODING_UTF32:I = 0x2

.field public static final TEXT_ENCODING_UTF8:I = 0x0

.field public static final TEXT_LEFT_TO_RIGHT_DIRECTION:I = 0x1

.field public static final TEXT_NEUTRAL_DIRECTION:I = 0x0

.field public static final TEXT_RIGHT_TO_LEFT_DIRECTION:I = -0x1

.field static sGarbage:[I

.field static sGarbageTop:I


# instance fields
.field mNativeText:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "textrendering"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    sput v0, Landroid/graphics/Text;->sGarbageTop:I

    .line 557
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/Text;->sGarbage:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Landroid/graphics/Text;->initText()I

    move-result v0

    iput v0, p0, Landroid/graphics/Text;->mNativeText:I

    .line 117
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter "nativeText"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Landroid/graphics/Text;->mNativeText:I

    .line 125
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 128
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/graphics/Text;-><init>()V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 136
    :cond_0
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Landroid/graphics/Text;-><init>()V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Landroid/graphics/Text;->insertText([CIII)V

    .line 144
    :cond_0
    return-void
.end method

.method public static attributeChanged(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .locals 4
    .parameter "paint1"
    .parameter "paint2"

    .prologue
    .line 147
    move-object v0, p0

    .line 148
    .local v0, p1:Landroid/graphics/Paint;
    move-object v1, p1

    .line 149
    .local v1, p2:Landroid/graphics/Paint;
    iget v2, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v3, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Paint;->mNativePaint:I

    iget v3, v1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v2, v3}, Landroid/graphics/Text;->equals(II)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native codePointCount(IIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native codeUnitCount(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native compareTo(III[CILandroid/graphics/Text$TextRange;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native equals(II)Z
.end method

.method private static native finalizer(I)V
.end method

.method private static native getAlignment(IILandroid/graphics/Text$TextRange;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native getCharSubstitution(IILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native getCharSubstitutionCount(IZ)I
.end method

.method private static native getLength(II)I
.end method

.method private static native getPaint(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native getPaint(IIILandroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native getParagraph(II)I
.end method

.method private static native getParagraphCount(I)I
.end method

.method private static native getParagraphDirection(II)I
.end method

.method private static native getParagraphIndent(IILandroid/graphics/Text$ParagraphIndent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native getParagraphRange(IILandroid/graphics/Text$TextRange;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native initText()I
.end method

.method private static native insertText(ILjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native insertText(I[CIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public static obtain()Landroid/graphics/Text;
    .locals 5

    .prologue
    .line 562
    sget-object v1, Landroid/graphics/Text;->sGarbage:[I

    monitor-enter v1

    .line 563
    :try_start_0
    sget v2, Landroid/graphics/Text;->sGarbageTop:I

    if-lez v2, :cond_0

    .line 564
    sget-object v2, Landroid/graphics/Text;->sGarbage:[I

    sget v3, Landroid/graphics/Text;->sGarbageTop:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Landroid/graphics/Text;->sGarbageTop:I

    aget v0, v2, v3

    .line 567
    .local v0, nativeText:I
    new-instance v2, Landroid/graphics/Text;

    invoke-direct {v2, v0}, Landroid/graphics/Text;-><init>(I)V

    monitor-exit v1

    move-object v1, v2

    .line 570
    .end local v0           #nativeText:I
    :goto_0
    return-object v1

    .line 569
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    new-instance v1, Landroid/graphics/Text;

    invoke-direct {v1}, Landroid/graphics/Text;-><init>()V

    goto :goto_0

    .line 569
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private recycle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 574
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    if-eqz v0, :cond_1

    .line 575
    sget-object v0, Landroid/graphics/Text;->sGarbage:[I

    monitor-enter v0

    .line 576
    :try_start_0
    sget v1, Landroid/graphics/Text;->sGarbageTop:I

    sget-object v2, Landroid/graphics/Text;->sGarbage:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 577
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Text;->getLength()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Text;->removeText(II)V

    .line 578
    sget-object v1, Landroid/graphics/Text;->sGarbage:[I

    sget v2, Landroid/graphics/Text;->sGarbageTop:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroid/graphics/Text;->sGarbageTop:I

    iget v3, p0, Landroid/graphics/Text;->mNativeText:I

    aput v3, v1, v2

    .line 579
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Text;->mNativeText:I

    .line 580
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 584
    :goto_0
    return v0

    .line 582
    :cond_0
    monitor-exit v0

    :cond_1
    move v0, v3

    .line 584
    goto :goto_0

    .line 582
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native removeText(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setAlignment(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setCharSubstitution(IIICLandroid/graphics/Paint$FontMetricsInt;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setIndent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setIndent(III[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setLeftIndent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setPaint(IIIIIILandroid/graphics/Paint$FontMetricsInt;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setRightIndent(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native setTabStops(III[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method private static native toString(I)Ljava/lang/String;
.end method


# virtual methods
.method public codePointCount(III)I
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 513
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Text;->codePointCount(IIII)I

    move-result v0

    return v0
.end method

.method public codeUnitCount(I)I
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 525
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/graphics/Text;->codeUnitCount(III)I

    move-result v0

    return v0
.end method

.method public compareTo(II[CI)I
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "b"
    .parameter "boff"

    .prologue
    .line 508
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Text;->compareTo(III[CILandroid/graphics/Text$TextRange;)I

    move-result v0

    return v0
.end method

.method public compareTo(II[CILandroid/graphics/Text$TextRange;)I
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "b"
    .parameter "boff"
    .parameter "matchRange"

    .prologue
    .line 504
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/Text;->compareTo(III[CILandroid/graphics/Text$TextRange;)I

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/graphics/Text;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    .line 534
    .local v0, text:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Text;->mNativeText:I

    .line 535
    invoke-static {v0}, Landroid/graphics/Text;->finalizer(I)V

    .line 537
    .end local v0           #text:I
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 542
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Text;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    .line 544
    .local v0, text:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/Text;->mNativeText:I

    .line 545
    invoke-static {v0}, Landroid/graphics/Text;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v0           #text:I
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 551
    return-void

    .line 548
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAlignment(ILandroid/graphics/Text$TextRange;)I
    .locals 1
    .parameter "index"
    .parameter "range"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 285
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Text;->getAlignment(IILandroid/graphics/Text$TextRange;)I

    move-result v0

    return v0
.end method

.method public getCharSubstitution(ILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I
    .locals 1
    .parameter "index"
    .parameter "charSub"
    .parameter "fontMetricsInt"
    .parameter "textRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 342
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Text;->getCharSubstitution(IILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I

    move-result v0

    return v0
.end method

.method public getCharSubstitutionCount(Z)I
    .locals 1
    .parameter "hasMetrics"

    .prologue
    .line 352
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1}, Landroid/graphics/Text;->getCharSubstitutionCount(IZ)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Text;->getLength(II)I

    move-result v0

    return v0
.end method

.method public getLength(I)I
    .locals 1
    .parameter "encoding"

    .prologue
    .line 169
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1}, Landroid/graphics/Text;->getLength(II)I

    move-result v0

    return v0
.end method

.method public getPaint(ILandroid/text/TextPaint;)V
    .locals 3
    .parameter "index"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 241
    iget v1, p0, Landroid/graphics/Text;->mNativeText:I

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, v2}, Landroid/graphics/Text;->getPaint(III)I

    move-result v0

    .line 242
    .local v0, baselineshift:I
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 243
    return-void
.end method

.method public getPaint(ILandroid/text/TextPaint;Landroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3
    .parameter "index"
    .parameter "paint"
    .parameter "range"
    .parameter "fmi"

    .prologue
    .line 249
    iget v1, p0, Landroid/graphics/Text;->mNativeText:I

    iget v2, p2, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, p1, v2, p3, p4}, Landroid/graphics/Text;->getPaint(IIILandroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    .line 250
    .local v0, blShift:I
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 251
    return-void
.end method

.method public getParagraph(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 362
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1}, Landroid/graphics/Text;->getParagraph(II)I

    move-result v0

    return v0
.end method

.method public getParagraphCount()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0}, Landroid/graphics/Text;->getParagraphCount(I)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 391
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1}, Landroid/graphics/Text;->getParagraphDirection(II)I

    move-result v0

    return v0
.end method

.method public getParagraphIndent(ILandroid/graphics/Text$ParagraphIndent;)V
    .locals 2
    .parameter "index"
    .parameter "paraIndent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 476
    if-nez p2, :cond_0

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParagraphIndent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Text;->getParagraphIndent(IILandroid/graphics/Text$ParagraphIndent;)V

    .line 479
    return-void
.end method

.method public getParagraphRange(ILandroid/graphics/Text$TextRange;)V
    .locals 1
    .parameter "paragraph"
    .parameter "textRange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 379
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Text;->getParagraphRange(IILandroid/graphics/Text$TextRange;)V

    .line 380
    return-void
.end method

.method public insertText(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "index"

    .prologue
    .line 178
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Text;->insertText(ILjava/lang/String;I)V

    .line 179
    return-void
.end method

.method public insertText([CIII)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "count"
    .parameter "index"

    .prologue
    .line 187
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Text;->insertText(I[CIII)V

    .line 188
    return-void
.end method

.method public removeText(II)V
    .locals 1
    .parameter "index"
    .parameter "count"

    .prologue
    .line 196
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Text;->removeText(III)V

    .line 197
    return-void
.end method

.method public setAlignment(III)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "alignment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 272
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Text;->setAlignment(IIII)V

    .line 273
    return-void
.end method

.method public setCharSubstitution(IICLandroid/graphics/Paint$FontMetricsInt;I)I
    .locals 6
    .parameter "index"
    .parameter "count"
    .parameter "subChar"
    .parameter "fontMetricsInt"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 327
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/Text;->setCharSubstitution(IIICLandroid/graphics/Paint$FontMetricsInt;I)I

    move-result v0

    return v0
.end method

.method public setIndent(III)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 435
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Text;->setIndent(IIII)V

    .line 436
    return-void
.end method

.method public setIndent(II[II)V
    .locals 2
    .parameter "index"
    .parameter "count"
    .parameter "indent"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 419
    if-ltz p4, :cond_0

    array-length v0, p3

    if-le p4, v0, :cond_1

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "lines out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Text;->setIndent(III[II)V

    .line 423
    return-void
.end method

.method public setLeftIndent(III)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 449
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Text;->setLeftIndent(IIII)V

    .line 450
    return-void
.end method

.method public setPaint(IILandroid/text/TextPaint;)V
    .locals 7
    .parameter "index"
    .parameter "count"
    .parameter "paint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 211
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    iget v3, p3, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p3, Landroid/text/TextPaint;->bgColor:I

    iget v5, p3, Landroid/text/TextPaint;->baselineShift:I

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Text;->setPaint(IIIIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 213
    return-void
.end method

.method public setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 7
    .parameter "index"
    .parameter "count"
    .parameter "paint"
    .parameter "fmi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 229
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    iget v3, p3, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p3, Landroid/text/TextPaint;->bgColor:I

    iget v5, p3, Landroid/text/TextPaint;->baselineShift:I

    move v1, p1

    move v2, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Text;->setPaint(IIIIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 231
    return-void
.end method

.method public setRightIndent(III)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 463
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Text;->setRightIndent(IIII)V

    .line 464
    return-void
.end method

.method public setTabStops(II[II)V
    .locals 1
    .parameter "index"
    .parameter "count"
    .parameter "tabStops"
    .parameter "tabCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 405
    iget v0, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Text;->setTabStops(III[II)V

    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    iget v1, p0, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v1}, Landroid/graphics/Text;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 488
    const-string v0, ""

    .line 490
    :cond_0
    return-object v0
.end method
