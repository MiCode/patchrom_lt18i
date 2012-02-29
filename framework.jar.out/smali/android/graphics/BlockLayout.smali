.class public final Landroid/graphics/BlockLayout;
.super Ljava/lang/Object;
.source "BlockLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BlockLayout$CaretPosition;
    }
.end annotation


# static fields
.field public static final AUTO_DIRECTION:I = 0x3

.field public static final BOTH_POSITIONS:I = 0x6

.field public static final DEFAULT_FLAGS:I = 0x0

.field public static final FLAGS_ELLIPSIZE_MARQUEE:I = 0x20

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_END:I = 0x8

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_MIDDLE:I = 0x10

.field public static final FLAGS_ELLIPSIZE_TRUNCATE_AT_START:I = 0x4

.field public static final FLAGS_INCLUDE_PADDING:I = 0x2

.field public static final FLAGS_USE_THAI_DICTIONARY:I = 0x1

.field public static final HIDE_DIRECTION:I = 0x2

.field public static final MAX_LINE_WIDTH:I = 0x7fff

.field public static final PRIMARY_POSITION:I = 0x4

.field public static final SECONDARY_POSITION:I = 0x5

.field public static final SHOW_DIRECTION:I = 0x1

.field static sGarbage:[I

.field static sGarbageTop:I


# instance fields
.field private mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

.field private mNativeBlockLayout:I

.field private mText:Landroid/graphics/Text;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "textrendering"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 553
    const/4 v0, 0x0

    sput v0, Landroid/graphics/BlockLayout;->sGarbageTop:I

    .line 555
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/BlockLayout;->sGarbage:[I

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

.method public constructor <init>(Landroid/graphics/Text;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;III)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Text;III)V
    .locals 1
    .parameter "text"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iget v0, p1, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p2, p3, p4}, Landroid/graphics/BlockLayout;->initBlockLayout(IIII)I

    move-result v0

    iput v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 115
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Text;IIII)V
    .locals 1
    .parameter "text"
    .parameter "nativeBlockLayout"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iget v0, p1, Landroid/graphics/Text;->mNativeText:I

    invoke-static {v0, p2, p3, p4, p5}, Landroid/graphics/BlockLayout;->reinitBlockLayout(IIIII)V

    .line 126
    iput p2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 128
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    .line 133
    return-void
.end method

.method private static native doLayout(IIII)I
.end method

.method private static native draw(IIIIII)V
.end method

.method private static native finalizer(I)V
.end method

.method private static native getBottomPadding(I)I
.end method

.method private static native getCharSubstitutionPosition(IILandroid/graphics/Text$CharSubstitution;)V
.end method

.method private static native getCursorPath(IIIIII)V
.end method

.method private static native getEllipsisCount(II)I
.end method

.method private static native getEllipsisStart(II)I
.end method

.method private static native getHorizontal(IIZZ)F
.end method

.method private static native getLineCount(I)I
.end method

.method private static native getLineDescent(II)I
.end method

.method private static native getLineDirections(II)[S
.end method

.method private static native getLineForOffset(II)I
.end method

.method private static native getLineForVertical(II)I
.end method

.method private static native getLineLeft(II)F
.end method

.method private static native getLineRight(II)F
.end method

.method private static native getLineStart(II)I
.end method

.method private static native getLineTop(II)I
.end method

.method private static native getLineWidth(II)F
.end method

.method private static native getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z
.end method

.method private static native getOffsetToLeftOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V
.end method

.method private static native getOffsetToRightOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V
.end method

.method private static native getParagraphAlignment(II)I
.end method

.method private static native getParagraphDirection(II)I
.end method

.method private static native getParagraphLeft(II)I
.end method

.method private static native getParagraphRight(II)I
.end method

.method private static native getSelectionPath(IIII)V
.end method

.method private static native getTopPadding(I)I
.end method

.method private static native getWidth(I)I
.end method

.method public static native hasEmoji(Ljava/lang/String;)Z
.end method

.method public static native hasThaiDict()Z
.end method

.method private static native initBlockLayout(IIII)I
.end method

.method public static obtain(Landroid/graphics/Text;III)Landroid/graphics/BlockLayout;
    .locals 7
    .parameter "text"
    .parameter "baseAlignment"
    .parameter "defaultTabStopPosition"
    .parameter "flags"

    .prologue
    .line 136
    sget-object v6, Landroid/graphics/BlockLayout;->sGarbage:[I

    monitor-enter v6

    .line 137
    :try_start_0
    sget v0, Landroid/graphics/BlockLayout;->sGarbageTop:I

    if-lez v0, :cond_0

    .line 138
    sget-object v0, Landroid/graphics/BlockLayout;->sGarbage:[I

    sget v1, Landroid/graphics/BlockLayout;->sGarbageTop:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    sput v1, Landroid/graphics/BlockLayout;->sGarbageTop:I

    aget v2, v0, v1

    .line 141
    .local v2, nativeBlockLayout:I
    new-instance v0, Landroid/graphics/BlockLayout;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;IIII)V

    monitor-exit v6

    .line 145
    .end local v2           #nativeBlockLayout:I
    :goto_0
    return-object v0

    .line 144
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    new-instance v0, Landroid/graphics/BlockLayout;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;III)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recycle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Landroid/graphics/BlockLayout;->sGarbage:[I

    monitor-enter v0

    .line 151
    :try_start_0
    sget v1, Landroid/graphics/BlockLayout;->sGarbageTop:I

    sget-object v2, Landroid/graphics/BlockLayout;->sGarbage:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 152
    sget-object v1, Landroid/graphics/BlockLayout;->sGarbage:[I

    sget v2, Landroid/graphics/BlockLayout;->sGarbageTop:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Landroid/graphics/BlockLayout;->sGarbageTop:I

    iget v3, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    aput v3, v1, v2

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 154
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 158
    :goto_0
    return v0

    .line 156
    :cond_0
    monitor-exit v0

    :cond_1
    move v0, v3

    .line 158
    goto :goto_0

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native reinitBlockLayout(IIIII)V
.end method

.method private static native setTabStop(II)V
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/graphics/BlockLayout;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 167
    .local v0, blockLayout:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 168
    invoke-static {v0}, Landroid/graphics/BlockLayout;->finalizer(I)V

    .line 170
    .end local v0           #blockLayout:I
    :cond_0
    return-void
.end method

.method public doLayout(Landroid/graphics/Paint;I)I
    .locals 1
    .parameter "basePaint"
    .parameter "width"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0, p1, p2, p2}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public doLayout(Landroid/graphics/Paint;II)I
    .locals 2
    .parameter "basePaint"
    .parameter "width"
    .parameter "ellipsizedWidth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 384
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1, p2, p3}, Landroid/graphics/BlockLayout;->doLayout(IIII)I

    move-result v0

    return v0

    :cond_0
    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 424
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    iget v1, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/BlockLayout;->draw(IIIIII)V

    .line 425
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
    .line 175
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/BlockLayout;->recycle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 177
    .local v0, blockLayout:I
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    .line 178
    invoke-static {v0}, Landroid/graphics/BlockLayout;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v0           #blockLayout:I
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 184
    return-void

    .line 181
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getBottomPadding(I)I

    move-result v0

    return v0
.end method

.method public getCharSubstitutionPosition(ILandroid/graphics/Text$CharSubstitution;)V
    .locals 1
    .parameter "id"
    .parameter "charSubstitution"

    .prologue
    .line 469
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2}, Landroid/graphics/BlockLayout;->getCharSubstitutionPosition(IILandroid/graphics/Text$CharSubstitution;)V

    .line 470
    return-void
.end method

.method public getCursorPath(IILandroid/graphics/Path;II)V
    .locals 6
    .parameter "leadingIndex"
    .parameter "trailingOffset"
    .parameter "dest"
    .parameter "cursorDirection"
    .parameter "cursorPosition"

    .prologue
    .line 402
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IIIIII)V

    .line 404
    return-void
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 191
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(II)I

    move-result v0

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 200
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(II)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BlockLayout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "primary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IIZZ)F

    move-result v0

    return v0
.end method

.method public getHorizontal(IZZ)F
    .locals 1
    .parameter "offset"
    .parameter "primary"
    .parameter "trailingEdge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 272
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getHorizontal(IIZZ)F

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getLineCount(I)I

    move-result v0

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 333
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineDescent(II)I

    move-result v0

    return v0
.end method

.method public getLineDirections(I)[S
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 506
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineDirections(II)[S

    move-result-object v0

    return-object v0
.end method

.method public getLineForOffset(I)I
    .locals 1
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 216
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineForOffset(II)I

    move-result v0

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 1
    .parameter "vertical"

    .prologue
    .line 225
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineForVertical(II)I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 288
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineLeft(II)F

    move-result v0

    return v0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 349
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineRight(II)F

    move-result v0

    iget v1, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v1, p1}, Landroid/graphics/BlockLayout;->getLineLeft(II)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLineRight(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 280
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineRight(II)F

    move-result v0

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 234
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineStart(II)I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineTop(II)I

    move-result v0

    return v0
.end method

.method public getLineVisibleEnd(I)I
    .locals 4
    .parameter "line"

    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/BlockLayout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 358
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    const/4 v1, 0x0

    .line 359
    .local v1, offset:I
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/graphics/BlockLayout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 362
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    iget v3, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v3, p1}, Landroid/graphics/BlockLayout;->getLineRight(II)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, p1, v3, v0}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v0}, Landroid/graphics/BlockLayout$CaretPosition;->getCharacterIndex()I

    move-result v1

    .line 366
    :cond_1
    return v1
.end method

.method public getLineWidth(I)F
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getLineWidth(II)F

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IILandroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 1
    .parameter "line"
    .parameter "horiz"
    .parameter "caretPosition"

    .prologue
    .line 432
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IIILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v0

    return v0
.end method

.method public getOffsetToLeftOf(Landroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 3
    .parameter "caretPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 441
    iget v0, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 442
    .local v0, leadingIndex:I
    iget v1, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 443
    .local v1, trailingOffset:I
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/BlockLayout;->getOffsetToLeftOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V

    .line 444
    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOffsetToRightOf(Landroid/graphics/BlockLayout$CaretPosition;)Z
    .locals 3
    .parameter "caretPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 453
    iget v0, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 454
    .local v0, leadingIndex:I
    iget v1, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 455
    .local v1, trailingOffset:I
    iget v2, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/BlockLayout;->getOffsetToRightOf(IIILandroid/graphics/BlockLayout$CaretPosition;)V

    .line 456
    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    if-ne v0, v2, :cond_0

    iget v2, p1, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getParagraphAlignment(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphAlignment(II)I

    move-result v0

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphDirection(II)I

    move-result v0

    return v0
.end method

.method public getParagraphLeft(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 302
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphLeft(II)I

    move-result v0

    return v0
.end method

.method public getParagraphRight(I)I
    .locals 1
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 295
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->getParagraphRight(II)I

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 413
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->getSelectionPath(IIII)V

    .line 414
    return-void
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getTopPadding(I)I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0}, Landroid/graphics/BlockLayout;->getWidth(I)I

    move-result v0

    return v0
.end method

.method public setTabStop(I)V
    .locals 1
    .parameter "tabStopPosition"

    .prologue
    .line 478
    iget v0, p0, Landroid/graphics/BlockLayout;->mNativeBlockLayout:I

    invoke-static {v0, p1}, Landroid/graphics/BlockLayout;->setTabStop(II)V

    .line 479
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xa

    .line 515
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    if-eqz v7, :cond_3

    .line 516
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    invoke-virtual {v7}, Landroid/graphics/Text;->toString()Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, text:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/graphics/BlockLayout;->mText:Landroid/graphics/Text;

    invoke-virtual {v7}, Landroid/graphics/Text;->getLength()I

    move-result v7

    if-lez v7, :cond_1

    .line 520
    invoke-virtual {p0}, Landroid/graphics/BlockLayout;->getLineCount()I

    move-result v3

    .line 521
    .local v3, lineCount:I
    const/4 v2, 0x0

    .local v2, line:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 522
    invoke-virtual {p0, v2}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v5

    .line 523
    .local v5, start:I
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Landroid/graphics/BlockLayout;->getLineStart(I)I

    move-result v0

    .line 525
    .local v0, end:I
    invoke-virtual {v6, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, l:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_0

    .line 530
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v0           #end:I
    .end local v1           #l:Ljava/lang/String;
    .end local v2           #line:I
    .end local v3           #lineCount:I
    .end local v5           #start:I
    :cond_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 539
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .end local v6           #text:Ljava/lang/String;
    :goto_1
    return-object v7

    :cond_3
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
