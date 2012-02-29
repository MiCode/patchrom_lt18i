.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$1;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$CursorPosition;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPACING_ADD:F = 0.0f

.field private static final DEFAULT_SPACING_MULT:F = 1.0f

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field static sBlockLayoutDesired:Landroid/graphics/BlockLayout;

.field private static final sBlockLayoutFlags:I

.field static sBlockTextDesired:Landroid/graphics/Text;

.field static sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

.field private static final sHasThaiDict:Z

.field static sWorkPaintDesired:Landroid/text/TextPaint;


# instance fields
.field choosehtv:[I

.field mAlignment:Landroid/text/Layout$Alignment;

.field mBlockLayout:Landroid/graphics/BlockLayout;

.field mBlockText:Landroid/graphics/Text;

.field mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

.field mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

.field mDynamicAlignment:Z

.field mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mIncludepad:Z

.field private mLastUsedPaint:Landroid/text/TextPaint;

.field private mLastUsedSource:Ljava/lang/CharSequence;

.field private mLeadingMargintArray:[I

.field private mLm:Landroid/graphics/Paint$FontMetricsInt;

.field private mLmh:Landroid/graphics/Paint$FontMetricsInt;

.field mPaint:Landroid/text/TextPaint;

.field mRange:Landroid/graphics/Text$TextRange;

.field private mSm:Landroid/graphics/Paint$FontMetricsInt;

.field private mSmh:Landroid/graphics/Paint$FontMetricsInt;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mTempRect:Landroid/graphics/Rect;

.field mText:Ljava/lang/CharSequence;

.field private mTmpCursorPos:Landroid/text/Layout$CursorPosition;

.field mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 66
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 68
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 75
    :goto_0
    invoke-static {}, Landroid/graphics/BlockLayout;->hasThaiDict()Z

    move-result v0

    sput-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    .line 77
    sget-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    sput v0, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 115
    new-instance v0, Landroid/graphics/Text;

    invoke-direct {v0}, Landroid/graphics/Text;-><init>()V

    sput-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    .line 118
    new-instance v0, Landroid/graphics/BlockLayout;

    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-direct {v0, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;)V

    sput-object v0, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    .line 121
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    .line 124
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    .line 2107
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [S

    const/16 v2, 0x7fff

    aput-short v2, v1, v3

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2111
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([S)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 70
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 71
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 77
    goto :goto_1

    .line 2111
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0xfft 0x7ft
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 246
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 247
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "dynamicAlignment"

    .prologue
    .line 257
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 258
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 10
    .parameter "text"
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
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 616
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 617
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 618
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 619
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 620
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/Layout;->choosehtv:[I

    .line 2071
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2103
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/text/Layout;->mDynamicAlignment:Z

    .line 269
    if-gez p3, :cond_0

    .line 271
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 274
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Landroid/text/Layout;->mIncludepad:Z

    .line 275
    if-nez p8, :cond_1

    move v2, p3

    :goto_0
    iput v2, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 276
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p10

    .line 278
    invoke-virtual/range {v2 .. v9}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 279
    return-void

    :cond_1
    move/from16 v2, p9

    .line 275
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 28
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 719
    :cond_0
    return-void

    .line 629
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    check-cast v6, Landroid/text/Spanned;

    .line 631
    .local v6, spanned:Landroid/text/Spanned;
    const/16 v27, 0x0

    .line 633
    .local v27, vDiff:I
    if-eqz v6, :cond_0

    .line 634
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v6

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LineHeightSpan;

    .line 636
    .local v20, lineHeightSpans:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_0

    .line 637
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 640
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 641
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 642
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 643
    new-instance v5, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v5}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    .line 647
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v14

    .line 648
    .local v14, firstParagraph:I
    const/4 v5, 0x1

    sub-int v5, p2, v5

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v17

    .line 649
    .local v17, lastParagraph:I
    move/from16 v25, v14

    .local v25, paragraph:I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v26, v0

    .line 653
    .local v26, textRange:Landroid/graphics/Text$TextRange;
    move-object/from16 v0, p3

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 654
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v24, v0

    .line 655
    .local v24, paraStart:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move v5, v0

    add-int v23, v24, v5

    .line 656
    .local v23, paraEnd:I
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object v0, v6

    move/from16 v1, v24

    move/from16 v2, v23

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    .line 658
    .local v12, chooseht:[Ljava/lang/Object;
    array-length v5, v12

    if-lez v5, :cond_6

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    array-length v5, v5

    array-length v7, v12

    if-ge v5, v7, :cond_4

    .line 661
    :cond_3
    array-length v5, v12

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->choosehtv:[I

    .line 665
    :cond_4
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v5, v12

    if-ge v7, v5, :cond_6

    .line 666
    aget-object v5, v12, v7

    invoke-interface {v6, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 667
    .local v22, o:I
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    aput v8, v5, v7

    .line 665
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 673
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int v8, v8, v27

    aput v8, v5, v7

    goto :goto_2

    .line 679
    .end local v7           #i:I
    .end local v22           #o:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v13

    .line 680
    .local v13, firstLine:I
    const/4 v5, 0x1

    sub-int v5, v23, v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v16

    .line 681
    .local v16, lastLine:I
    move/from16 v18, v13

    .local v18, line:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_a

    .line 682
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v21

    .line 683
    .local v21, lineStart:I
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v19

    .line 685
    .local v19, lineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/Layout;->zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/Layout;->zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 689
    move/from16 v7, v21

    .restart local v7       #i:I
    :goto_4
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 690
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object v0, v6

    move v1, v7

    move/from16 v2, v19

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 694
    .local v8, next:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v7

    move-object v3, v5

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 699
    const-class v5, Landroid/text/style/LineHeightSpan;

    invoke-interface {v6, v7, v8, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .end local v20           #lineHeightSpans:[Landroid/text/style/LineHeightSpan;
    check-cast v20, [Landroid/text/style/LineHeightSpan;

    .line 700
    .restart local v20       #lineHeightSpans:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_8

    .line 701
    const/4 v15, 0x0

    .local v15, l:I
    :goto_5
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    if-ge v15, v5, :cond_7

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->choosehtv:[I

    move-object v5, v0

    aget v9, v5, v15

    .line 706
    .local v9, spanstartv:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int v10, v5, v27

    .line 707
    .local v10, v:I
    aget-object v5, v20, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 701
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 710
    .end local v9           #spanstartv:I
    .end local v10           #v:I
    :cond_7
    sub-int v5, v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v10, v0

    move-object/from16 v0, p3

    move v1, v7

    move v2, v5

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 712
    .end local v15           #l:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mSmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v7, v0

    .end local v7           #i:I
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 689
    move v7, v8

    .restart local v7       #i:I
    goto/16 :goto_4

    .line 714
    .end local v8           #next:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLmh:Landroid/graphics/Paint$FontMetricsInt;

    move-object v7, v0

    .end local v7           #i:I
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout;->metricsDiff(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;I)I

    move-result v5

    add-int v27, v27, v5

    .line 681
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 649
    .end local v19           #lineEnd:I
    .end local v21           #lineStart:I
    :cond_a
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0
.end method

.method private applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    const/high16 v8, 0x3f80

    .line 724
    iget v5, p0, Landroid/text/Layout;->mSpacingMult:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Landroid/text/Layout;->mSpacingAdd:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 726
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 728
    .local v2, range:Landroid/graphics/Text$TextRange;
    iget-object v0, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 732
    .local v0, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_1
    invoke-virtual {p3, p1, p4, v2, v0}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;Landroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 733
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int v3, v5, v6

    .line 735
    .local v3, rangeEnd:I
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v5, v6

    .line 737
    .local v1, lineHeight:I
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    int-to-float v6, v1

    iget v7, p0, Landroid/text/Layout;->mSpacingMult:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 738
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 739
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    int-to-float v6, v1

    iget v7, p0, Landroid/text/Layout;->mSpacingMult:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 740
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 743
    if-ge v3, p2, :cond_3

    move v5, v3

    :goto_0
    iget v6, v2, Landroid/graphics/Text$TextRange;->index:I

    sub-int v4, v5, v6

    .line 744
    .local v4, updateCount:I
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    invoke-virtual {p3, v5, v4, p4, v0}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 745
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int p1, v5, v6

    .line 746
    if-lt p1, p2, :cond_1

    .line 748
    .end local v0           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .end local v1           #lineHeight:I
    .end local v2           #range:Landroid/graphics/Text$TextRange;
    .end local v3           #rangeEnd:I
    .end local v4           #updateCount:I
    :cond_2
    return-void

    .restart local v0       #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v1       #lineHeight:I
    .restart local v2       #range:Landroid/graphics/Text$TextRange;
    .restart local v3       #rangeEnd:I
    :cond_3
    move v5, p2

    .line 743
    goto :goto_0
.end method

.method private applyParagraph(IILandroid/graphics/Text;Landroid/graphics/BlockLayout;Landroid/text/TextPaint;)V
    .locals 34
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "blockLayout"
    .parameter "paint"

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v30

    .line 424
    .local v30, textLength:I
    sub-int v31, p2, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->setAlignment(IILandroid/text/Layout$Alignment;Z)V

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v31, v0

    if-eqz v31, :cond_13

    .line 427
    const/16 v25, 0x0

    .line 428
    .local v25, spans:[Ljava/lang/Object;
    const/16 v26, 0x0

    .line 429
    .local v26, tabSpans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v19, v0

    .line 430
    .local v19, paragraphRange:Landroid/graphics/Text$TextRange;
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v9

    .line 431
    .local v9, firstParagraph:I
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v11

    .line 432
    .local v11, lastParagraph:I
    const/16 v23, 0x0

    .line 433
    .local v23, spanEnd:I
    const/16 v22, 0x0

    .line 434
    .local v22, spanCount:I
    const/16 v29, 0x0

    .line 435
    .local v29, tabsProcessed:Z
    const/16 v17, 0x0

    .line 437
    .local v17, paragraphHasTabs:Z
    move/from16 v16, v9

    .local v16, paragraph:I
    :goto_0
    move/from16 v0, v16

    move v1, v11

    if-gt v0, v1, :cond_13

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object v5, v0

    .line 439
    .local v5, alignment:Landroid/text/Layout$Alignment;
    const/4 v8, 0x0

    .line 440
    .local v8, firstLineIntent:I
    const/16 v18, 0x0

    .line 441
    .local v18, paragraphIndent:I
    const/4 v12, 0x0

    .line 442
    .local v12, leadingMargin:I
    const/4 v15, 0x0

    .line 444
    .local v15, maxLeadingMarginCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 445
    const/16 v31, 0xa

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 448
    :cond_0
    const/4 v14, 0x0

    .local v14, line:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move v0, v14

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v32, v31, v14

    .line 448
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 452
    :cond_1
    move-object/from16 v0, p3

    move/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Landroid/text/Spanned;

    .line 456
    .local v24, spanned:Landroid/text/Spanned;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move/from16 v0, v31

    move/from16 v1, v23

    if-lt v0, v1, :cond_2

    .line 458
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    const-class v32, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v30

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v23

    .line 461
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    const-class v32, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v23

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v25

    .line 462
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v22, v0

    .line 467
    :cond_2
    if-lez v22, :cond_8

    .line 468
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 469
    aget-object v20, v25, v10

    .line 471
    .local v20, paragraphStyle:Ljava/lang/Object;
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    move/from16 v31, v0

    if-eqz v31, :cond_4

    .line 472
    move-object/from16 v0, v20

    check-cast v0, Landroid/text/style/AlignmentSpan;

    move-object/from16 v21, v0

    .line 473
    .local v21, span:Landroid/text/style/AlignmentSpan;
    invoke-interface/range {v21 .. v21}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 468
    .end local v21           #span:Landroid/text/style/AlignmentSpan;
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 474
    :cond_4
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 475
    move-object/from16 v0, v20

    check-cast v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object v13, v0

    .line 476
    .local v13, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface {v13}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v6

    .line 477
    .local v6, count:I
    const/16 v31, 0x1

    move-object v0, v13

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v12

    .line 478
    const/16 v31, 0x0

    move-object v0, v13

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v31

    add-int v18, v18, v31

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move v0, v6

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x6

    invoke-static/range {v31 .. v32}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 482
    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_6

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    aget v32, v31, v14

    add-int v32, v32, v12

    aput v32, v31, v14

    .line 482
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 485
    :cond_6
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 486
    goto :goto_3

    .end local v6           #count:I
    .end local v13           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_7
    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v31, v0

    if-eqz v31, :cond_3

    .line 487
    move-object/from16 v0, v20

    check-cast v0, Landroid/text/style/LeadingMarginSpan;

    move-object v13, v0

    .line 488
    .local v13, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    const/16 v31, 0x1

    move-object v0, v13

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v31

    add-int v8, v8, v31

    .line 489
    const/16 v31, 0x0

    move-object v0, v13

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v31

    add-int v18, v18, v31

    goto/16 :goto_3

    .line 498
    .end local v10           #i:I
    .end local v13           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    .end local v20           #paragraphStyle:Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraphDirection(I)I

    move-result v7

    .line 502
    .local v7, direction:I
    if-nez v7, :cond_9

    .line 503
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getAlignment(ILandroid/graphics/Text$TextRange;)I

    move-result v31

    packed-switch v31, :pswitch_data_0

    .line 520
    :cond_9
    :goto_5
    const/16 v31, 0x1

    move v0, v7

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 521
    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v0, v5

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 522
    :cond_a
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    if-ge v10, v15, :cond_b

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    aget v32, v31, v10

    sub-int v32, v32, v18

    aput v32, v31, v10

    .line 522
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 509
    .end local v10           #i:I
    :pswitch_0
    const/4 v7, 0x1

    .line 510
    goto :goto_5

    .line 513
    :pswitch_1
    const/4 v7, -0x1

    .line 514
    goto :goto_5

    .line 525
    .restart local v10       #i:I
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 527
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    sub-int v33, v8, v18

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setIndent(III)V

    .line 530
    .end local v10           #i:I
    :cond_c
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setLeftIndent(III)V

    .line 546
    :goto_7
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object v3, v5

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->setAlignment(IILandroid/text/Layout$Alignment;Z)V

    .line 552
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v33, v0

    add-int v32, v32, v33

    const-class v33, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v24

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .end local v26           #tabSpans:[Landroid/text/style/TabStopSpan;
    check-cast v26, [Landroid/text/style/TabStopSpan;

    .line 556
    .restart local v26       #tabSpans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_12

    .line 557
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 558
    .local v27, tabStops:[I
    const/16 v28, 0x0

    .local v28, tabStopsCount:I
    :goto_8
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    .line 559
    aget-object v31, v26, v28

    invoke-interface/range {v31 .. v31}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v31

    aput v31, v27, v28

    .line 558
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 533
    .end local v27           #tabStops:[I
    .end local v28           #tabStopsCount:I
    :cond_d
    sget-object v31, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object v0, v5

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mDynamicAlignment:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 534
    :cond_e
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    if-ge v10, v15, :cond_f

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v31, v0

    aget v32, v31, v10

    sub-int v32, v32, v18

    aput v32, v31, v10

    .line 534
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 537
    :cond_f
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 539
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    sub-int v33, v8, v18

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setIndent(III)V

    .line 542
    .end local v10           #i:I
    :cond_10
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Text;->setRightIndent(III)V

    goto/16 :goto_7

    .line 561
    .restart local v27       #tabStops:[I
    .restart local v28       #tabStopsCount:I
    :cond_11
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v31, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Text$TextRange;->count:I

    move/from16 v32, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v27

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->setTabStops(II[II)V

    .line 437
    .end local v27           #tabStops:[I
    .end local v28           #tabStopsCount:I
    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 570
    .end local v5           #alignment:Landroid/text/Layout$Alignment;
    .end local v7           #direction:I
    .end local v8           #firstLineIntent:I
    .end local v9           #firstParagraph:I
    .end local v11           #lastParagraph:I
    .end local v12           #leadingMargin:I
    .end local v14           #line:I
    .end local v15           #maxLeadingMarginCount:I
    .end local v16           #paragraph:I
    .end local v17           #paragraphHasTabs:Z
    .end local v18           #paragraphIndent:I
    .end local v19           #paragraphRange:Landroid/graphics/Text$TextRange;
    .end local v22           #spanCount:I
    .end local v23           #spanEnd:I
    .end local v24           #spanned:Landroid/text/Spanned;
    .end local v25           #spans:[Ljava/lang/Object;
    .end local v26           #tabSpans:[Landroid/text/style/TabStopSpan;
    .end local v29           #tabsProcessed:Z
    :cond_13
    const/16 v31, 0x14

    move-object/from16 v0, p4

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/BlockLayout;->setTabStop(I)V

    .line 571
    return-void

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compose(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 354
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 355
    return-void
.end method

.method private compose(Landroid/text/TextPaint;I)V
    .locals 2
    .parameter "paint"
    .parameter "width"

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;II)I

    .line 361
    :cond_0
    return-void
.end method

.method private copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "d"
    .parameter "s"

    .prologue
    .line 591
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 592
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 593
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 594
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 595
    return-void
.end method

.method private static decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "text"
    .parameter "blockText"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "workFontMetrics"

    .prologue
    .line 303
    instance-of v2, p2, Landroid/text/Spanned;

    if-nez v2, :cond_1

    .line 304
    sub-int v2, p1, p0

    invoke-virtual {p3, p0, v2, p4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 315
    :cond_0
    return-void

    .line 308
    :cond_1
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object v1, v0

    .line 310
    .local v1, sp:Landroid/text/Spanned;
    move v3, p0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 311
    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v3, p1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .local v4, next:I
    move-object v2, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 312
    invoke-static/range {v1 .. v7}, Landroid/text/Layout;->each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 310
    move v3, v4

    goto :goto_0
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V
    .locals 22
    .parameter "canvas"
    .parameter "paint"
    .parameter "workpaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 930
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 931
    .local v17, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v0

    check-cast v12, Landroid/text/Spanned;

    .line 932
    .local v12, spanned:Landroid/text/Spanned;
    const/16 v18, 0x0

    .line 933
    .local v18, spanCount:I
    const/16 v20, 0x0

    .line 934
    .local v20, spans:[Ljava/lang/Object;
    const/16 v19, 0x0

    .line 935
    .local v19, spanEnd:I
    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 938
    .local v21, textLength:I
    move/from16 v15, p4

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, p5

    if-gt v0, v1, :cond_2

    .line 939
    move/from16 v13, v17

    .line 940
    .local v13, start:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 941
    .local v14, end:I
    move/from16 v17, v14

    .line 943
    move v0, v13

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 944
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object v0, v12

    move v1, v13

    move/from16 v2, v21

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v19

    .line 946
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    move-object v0, v12

    move v1, v13

    move/from16 v2, v19

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    .line 947
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 950
    :cond_0
    if-lez v18, :cond_1

    .line 951
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 952
    .local v9, ltop:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    .line 953
    .local v11, lbottom:I
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v10

    .line 955
    .local v10, lbaseline:I
    const/16 v16, 0x0

    .local v16, n:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 956
    aget-object v4, v20, v16

    check-cast v4, Landroid/text/style/LineBackgroundSpan;

    .line 958
    .local v4, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v8, v0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v4 .. v15}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 955
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 938
    .end local v4           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    .end local v11           #lbottom:I
    .end local v16           #n:I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 963
    .end local v13           #start:I
    .end local v14           #end:I
    :cond_2
    return-void
.end method

.method private drawTopLayerSpans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V
    .locals 14
    .parameter "canvas"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 967
    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 968
    .local v8, end:I
    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    .line 970
    .local v11, lbottom:I
    move/from16 v6, p4

    .local v6, line:I
    :goto_0
    move v0, v6

    move/from16 v1, p5

    if-gt v0, v1, :cond_0

    .line 971
    move v7, v8

    .line 972
    .local v7, start:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    .line 974
    move v9, v11

    .line 975
    .local v9, ltop:I
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    .line 976
    invoke-virtual {p0, v6}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v10

    .line 983
    .local v10, lbaseline:I
    const-class v12, Landroid/text/style/CharacterStyle;

    const-class v13, Landroid/text/style/ReplacementSpan;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Landroid/text/Layout;->drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V

    .line 985
    const-class v12, Landroid/text/style/ParagraphStyle;

    const-class v13, Landroid/text/style/LeadingMarginSpan;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v13}, Landroid/text/Layout;->drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V

    .line 970
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 988
    .end local v7           #start:I
    .end local v9           #ltop:I
    .end local v10           #lbaseline:I
    :cond_0
    return-void
.end method

.method private drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V
    .locals 33
    .parameter "canvas"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "line"
    .parameter "start"
    .parameter "end"
    .parameter "ltop"
    .parameter "lbaseline"
    .parameter "lbottom"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextPaint;",
            "Landroid/text/TextPaint;",
            "IIIIII",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1001
    .local p10, transition:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p11, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object/from16 v23, v0

    .line 1002
    .local v23, blockText:Landroid/graphics/Text;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v7, v0

    check-cast v7, Landroid/text/Spanned;

    .line 1003
    .local v7, spanned:Landroid/text/Spanned;
    move/from16 v9, p5

    .line 1004
    .local v9, next:I
    const/16 v28, 0x0

    .local v28, paragrapghLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v29, v0

    .line 1005
    .local v29, paragraphRight:I
    const/16 v21, 0x0

    .line 1006
    .local v21, par:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    .line 1007
    .local v25, dir:I
    const/16 v32, 0x0

    .line 1008
    .local v32, spans:[Ljava/lang/Object;,"[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    move-object/from16 v24, v0

    .line 1010
    .local v24, charSubstitution:Landroid/graphics/Text$CharSubstitution;
    if-nez v24, :cond_0

    .line 1011
    new-instance v24, Landroid/graphics/Text$CharSubstitution;

    .end local v24           #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    invoke-direct/range {v24 .. v24}, Landroid/graphics/Text$CharSubstitution;-><init>()V

    .line 1012
    .restart local v24       #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    .line 1015
    :cond_0
    if-eqz p5, :cond_1

    const/4 v6, 0x1

    sub-int v6, p5, v6

    invoke-interface {v7, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_2

    .line 1016
    :cond_1
    const/16 v21, 0x1

    .line 1019
    :cond_2
    :goto_0
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_8

    .line 1020
    move/from16 v0, p5

    move v1, v9

    if-lt v0, v1, :cond_3

    .line 1021
    move-object v0, v7

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p10

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1022
    move-object v0, v7

    move/from16 v1, p5

    move v2, v9

    move-object/from16 v3, p11

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v32

    .line 1025
    :cond_3
    const/16 v26, 0x0

    .local v26, i:I
    :goto_1
    move-object/from16 v0, v32

    array-length v0, v0

    move v6, v0

    move/from16 v0, v26

    move v1, v6

    if-ge v0, v1, :cond_7

    .line 1026
    aget-object v30, v32, v26

    .line 1028
    .local v30, span:Ljava/lang/Object;,"TT;"
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/text/style/ReplacementSpan;

    move v6, v0

    if-eqz v6, :cond_5

    .line 1029
    move-object/from16 v0, v30

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v5, v0

    .line 1030
    .local v5, replacementSpan:Landroid/text/style/ReplacementSpan;
    invoke-interface {v7, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v31

    .line 1039
    .local v31, spanStart:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v6

    move/from16 v1, v31

    move-object/from16 v2, v24

    move-object v3, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Text;->getCharSubstitution(ILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I

    move-result v27

    .line 1041
    .local v27, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BlockLayout;->getCharSubstitutionPosition(ILandroid/graphics/Text$CharSubstitution;)V

    .line 1043
    if-eqz v27, :cond_4

    .line 1044
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1045
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Text$CharSubstitution;->x:I

    move v6, v0

    int-to-float v10, v6

    move-object/from16 v6, p1

    move/from16 v8, p5

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move-object/from16 v14, p3

    invoke-virtual/range {v5 .. v14}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v5           #replacementSpan:Landroid/text/style/ReplacementSpan;
    .end local v27           #id:I
    .end local v31           #spanStart:I
    :cond_4
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1050
    :cond_5
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move v6, v0

    if-eqz v6, :cond_4

    .line 1051
    move-object/from16 v0, v30

    check-cast v0, Landroid/text/style/LeadingMarginSpan;

    move-object v10, v0

    .line 1052
    .local v10, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v6, -0x1

    move/from16 v0, v25

    move v1, v6

    if-ne v0, v1, :cond_6

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, v29

    move/from16 v14, v25

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, v7

    move/from16 v19, p5

    move/from16 v20, v9

    move-object/from16 v22, p0

    .line 1053
    invoke-interface/range {v10 .. v22}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1055
    move-object v0, v10

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    sub-int v29, v29, v6

    goto :goto_2

    :cond_6
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, v28

    move/from16 v14, v25

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, v7

    move/from16 v19, p5

    move/from16 v20, v9

    move-object/from16 v22, p0

    .line 1057
    invoke-interface/range {v10 .. v22}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1059
    move-object v0, v10

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v28, v28, v6

    goto :goto_2

    .line 1019
    .end local v10           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v30           #span:Ljava/lang/Object;,"TT;"
    :cond_7
    move/from16 p5, v9

    goto/16 :goto_0

    .line 1064
    .end local v26           #i:I
    :cond_8
    return-void

    .line 1048
    .restart local v5       #replacementSpan:Landroid/text/style/ReplacementSpan;
    .restart local v26       #i:I
    .restart local v30       #span:Ljava/lang/Object;,"TT;"
    .restart local v31       #spanStart:I
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 9
    .parameter "text"
    .parameter "blockText"
    .parameter "start"
    .parameter "end"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "workFm"

    .prologue
    .line 319
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p0, p2, p3, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 321
    .local v3, spans:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 322
    .local v1, replacementSpan:Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    iput v2, p4, Landroid/text/TextPaint;->bgColor:I

    .line 323
    const/4 v2, 0x0

    iput v2, p4, Landroid/text/TextPaint;->baselineShift:I

    .line 324
    invoke-virtual {p5, p4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 326
    array-length p4, v3

    .end local p4
    if-lez p4, :cond_2

    .line 327
    const/4 p4, 0x0

    .local p4, i:I
    :goto_0
    array-length v2, v3

    if-ge p4, v2, :cond_1

    .line 328
    aget-object v2, v3, p4

    check-cast v2, Landroid/text/style/CharacterStyle;

    .line 330
    .local v2, span:Landroid/text/style/CharacterStyle;
    instance-of v4, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_0

    .line 331
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    move-object v1, v0

    .line 327
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {v2, p5}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 337
    .end local v2           #span:Landroid/text/style/CharacterStyle;
    :cond_1
    if-eqz v1, :cond_2

    .line 339
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 340
    .local v8, spanStart:I
    invoke-interface {p0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p4

    .line 342
    .local p4, spanEnd:I
    sub-int v2, p4, v8

    if-lez v2, :cond_2

    move-object v2, p5

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    .line 343
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    .end local v3           #spans:[Ljava/lang/Object;
    move-result v7

    .line 344
    .local v7, width:I
    sub-int v4, p4, v8

    const/16 v5, 0x2a

    move-object v2, p1

    move v3, v8

    move-object v6, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Text;->setCharSubstitution(IICLandroid/graphics/Paint$FontMetricsInt;I)I

    .line 350
    .end local v7           #width:I
    .end local v8           #spanStart:I
    .end local p4           #spanEnd:I
    :cond_2
    sub-int p0, p3, p2

    invoke-virtual {p1, p2, p0, p5}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 351
    .end local p0
    return-void
.end method

.method private ellipsize(III[CI)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "line"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 1753
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1755
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 1777
    :cond_0
    return-void

    .line 1759
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1760
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1762
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1765
    if-ne v4, v3, :cond_3

    .line 1766
    const/16 v1, 0x2026

    .line 1771
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 1773
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1774
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1762
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1768
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 10
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 133
    .local v0, need:F
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 136
    sget-object v9, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    monitor-enter v9

    .line 137
    move p1, p1

    .local p1, i:I
    move v7, v0

    .end local v0           #need:F
    .local v7, need:F
    :goto_0
    if-gt p1, p2, :cond_1

    .line 138
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    .line 140
    .local v0, next:I
    if-gez v0, :cond_7

    .line 141
    move v0, p2

    move v8, v0

    .line 143
    .end local v0           #next:I
    .local v8, next:I
    :goto_1
    sget-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    sget-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v1, 0x0

    sget-object v2, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v2}, Landroid/graphics/Text;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->removeText(II)V

    .line 147
    :cond_0
    invoke-interface {p0, p1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    .local v2, subSeq:Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .end local p1           #i:I
    if-lez p1, :cond_6

    .line 149
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 151
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {p1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    .line 153
    .local v1, len:I
    const/4 v0, 0x0

    sget-object v3, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    sget-object v5, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 157
    sget-object p1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Text;->setAlignment(III)V

    .line 159
    .end local v2           #subSeq:Ljava/lang/CharSequence;
    sget-object p1, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    const/16 v0, 0x7fff

    invoke-virtual {p1, p3, v0}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;I)I

    move-result p1

    .line 162
    .local p1, advanceWidth:I
    int-to-float v0, p1

    cmpl-float v0, v0, v7

    if-lez v0, :cond_6

    .line 163
    int-to-float p1, p1

    .end local v7           #need:F
    .local p1, need:F
    move v0, p1

    .line 167
    .end local v1           #len:I
    .end local p1           #need:F
    .local v0, need:F
    :goto_2
    add-int/lit8 p1, v8, 0x1

    .line 137
    .end local v8           #next:I
    .local p1, next:I
    move p1, p1

    .local p1, i:I
    move v7, v0

    .end local v0           #need:F
    .restart local v7       #need:F
    goto :goto_0

    .line 169
    :cond_1
    monitor-exit v9

    move p0, v7

    .line 187
    .end local v7           #need:F
    .local p0, need:F
    :goto_3
    return p0

    .line 169
    .end local p0           #need:F
    .end local p1           #i:I
    .restart local v7       #need:F
    :catchall_0
    move-exception p0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 172
    .end local v7           #need:F
    .restart local v0       #need:F
    .local p0, source:Ljava/lang/CharSequence;
    .local p1, start:I
    :cond_2
    move p1, p1

    .local p1, i:I
    :goto_4
    if-gt p1, p2, :cond_5

    .line 173
    const/16 v1, 0xa

    invoke-static {p0, v1, p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    .line 175
    .local v1, next:I
    if-gez v1, :cond_3

    .line 176
    move v1, p2

    .line 178
    :cond_3
    invoke-virtual {p3, p0, p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 180
    .local p1, w:F
    cmpl-float v2, p1, v0

    if-lez v2, :cond_4

    .line 181
    move p1, p1

    .end local v0           #need:F
    .local p1, need:F
    move v0, p1

    .line 183
    .end local p1           #need:F
    .restart local v0       #need:F
    :cond_4
    add-int/lit8 p1, v1, 0x1

    .line 172
    .end local v1           #next:I
    .local p1, next:I
    move p1, p1

    .local p1, i:I
    goto :goto_4

    :cond_5
    move p0, v0

    .end local v0           #need:F
    .local p0, need:F
    goto :goto_3

    .end local p1           #i:I
    .restart local v7       #need:F
    .restart local v8       #next:I
    .local p0, source:Ljava/lang/CharSequence;
    :cond_6
    move v0, v7

    .end local v7           #need:F
    .restart local v0       #need:F
    goto :goto_2

    .end local v8           #next:I
    .local v0, next:I
    .restart local v7       #need:F
    .restart local p1       #i:I
    :cond_7
    move v8, v0

    .end local v0           #next:I
    .restart local v8       #next:I
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getLineMax(I[Ljava/lang/Object;Z)F
    .locals 5
    .parameter "line"
    .parameter "tabs"
    .parameter "full"

    .prologue
    .line 1324
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1327
    .local v1, start:I
    if-eqz p3, :cond_1

    .line 1328
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 1332
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v2

    .line 1334
    .local v2, tab:Z
    if-nez p2, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1335
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 1338
    :cond_0
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-static {v3, v1, v0, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    return v3

    .line 1330
    .end local v0           #end:I
    .end local v2           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 4
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x1

    .line 1445
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1448
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    if-le p3, p2, :cond_1

    .line 1449
    sub-int v2, p3, v3

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1451
    .local v0, ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 1452
    sub-int v2, p3, v3

    .line 1461
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1455
    .restart local v0       #ch:C
    :cond_0
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    .end local v0           #ch:C
    :cond_1
    move v2, p3

    .line 1461
    goto :goto_1

    .line 1448
    .restart local v0       #ch:C
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "blockText"
    .parameter "start"
    .parameter "paint"
    .parameter "fm"

    .prologue
    .line 607
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;)V

    .line 608
    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 609
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 610
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 611
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 612
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 613
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 614
    return-void
.end method

.method private getPrimaryHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailingEdge"

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/BlockLayout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method private getSecondaryHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailingEdge"

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/BlockLayout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method static isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z
    .locals 2
    .parameter "s"
    .parameter "index"
    .parameter "len"

    .prologue
    const/4 v1, 0x1

    .line 2049
    if-ge p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2051
    sub-int v0, p1, v1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2056
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private metricsDiff(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;I)I
    .locals 3
    .parameter "lm"
    .parameter "lmh"
    .parameter "line"

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 583
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 586
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private setAlignment(IILandroid/text/Layout$Alignment;Z)V
    .locals 3
    .parameter "index"
    .parameter "count"
    .parameter "alignment"
    .parameter "setDynamic"

    .prologue
    const/4 v2, 0x2

    .line 1974
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-nez v0, :cond_0

    .line 2000
    :goto_0
    return-void

    .line 1977
    :cond_0
    if-nez p3, :cond_1

    .line 1978
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1981
    :cond_1
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1983
    :pswitch_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0, p1, p2, v2}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1986
    :pswitch_1
    if-eqz p4, :cond_2

    .line 1987
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1989
    :cond_2
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1993
    :pswitch_2
    if-eqz p4, :cond_3

    .line 1994
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1996
    :cond_3
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0

    .line 1981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "lineMetrics"
    .parameter "fm"

    .prologue
    .line 599
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 600
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 601
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 602
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 603
    return-void
.end method

.method private zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 574
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 575
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 576
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 577
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 578
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 854
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 19
    .parameter "canvas"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 863
    .local v18, tempRect:Landroid/graphics/Rect;
    if-nez v18, :cond_0

    .line 864
    new-instance v18, Landroid/graphics/Rect;

    .end local v18           #tempRect:Landroid/graphics/Rect;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    .line 867
    .restart local v18       #tempRect:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 927
    :cond_1
    :goto_0
    return-void

    .line 871
    :cond_2
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 872
    .local v16, dtop:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    .line 874
    .local v15, dbottom:I
    const/4 v12, 0x0

    .line 875
    .local v12, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v14

    .line 876
    .local v14, bottom:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v11, v0

    .line 877
    .local v11, left:I
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v13, v0

    .line 879
    .local v13, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v6, v0

    .line 880
    .local v6, workpaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v5, v0

    .line 881
    .local v5, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v9, v0

    .line 883
    .local v9, blockLayout:Landroid/graphics/BlockLayout;
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_3

    .line 884
    move/from16 v12, v16

    .line 886
    :cond_3
    if-ge v15, v14, :cond_4

    .line 887
    move v14, v15

    .line 890
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    move-object v3, v0

    invoke-static {v5, v3}, Landroid/graphics/Text;->attributeChanged(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 891
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v17

    .line 892
    .local v17, lineCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 895
    const/4 v3, 0x1

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_5

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-static {v4, v5}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move v7, v0

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;I)V

    .line 901
    .end local v17           #lineCount:I
    :cond_5
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 902
    .local v7, first:I
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 904
    .local v8, last:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 905
    invoke-direct/range {v3 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V

    .line 910
    :cond_6
    if-eqz p2, :cond_8

    .line 911
    if-eqz p4, :cond_7

    .line 912
    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 915
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 917
    if-eqz p4, :cond_8

    .line 918
    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v0, v0

    move v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    move-object/from16 v10, p1

    .line 922
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/BlockLayout;->draw(Landroid/graphics/Canvas;IIII)V

    .line 924
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 925
    invoke-direct/range {v3 .. v8}, Landroid/text/Layout;->drawTopLayerSpans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 296
    return-void

    .line 289
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->dispose()V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "point"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1578
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1579
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1582
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 1583
    invoke-virtual {p0, v0, p2, p3}, Landroid/text/Layout;->getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 1584
    return-void
.end method

.method public getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "cursor"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1594
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p1, Landroid/text/Layout$CursorPosition;->offset:I

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IILandroid/graphics/Path;II)V

    .line 1596
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method final getEllipsisCountDefault(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisCount(I)I

    move-result v0

    return v0
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method final getEllipsisStartDefault(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1953
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1115
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1484
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1475
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1468
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .parameter "line"
    .parameter "bounds"

    .prologue
    .line 1154
    if-eqz p2, :cond_0

    .line 1155
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1156
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1157
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1158
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1160
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method getLineContainsTabDefault(I)Z
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, 0x1

    .line 2003
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2004
    .local v3, start:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    sub-int v1, v5, v6

    .line 2007
    .local v1, end:I
    invoke-virtual {p0}, Landroid/text/Layout;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    .line 2009
    .local v4, text:Ljava/lang/String;
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2011
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2012
    .local v0, ch:C
    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    move v5, v6

    .line 2016
    .end local v0           #ch:C
    :goto_1
    return v5

    .line 2009
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2016
    .end local v0           #ch:C
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method final getLineDirectionsDefault(I)Landroid/text/Layout$Directions;
    .locals 3
    .parameter "line"

    .prologue
    .line 1932
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 1936
    .local v0, blockLayout:Landroid/graphics/BlockLayout;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isValidLine(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1938
    const/4 p1, 0x0

    .line 1941
    :cond_0
    new-instance v1, Landroid/text/Layout$Directions;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDirections(I)[S

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/Layout$Directions;-><init>([S)V

    return-object v1
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1429
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1386
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1387
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1389
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1390
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1392
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1393
    move v1, v0

    goto :goto_0

    .line 1395
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1398
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1399
    const/4 v3, 0x0

    .line 1403
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_1
    return v3

    .restart local v1       #high:I
    .restart local v2       #low:I
    :cond_2
    move v3, v2

    .line 1401
    goto :goto_1

    .line 1403
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForOffset(I)I

    move-result v3

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 1359
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1360
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1362
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1363
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1365
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1366
    move v1, v0

    goto :goto_0

    .line 1368
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1371
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1372
    const/4 v3, 0x0

    .line 1376
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_1
    return v3

    .restart local v1       #high:I
    .restart local v2       #low:I
    :cond_2
    move v3, v2

    .line 1374
    goto :goto_1

    .line 1376
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForVertical(I)I

    move-result v3

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 1254
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_4

    .line 1255
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1256
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1258
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 1259
    if-ne v1, v7, :cond_0

    .line 1260
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 1276
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :goto_0
    return v5

    .restart local v0       #align:Landroid/text/Layout$Alignment;
    .restart local v1       #dir:I
    :cond_0
    move v5, v6

    .line 1262
    goto :goto_0

    .line 1263
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1264
    if-ne v1, v7, :cond_2

    move v5, v6

    .line 1265
    goto :goto_0

    .line 1267
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1269
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1270
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1271
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1273
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0

    .line 1276
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    .end local v2           #left:I
    .end local v3           #max:I
    .end local v4           #right:I
    :cond_4
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getLineLeft(I)F

    move-result v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1317
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1319
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineMax(I)F

    move-result v0

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7
    .parameter "line"

    .prologue
    const/4 v6, -0x1

    .line 1285
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_4

    .line 1286
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1287
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1289
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 1290
    if-ne v1, v6, :cond_0

    .line 1291
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 1307
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :goto_0
    return v5

    .line 1293
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    .restart local v1       #dir:I
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    .line 1294
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1295
    if-ne v1, v6, :cond_2

    .line 1296
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 1298
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1300
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1301
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1302
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1304
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0

    .line 1307
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    .end local v2           #left:I
    .end local v3           #max:I
    .end local v4           #right:I
    :cond_4
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getLineRight(I)F

    move-result v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1437
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1438
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    .line 1440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineVisibleEnd(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLineWidth(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 1346
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1347
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1349
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineWidth(I)F

    move-result v0

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 4
    .parameter "line"
    .parameter "horiz"

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1413
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    const/4 v1, 0x0

    .line 1415
    .local v1, offset:I
    if-nez v0, :cond_0

    .line 1416
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1419
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    float-to-int v3, p2

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1420
    invoke-virtual {v0}, Landroid/graphics/BlockLayout$CaretPosition;->getCharacterIndex()I

    move-result v1

    .line 1422
    :cond_1
    return v1
.end method

.method public getOffsetToLeftOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1494
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1495
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1498
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1499
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1500
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1502
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1503
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1504
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1516
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1520
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1521
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1523
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToLeftOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1524
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1525
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1526
    return-void
.end method

.method public getOffsetToRightOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1533
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1535
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1539
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1540
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1542
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1544
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1545
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1547
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1559
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1563
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1564
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1566
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToRightOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1567
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1568
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1569
    return-void
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 9
    .parameter "line"

    .prologue
    const/4 v8, 0x1

    .line 1629
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_1

    .line 1630
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1632
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v5, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v5, :cond_0

    .line 1633
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    .line 1634
    .local v2, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    const-class v7, Landroid/text/style/AlignmentSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/AlignmentSpan;

    .line 1638
    .local v4, spans:[Landroid/text/style/AlignmentSpan;
    array-length v3, v4

    .line 1639
    .local v3, spanLength:I
    if-lez v3, :cond_0

    .line 1640
    sub-int v5, v3, v8

    aget-object v5, v4, v5

    invoke-interface {v5}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .end local v2           #sp:Landroid/text/Spanned;
    .end local v3           #spanLength:I
    .end local v4           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    move-object v5, v0

    .line 1680
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :goto_0
    return-object v5

    .line 1648
    :cond_1
    if-gez p1, :cond_3

    .line 1649
    const/4 p1, 0x0

    .line 1654
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getParagraphAlignment(I)I

    move-result v1

    .line 1660
    .local v1, alignment:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1661
    packed-switch v1, :pswitch_data_0

    .line 1669
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1650
    .end local v1           #alignment:I
    :cond_3
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 1651
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    sub-int p1, v5, v8

    goto :goto_1

    .line 1663
    .restart local v1       #alignment:I
    :pswitch_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1665
    :pswitch_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1667
    :pswitch_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1672
    :cond_4
    packed-switch v1, :pswitch_data_1

    .line 1680
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1674
    :pswitch_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1676
    :pswitch_4
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1678
    :pswitch_5
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 1661
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1672
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 10
    .parameter "line"

    .prologue
    const/4 v9, 0x1

    .line 1690
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_0

    .line 1691
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphLeft(I)I

    move-result v7

    .line 1714
    :goto_0
    return v7

    .line 1693
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1695
    .local v0, dir:I
    const/4 v2, 0x0

    .line 1697
    .local v2, left:I
    const/4 v4, 0x0

    .line 1698
    .local v4, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1699
    .local v3, off:I
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    sub-int v8, v3, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 1700
    :cond_1
    const/4 v4, 0x1

    .line 1702
    :cond_2
    if-ne v0, v9, :cond_3

    .line 1703
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    .line 1704
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1705
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1708
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 1709
    aget-object v7, v6, v1

    invoke-interface {v7, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 1708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    move v7, v2

    .line 1714
    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1722
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_0

    .line 1723
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphRight(I)I

    move-result v7

    .line 1748
    :goto_0
    return v7

    .line 1725
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1727
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1729
    .local v4, right:I
    const/4 v3, 0x0

    .line 1730
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1731
    .local v2, off:I
    if-eqz v2, :cond_1

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 1732
    :cond_1
    const/4 v3, 0x1

    .line 1735
    :cond_2
    const/4 v7, -0x1

    if-ne v0, v7, :cond_3

    .line 1736
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    .line 1737
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1738
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1742
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 1743
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1742
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v5           #sp:Landroid/text/Spanned;
    .end local v6           #spans:[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    move v7, v4

    .line 1748
    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1237
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/BlockLayout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "dest"

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1606
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1610
    :goto_0
    return-void

    .line 1608
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    goto :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 1102
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1107
    return-void
.end method

.method initLayout()V
    .locals 4

    .prologue
    .line 195
    new-instance v2, Landroid/graphics/Text$TextRange;

    invoke-direct {v2}, Landroid/graphics/Text$TextRange;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 197
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 199
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    .line 201
    sget v1, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 203
    .local v1, flags:I
    iget-boolean v2, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v2, :cond_0

    .line 204
    or-int/lit8 v1, v1, 0x2

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_1

    .line 208
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v3, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 228
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_2

    .line 229
    const/4 v0, 0x0

    .line 236
    .local v0, alignment:I
    :goto_1
    invoke-static {}, Landroid/graphics/Text;->obtain()Landroid/graphics/Text;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 237
    iget-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/16 v3, 0x14

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/BlockLayout;->obtain(Landroid/graphics/Text;III)Landroid/graphics/BlockLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 238
    return-void

    .line 210
    .end local v0           #alignment:I
    :pswitch_0
    or-int/lit8 v1, v1, 0x20

    .line 211
    goto :goto_0

    .line 213
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 214
    goto :goto_0

    .line 216
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 217
    goto :goto_0

    .line 219
    :pswitch_3
    or-int/lit8 v1, v1, 0x8

    .line 220
    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    .line 231
    const/4 v0, 0x1

    .restart local v0       #alignment:I
    goto :goto_1

    .line 233
    .end local v0           #alignment:I
    :cond_3
    const/4 v0, 0x2

    .restart local v0       #alignment:I
    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method isValidLine(I)Z
    .locals 3
    .parameter "line"

    .prologue
    .line 2045
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/Layout;->isValidLine(III)Z

    move-result v0

    return v0
.end method

.method isValidLine(III)Z
    .locals 1
    .parameter "line"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 2036
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 2037
    :cond_0
    const/4 v0, 0x0

    .line 2040
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method reflow(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 380
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 381
    return-void
.end method

.method reflow(Ljava/lang/CharSequence;III)V
    .locals 18
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "width"

    .prologue
    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object v8, v0

    .line 395
    .local v8, blockText:Landroid/graphics/Text;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move-object v15, v0

    .line 396
    .local v15, blockLayout:Landroid/graphics/BlockLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object v9, v0

    .line 397
    .local v9, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v10, v0

    .line 398
    .local v10, workpaint:Landroid/text/TextPaint;
    sub-int v17, p3, p2

    .line 400
    .local v17, alteredCount:I
    move-object/from16 v7, p1

    .line 402
    .local v7, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    .line 404
    if-eqz v9, :cond_0

    .line 405
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-virtual {v5, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 409
    :cond_0
    if-lez v17, :cond_1

    if-eqz v9, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object v11, v0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-static/range {v5 .. v11}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 411
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object v14, v8

    move-object/from16 v16, v9

    .line 412
    invoke-direct/range {v11 .. v16}, Landroid/text/Layout;->applyParagraph(IILandroid/graphics/Text;Landroid/graphics/BlockLayout;Landroid/text/TextPaint;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/Layout;->applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    .line 416
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 417
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 368
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 371
    :cond_0
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "s"
    .parameter "width"

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 377
    :cond_0
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 762
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 763
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "dynamicAlignment"

    .prologue
    .line 770
    if-gez p3, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 774
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 775
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 776
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 777
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 778
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 779
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 780
    iput-boolean p7, p0, Landroid/text/Layout;->mDynamicAlignment:Z

    .line 781
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "dynamicAlignment"

    .prologue
    .line 756
    iput-boolean p7, p0, Landroid/text/Layout;->mIncludepad:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p8

    .line 757
    invoke-virtual/range {v0 .. v7}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 758
    return-void
.end method

.method updateText(Ljava/lang/CharSequence;IIIZ)V
    .locals 9
    .parameter "chSeq"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "compose"

    .prologue
    .line 794
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 795
    .local v0, text:Landroid/graphics/Text;
    iget-object v6, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 796
    .local v6, paint:Landroid/text/TextPaint;
    iget-object v5, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 797
    .local v5, matchRange:Landroid/graphics/Text$TextRange;
    const/4 v3, 0x0

    .line 798
    .local v3, mTmpBuf:[C
    const/4 v4, 0x0

    .line 800
    .local v4, offset:I
    if-eqz p1, :cond_0

    if-nez v6, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 806
    add-int v1, p2, p4

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v3, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 808
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 809
    move v7, p2

    .line 810
    .local v7, start:I
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, v1

    .local v2, end:I
    move v1, p2

    .line 812
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Text;->compareTo(II[CILandroid/graphics/Text$TextRange;)I

    .line 813
    iget v4, v5, Landroid/graphics/Text$TextRange;->count:I

    .line 814
    iget v1, v5, Landroid/graphics/Text$TextRange;->index:I

    iget v2, v5, Landroid/graphics/Text$TextRange;->count:I

    .end local v2           #end:I
    add-int p2, v1, v2

    .line 816
    add-int v1, v7, p4

    sub-int p4, v1, p2

    .line 817
    add-int v1, v7, p3

    sub-int p3, v1, p2

    .line 820
    .end local v7           #start:I
    :cond_2
    if-lez p3, :cond_3

    .line 821
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Text;->removeText(II)V

    .line 824
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    if-eqz p5, :cond_3

    .line 825
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 829
    :cond_3
    if-lez p4, :cond_5

    .line 830
    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    move v8, v1

    .line 832
    .local v8, wasEmpty:Z
    :goto_1
    invoke-virtual {v0, v3, v4, p4, p2}, Landroid/graphics/Text;->insertText([CIII)V

    .line 835
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    if-eqz p5, :cond_5

    .line 836
    if-eqz v8, :cond_4

    .line 837
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 839
    :cond_4
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    .end local v8           #wasEmpty:Z
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0

    .line 830
    :cond_6
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    .line 844
    :catchall_0
    move-exception v1

    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    throw v1
.end method
