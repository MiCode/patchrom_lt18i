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
        Landroid/text/Layout$TabStops;,
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

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field static mGlyphs:[C

.field static mNext:[I

.field static mPos:[F

.field static sBlockLayoutDesired:Landroid/graphics/BlockLayout;

.field private static final sBlockLayoutFlags:I

.field static sBlockTextDesired:Landroid/graphics/Text;

.field static sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

.field private static final sHasThaiDict:Z

.field static sShapePaintDesired:Landroid/text/TextPaint;

.field static sWorkPaintDesired:Landroid/text/TextPaint;


# instance fields
.field mAlignment:Landroid/text/Layout$Alignment;

.field mBlockLayout:Landroid/graphics/BlockLayout;

.field mBlockText:Landroid/graphics/Text;

.field mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

.field mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

.field mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field mEllipsizedWidth:I

.field mIncludepad:Z

.field private mLastUsedPaint:Landroid/text/TextPaint;

.field private mLastUsedSource:Ljava/lang/CharSequence;

.field private mLeadingMargintArray:[I

.field private mLm:Landroid/graphics/Paint$FontMetricsInt;

.field mPaint:Landroid/text/TextPaint;

.field mRange:Landroid/graphics/Text$TextRange;

.field mShapePaint:Landroid/text/TextPaint;

.field private mSm:Landroid/graphics/Paint$FontMetricsInt;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mTempRect:Landroid/graphics/Rect;

.field mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mTmpCursorPos:Landroid/text/Layout$CursorPosition;

.field mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 62
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 67
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 69
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 76
    :goto_0
    invoke-static {}, Landroid/graphics/BlockLayout;->hasThaiDict()Z

    move-result v0

    sput-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    .line 78
    sget-boolean v0, Landroid/text/Layout;->sHasThaiDict:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput v0, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 116
    new-instance v0, Landroid/graphics/Text;

    invoke-direct {v0}, Landroid/graphics/Text;-><init>()V

    sput-object v0, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    .line 119
    new-instance v0, Landroid/graphics/BlockLayout;

    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-direct {v0, v1}, Landroid/graphics/BlockLayout;-><init>(Landroid/graphics/Text;)V

    sput-object v0, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    sput-object v0, Landroid/text/Layout;->sShapePaintDesired:Landroid/text/TextPaint;

    .line 128
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    .line 1033
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Landroid/text/Layout;->mGlyphs:[C

    .line 1034
    sget-object v0, Landroid/text/Layout;->mGlyphs:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    sput-object v0, Landroid/text/Layout;->mPos:[F

    .line 1035
    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Landroid/text/Layout;->mNext:[I

    .line 2363
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2365
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    .line 71
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 72
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2363
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    .line 2365
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"

    .prologue
    .line 281
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 283
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingMult"
    .parameter "spacingAdd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 292
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 294
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 8
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingMult"
    .parameter "spacingAdd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 315
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 685
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 2322
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 317
    if-gez p3, :cond_0

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 321
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Landroid/text/Layout;->mShapePaint:Landroid/text/TextPaint;

    .line 322
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/text/Layout;->mIncludepad:Z

    .line 323
    if-nez p9, :cond_1

    move/from16 p10, p3

    .end local p10
    :cond_1
    move/from16 v0, p10

    iput v0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 324
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 325
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    move v7, p7

    .line 327
    invoke-virtual/range {v1 .. v7}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 328
    return-void
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
    .line 61
    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 30
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v3, :cond_1

    .line 828
    :cond_0
    return-void

    .line 693
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 695
    .local v4, spanned:Landroid/text/Spanned;
    if-eqz v4, :cond_0

    .line 696
    const/4 v15, 0x0

    .line 699
    .local v15, initialCompose:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v27, v0

    .line 700
    .local v27, textRange:Landroid/graphics/Text$TextRange;
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v13

    .line 701
    .local v13, firstParagraph:I
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v9

    if-lez p2, :cond_3

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v3

    const/16 v10, 0xa

    if-ne v3, v10, :cond_3

    const/4 v3, 0x1

    :goto_0
    sub-int v3, v9, v3

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 704
    .local v18, lastParagraph:I
    const/16 v26, 0x0

    .line 711
    .local v26, spans:[Landroid/text/style/LineHeightSpan;
    const/16 v29, 0x0

    .line 712
    .local v29, vDiff:I
    const/16 v21, 0x0

    .line 713
    .local v21, lineTop:[I
    const/16 v25, 0x0

    .line 714
    .local v25, runStartOffset:I
    const/16 v28, 0x0

    .local v28, topLine:I
    const/4 v11, 0x0

    .line 716
    .local v11, bottomLine:I
    move/from16 v24, v13

    .local v24, paragraph:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v18

    if-gt v0, v1, :cond_0

    .line 717
    move-object/from16 v0, p3

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 718
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v10, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v9, v10

    const-class v10, Landroid/text/style/LineHeightSpan;

    invoke-interface {v4, v3, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    .end local v26           #spans:[Landroid/text/style/LineHeightSpan;
    check-cast v26, [Landroid/text/style/LineHeightSpan;

    .line 721
    .restart local v26       #spans:[Landroid/text/style/LineHeightSpan;
    if-eqz v26, :cond_2

    move-object/from16 v0, v26

    array-length v3, v0

    if-gtz v3, :cond_4

    .line 716
    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 701
    .end local v11           #bottomLine:I
    .end local v18           #lastParagraph:I
    .end local v21           #lineTop:[I
    .end local v24           #paragraph:I
    .end local v25           #runStartOffset:I
    .end local v26           #spans:[Landroid/text/style/LineHeightSpan;
    .end local v28           #topLine:I
    .end local v29           #vDiff:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 725
    .restart local v11       #bottomLine:I
    .restart local v18       #lastParagraph:I
    .restart local v21       #lineTop:[I
    .restart local v24       #paragraph:I
    .restart local v25       #runStartOffset:I
    .restart local v26       #spans:[Landroid/text/style/LineHeightSpan;
    .restart local v28       #topLine:I
    .restart local v29       #vDiff:I
    :cond_4
    if-nez v15, :cond_5

    .line 726
    const/4 v15, 0x1

    .line 727
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 730
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v3, :cond_6

    .line 731
    new-instance v3, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v3}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    .line 732
    new-instance v3, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v3}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    .line 735
    :cond_6
    if-nez v21, :cond_8

    .line 737
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v28

    .line 739
    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 740
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 742
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v10, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v9, v10

    if-ne v3, v9, :cond_7

    .line 743
    add-int/lit8 v11, v11, -0x1

    .line 746
    :cond_7
    sub-int v3, v11, v28

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v21, v0

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v25

    .line 750
    :cond_8
    move-object/from16 v0, p3

    move/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 751
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    .line 752
    .local v12, firstLine:I
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 754
    .local v17, lastLine:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    move-object/from16 v0, v27

    iget v9, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v27

    iget v10, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v9, v10

    if-ne v3, v9, :cond_9

    .line 755
    add-int/lit8 v17, v17, -0x1

    .line 758
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 762
    .local v6, lineEnd:I
    move/from16 v19, v12

    .local v19, line:I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    .line 763
    move v5, v6

    .line 764
    .local v5, lineStart:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/text/Layout;->zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    .line 768
    sub-int v3, v19, v28

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int v9, v9, v29

    aput v9, v21, v3

    .line 770
    move v14, v5

    .local v14, i:I
    :goto_3
    if-ge v14, v6, :cond_a

    .line 771
    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v14, v6, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v22

    .line 773
    .local v22, next:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v14, v3, v9}, Landroid/text/Layout;->getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Landroid/text/Layout;->updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 770
    move/from16 v14, v22

    goto :goto_3

    .line 782
    .end local v22           #next:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Landroid/text/Layout;->copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 784
    const/16 v16, 0x0

    .local v16, l:I
    :goto_4
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_e

    .line 791
    aget-object v3, v26, v16

    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v23

    .line 792
    .local v23, o:I
    sub-int v3, v19, v28

    aget v8, v21, v3

    .line 794
    .local v8, v:I
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 795
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 806
    .local v7, spanstartv:I
    :goto_5
    aget-object v3, v26, v16

    instance-of v3, v3, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v3, :cond_d

    .line 807
    aget-object v3, v26, v16

    check-cast v3, Landroid/text/style/LineHeightSpan$WithDensity;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    invoke-interface/range {v3 .. v10}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 784
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 797
    .end local v7           #spanstartv:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v9

    move-object/from16 v0, v27

    invoke-virtual {v3, v9, v0}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 798
    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v20

    .line 799
    .local v20, lineOffset:I
    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 800
    sub-int v3, v20, v28

    aget v7, v21, v3

    .restart local v7       #spanstartv:I
    goto :goto_5

    .line 802
    .end local v7           #spanstartv:I
    :cond_c
    move v7, v8

    .restart local v7       #spanstartv:I
    goto :goto_5

    .line 811
    .end local v20           #lineOffset:I
    :cond_d
    aget-object v3, v26, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-interface/range {v3 .. v9}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_6

    .line 815
    .end local v7           #spanstartv:I
    .end local v8           #v:I
    .end local v23           #o:I
    :cond_e
    move v14, v5

    :goto_7
    if-ge v14, v6, :cond_f

    .line 816
    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v14, v6, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v22

    .line 817
    .restart local v22       #next:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;)V

    .line 818
    sub-int v3, v22, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v3, v9, v10}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 815
    move/from16 v14, v22

    goto :goto_7

    .line 822
    .end local v22           #next:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/Layout;->mSm:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v9, v1}, Landroid/text/Layout;->metricsDiff(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;I)I

    move-result v3

    add-int v29, v29, v3

    .line 762
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2
.end method

.method private applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "blockText"
    .parameter "paint"

    .prologue
    const/high16 v8, 0x3f80

    .line 833
    iget v5, p0, Landroid/text/Layout;->mSpacingMult:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_0

    iget v5, p0, Landroid/text/Layout;->mSpacingAdd:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Text;->getLength()I

    move-result v5

    if-lez v5, :cond_2

    .line 836
    iget-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 838
    .local v2, range:Landroid/graphics/Text$TextRange;
    iget-object v0, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 842
    .local v0, fmi:Landroid/graphics/Paint$FontMetricsInt;
    :cond_1
    invoke-virtual {p3, p1, p4, v2, v0}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;Landroid/graphics/Text$TextRange;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 843
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int v3, v5, v6

    .line 845
    .local v3, rangeEnd:I
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v1, v5, v6

    .line 847
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

    .line 848
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 849
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    int-to-float v6, v1

    iget v7, p0, Landroid/text/Layout;->mSpacingMult:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 850
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/text/Layout;->mSpacingAdd:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 853
    if-ge v3, p2, :cond_3

    .end local v3           #rangeEnd:I
    :goto_0
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    sub-int v4, v3, v5

    .line 854
    .local v4, updateCount:I
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    invoke-virtual {p3, v5, v4, p4, v0}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 855
    iget v5, v2, Landroid/graphics/Text$TextRange;->index:I

    iget v6, v2, Landroid/graphics/Text$TextRange;->count:I

    add-int p1, v5, v6

    .line 856
    if-lt p1, p2, :cond_1

    .line 858
    .end local v0           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .end local v1           #lineHeight:I
    .end local v2           #range:Landroid/graphics/Text$TextRange;
    .end local v4           #updateCount:I
    :cond_2
    return-void

    .restart local v0       #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v1       #lineHeight:I
    .restart local v2       #range:Landroid/graphics/Text$TextRange;
    .restart local v3       #rangeEnd:I
    :cond_3
    move v3, p2

    .line 853
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
    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v32

    .line 480
    .local v32, textLength:I
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v11

    .line 481
    .local v11, firstParagraph:I
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraph(I)I

    move-result v13

    .line 482
    .local v13, lastParagraph:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    move-object/from16 v21, v0

    .line 486
    .local v21, paragraphRange:Landroid/graphics/Text$TextRange;
    move/from16 v18, v11

    .local v18, paragraph:I
    :goto_0
    move/from16 v0, v18

    if-gt v0, v13, :cond_0

    .line 487
    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 489
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v33, v0

    move-object/from16 v0, p3

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Text;->getParagraphDirection(I)I

    move-result v33

    move/from16 v0, v33

    invoke-static {v5, v7, v0}, Landroid/text/Layout;->resolveAlignment(Landroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)I

    move-result v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Text;->setAlignment(III)V

    .line 486
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_12

    .line 497
    const/16 v27, 0x0

    .line 498
    .local v27, spans:[Ljava/lang/Object;
    const/16 v28, 0x0

    .line 500
    .local v28, tabSpans:[Landroid/text/style/TabStopSpan;
    const/16 v25, 0x0

    .line 501
    .local v25, spanEnd:I
    const/16 v24, 0x0

    .line 502
    .local v24, spanCount:I
    const/16 v31, 0x0

    .line 503
    .local v31, tabsProcessed:Z
    const/16 v19, 0x0

    .line 505
    .local v19, paragraphHasTabs:Z
    move/from16 v18, v11

    :goto_1
    move/from16 v0, v18

    if-gt v0, v13, :cond_12

    .line 506
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 507
    .local v6, alignment:Landroid/text/Layout$Alignment;
    const/4 v10, 0x0

    .line 508
    .local v10, firstLineIntent:I
    const/16 v20, 0x0

    .line 509
    .local v20, paragraphIndent:I
    const/4 v14, 0x0

    .line 510
    .local v14, leadingMargin:I
    const/16 v17, 0x0

    .line 512
    .local v17, maxLeadingMarginCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    if-nez v3, :cond_1

    .line 513
    const/16 v3, 0xa

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 516
    :cond_1
    const/16 v16, 0x0

    .local v16, line:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    const/4 v4, 0x0

    aput v4, v3, v16

    .line 516
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 520
    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Text;->getParagraphRange(ILandroid/graphics/Text$TextRange;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v26, v0

    check-cast v26, Landroid/text/Spanned;

    .line 524
    .local v26, spanned:Landroid/text/Spanned;
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move/from16 v0, v25

    if-lt v3, v0, :cond_3

    .line 526
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v25

    .line 529
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    .line 530
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v24, v0

    .line 535
    :cond_3
    if-lez v24, :cond_9

    .line 536
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move/from16 v0, v24

    if-ge v12, v0, :cond_9

    .line 537
    aget-object v22, v27, v12

    .line 539
    .local v22, paragraphStyle:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_5

    move-object/from16 v23, v22

    .line 540
    check-cast v23, Landroid/text/style/AlignmentSpan;

    .line 541
    .local v23, span:Landroid/text/style/AlignmentSpan;
    invoke-interface/range {v23 .. v23}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    .line 536
    .end local v23           #span:Landroid/text/style/AlignmentSpan;
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 542
    :cond_5
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_8

    move-object/from16 v15, v22

    .line 543
    check-cast v15, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 544
    .local v15, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface {v15}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 545
    .local v9, count:I
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v14

    .line 546
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMargin(Z)I

    move-result v3

    add-int v20, v20, v3

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    array-length v3, v3

    if-le v9, v3, :cond_6

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    add-int/lit8 v4, v9, 0x6

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    .line 551
    :cond_6
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v9, :cond_7

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    aget v4, v3, v16

    add-int/2addr v4, v14

    aput v4, v3, v16

    .line 551
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 554
    :cond_7
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 555
    goto :goto_4

    .end local v9           #count:I
    .end local v15           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_8
    move-object/from16 v0, v22

    instance-of v3, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_4

    move-object/from16 v15, v22

    .line 556
    check-cast v15, Landroid/text/style/LeadingMarginSpan;

    .line 557
    .local v15, leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int/2addr v10, v3

    .line 558
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v20, v20, v3

    goto :goto_4

    .line 567
    .end local v12           #i:I
    .end local v15           #leadingMarginSpan:Landroid/text/style/LeadingMarginSpan;
    .end local v22           #paragraphStyle:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Text;->getParagraphDirection(I)I

    move-result v8

    .line 571
    .local v8, direction:I
    if-nez v8, :cond_a

    .line 572
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Text;->getAlignment(ILandroid/graphics/Text$TextRange;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 589
    :cond_a
    :goto_6
    const/4 v3, 0x1

    if-ne v8, v3, :cond_d

    .line 590
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v6, v3, :cond_c

    .line 591
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_b

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    aget v4, v3, v12

    sub-int v4, v4, v20

    aput v4, v3, v12

    .line 591
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 578
    .end local v12           #i:I
    :pswitch_0
    const/4 v8, 0x1

    .line 579
    goto :goto_6

    .line 582
    :pswitch_1
    const/4 v8, -0x1

    .line 583
    goto :goto_6

    .line 594
    .restart local v12       #i:I
    :cond_b
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 596
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    sub-int v5, v10, v20

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Text;->setIndent(III)V

    .line 599
    .end local v12           #i:I
    :cond_c
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Text;->setLeftIndent(III)V

    .line 615
    :goto_8
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/text/Layout;->setAlignment(IILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)V

    .line 620
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Text$TextRange;->count:I

    add-int/2addr v4, v5

    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v26

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v28

    .end local v28           #tabSpans:[Landroid/text/style/TabStopSpan;
    check-cast v28, [Landroid/text/style/TabStopSpan;

    .line 624
    .restart local v28       #tabSpans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v28

    array-length v3, v0

    if-lez v3, :cond_11

    .line 625
    move-object/from16 v0, v28

    array-length v3, v0

    new-array v0, v3, [I

    move-object/from16 v29, v0

    .line 626
    .local v29, tabStops:[I
    const/16 v30, 0x0

    .local v30, tabStopsCount:I
    :goto_9
    move-object/from16 v0, v28

    array-length v3, v0

    move/from16 v0, v30

    if-ge v0, v3, :cond_10

    .line 627
    aget-object v3, v28, v30

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    aput v3, v29, v30

    .line 626
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 602
    .end local v29           #tabStops:[I
    .end local v30           #tabStopsCount:I
    :cond_d
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v6, v3, :cond_f

    .line 603
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_a
    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    aget v4, v3, v12

    sub-int v4, v4, v20

    aput v4, v3, v12

    .line 603
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 606
    :cond_e
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mLeadingMargintArray:[I

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Text;->setIndent(II[II)V

    .line 608
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    sub-int v5, v10, v20

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Text;->setIndent(III)V

    .line 611
    .end local v12           #i:I
    :cond_f
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Text;->setRightIndent(III)V

    goto/16 :goto_8

    .line 629
    .restart local v29       #tabStops:[I
    .restart local v30       #tabStopsCount:I
    :cond_10
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Text$TextRange;->index:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Text$TextRange;->count:I

    move-object/from16 v0, v28

    array-length v5, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/graphics/Text;->setTabStops(II[II)V

    .line 505
    .end local v29           #tabStops:[I
    .end local v30           #tabStopsCount:I
    :cond_11
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 638
    .end local v6           #alignment:Landroid/text/Layout$Alignment;
    .end local v8           #direction:I
    .end local v10           #firstLineIntent:I
    .end local v14           #leadingMargin:I
    .end local v16           #line:I
    .end local v17           #maxLeadingMarginCount:I
    .end local v19           #paragraphHasTabs:Z
    .end local v20           #paragraphIndent:I
    .end local v24           #spanCount:I
    .end local v25           #spanEnd:I
    .end local v26           #spanned:Landroid/text/Spanned;
    .end local v27           #spans:[Ljava/lang/Object;
    .end local v28           #tabSpans:[Landroid/text/style/TabStopSpan;
    .end local v31           #tabsProcessed:Z
    :cond_12
    const/16 v3, 0x14

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/BlockLayout;->setTabStop(I)V

    .line 639
    return-void

    .line 572
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
    .line 415
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 416
    return-void
.end method

.method private compose(Landroid/text/TextPaint;I)V
    .locals 2
    .parameter "paint"
    .parameter "width"

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;II)I

    .line 422
    :cond_0
    return-void
.end method

.method private copyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "d"
    .parameter "s"

    .prologue
    .line 659
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 660
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 661
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 662
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 663
    return-void
.end method

.method private static decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "text"
    .parameter "blockText"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "shapePaint"
    .parameter "workFontMetrics"

    .prologue
    .line 352
    instance-of v1, p2, Landroid/text/Spanned;

    if-nez v1, :cond_1

    .line 353
    sub-int v1, p1, p0

    invoke-static {p6, p4}, Landroid/text/Layout;->getShapePaint(Landroid/text/TextPaint;Landroid/text/TextPaint;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p3, p0, v1, v4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 364
    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    .line 357
    check-cast v0, Landroid/text/Spanned;

    .line 359
    .local v0, sp:Landroid/text/Spanned;
    move v2, p0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 360
    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {v0, v2, p1, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .local v3, next:I
    move-object v1, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 361
    invoke-static/range {v0 .. v7}, Landroid/text/Layout;->each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 359
    move v2, v3

    goto :goto_0
.end method

.method private draw(Landroid/graphics/Canvas;II)V
    .locals 20
    .parameter "canvas"
    .parameter "firstLine"
    .parameter "lastLine"

    .prologue
    .line 1038
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1039
    .local v6, wp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    .line 1040
    .local v18, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1041
    .local v4, start:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1042
    .local v5, end:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 1044
    .local v2, blockLayout:Landroid/graphics/BlockLayout;
    sget-object v7, Landroid/text/Layout;->mGlyphs:[C

    .line 1045
    .local v7, glyphs:[C
    sget-object v8, Landroid/text/Layout;->mPos:[F

    .line 1046
    .local v8, pos:[F
    sget-object v9, Landroid/text/Layout;->mNext:[I

    .line 1048
    .local v9, n:[I
    const/4 v3, 0x0

    aput p2, v9, v3

    .line 1049
    const/4 v3, 0x1

    const/4 v10, -0x1

    aput v10, v9, v3

    .line 1051
    monitor-enter v7

    .line 1052
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v3, :cond_1

    .line 1053
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v3, p1

    .line 1054
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/BlockLayout;->drawGlyphs(Landroid/graphics/Canvas;IILandroid/text/TextPaint;[C[F[I)V

    .line 1068
    :cond_0
    monitor-exit v7

    .line 1069
    return-void

    .line 1058
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Landroid/text/Spanned;

    .line 1060
    .local v19, sp:Landroid/text/Spanned;
    move v12, v4

    .local v12, i:I
    :goto_0
    if-ge v12, v5, :cond_0

    .line 1061
    const-class v3, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, v19

    invoke-interface {v0, v12, v5, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    .line 1063
    .local v13, next:I
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1064
    move-object/from16 v0, v19

    invoke-static {v0, v12, v13, v6}, Landroid/text/Layout;->getPaint(Landroid/text/Spanned;IILandroid/text/TextPaint;)V

    move-object v10, v2

    move-object/from16 v11, p1

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    .line 1065
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/BlockLayout;->drawGlyphs(Landroid/graphics/Canvas;IILandroid/text/TextPaint;[C[F[I)V

    .line 1060
    move v12, v13

    goto :goto_0

    .line 1068
    .end local v12           #i:I
    .end local v13           #next:I
    .end local v19           #sp:Landroid/text/Spanned;
    :catchall_0
    move-exception v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V
    .locals 20
    .parameter "canvas"
    .parameter "paint"
    .parameter "workpaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1080
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 1081
    .local v15, previousLineEnd:I
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 1082
    .local v10, spanned:Landroid/text/Spanned;
    const/16 v16, 0x0

    .line 1083
    .local v16, spanCount:I
    const/16 v18, 0x0

    .line 1084
    .local v18, spans:[Ljava/lang/Object;
    const/16 v17, 0x0

    .line 1085
    .local v17, spanEnd:I
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v19

    .line 1088
    .local v19, textLength:I
    move/from16 v13, p4

    .local v13, i:I
    :goto_0
    move/from16 v0, p5

    if-gt v13, v0, :cond_2

    .line 1089
    move v11, v15

    .line 1090
    .local v11, start:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 1091
    .local v12, end:I
    move v15, v12

    .line 1093
    move/from16 v0, v17

    if-lt v11, v0, :cond_0

    .line 1094
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move/from16 v0, v19

    invoke-interface {v10, v11, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v17

    .line 1096
    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move/from16 v0, v17

    invoke-interface {v10, v11, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    .line 1097
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .line 1100
    :cond_0
    if-lez v16, :cond_1

    .line 1101
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    .line 1102
    .local v7, ltop:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    .line 1103
    .local v9, lbottom:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v8

    .line 1105
    .local v8, lbaseline:I
    const/4 v14, 0x0

    .local v14, n:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    .line 1106
    aget-object v2, v18, v14

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 1108
    .local v2, back:Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 1105
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1088
    .end local v2           #back:Landroid/text/style/LineBackgroundSpan;
    .end local v7           #ltop:I
    .end local v8           #lbaseline:I
    .end local v9           #lbottom:I
    .end local v14           #n:I
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1113
    .end local v11           #start:I
    .end local v12           #end:I
    :cond_2
    return-void
.end method

.method private drawTopLayerSpans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V
    .locals 13
    .parameter "canvas"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1117
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 1118
    .local v7, end:I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 1120
    .local v10, lbottom:I
    move/from16 v5, p4

    .local v5, line:I
    :goto_0
    move/from16 v0, p5

    if-gt v5, v0, :cond_0

    .line 1121
    move v6, v7

    .line 1122
    .local v6, start:I
    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    .line 1124
    move v8, v10

    .line 1125
    .local v8, ltop:I
    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    .line 1126
    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    .line 1133
    .local v9, lbaseline:I
    const-class v11, Landroid/text/style/CharacterStyle;

    const-class v12, Landroid/text/style/ReplacementSpan;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/Layout;->drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V

    .line 1135
    const-class v11, Landroid/text/style/ParagraphStyle;

    const-class v12, Landroid/text/style/LeadingMarginSpan;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v12}, Landroid/text/Layout;->drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V

    .line 1120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1138
    .end local v6           #start:I
    .end local v8           #ltop:I
    .end local v9           #lbaseline:I
    :cond_0
    return-void
.end method

.method private drawTopLayerSpansLine(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;IIIIIILjava/lang/Class;Ljava/lang/Class;)V
    .locals 31
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
    .line 1151
    .local p10, transition:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p11, kind:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    move-object/from16 v21, v0

    .line 1152
    .local v21, blockText:Landroid/graphics/Text;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1153
    .local v5, spanned:Landroid/text/Spanned;
    move/from16 v7, p5

    .line 1154
    .local v7, next:I
    const/16 v26, 0x0

    .local v26, paragrapghLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v27, v0

    .line 1155
    .local v27, paragraphRight:I
    const/16 v19, 0x0

    .line 1156
    .local v19, par:Z
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v23

    .line 1157
    .local v23, dir:I
    const/16 v30, 0x0

    .line 1158
    .local v30, spans:[Ljava/lang/Object;,"[TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    move-object/from16 v22, v0

    .line 1160
    .local v22, charSubstitution:Landroid/graphics/Text$CharSubstitution;
    if-nez v22, :cond_0

    .line 1161
    new-instance v22, Landroid/graphics/Text$CharSubstitution;

    .end local v22           #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    invoke-direct/range {v22 .. v22}, Landroid/graphics/Text$CharSubstitution;-><init>()V

    .line 1162
    .restart local v22       #charSubstitution:Landroid/graphics/Text$CharSubstitution;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/Layout;->mCharSubstitution:Landroid/graphics/Text$CharSubstitution;

    .line 1165
    :cond_0
    if-eqz p5, :cond_1

    add-int/lit8 v4, p5, -0x1

    invoke-interface {v5, v4}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    if-ne v4, v6, :cond_2

    .line 1166
    :cond_1
    const/16 v19, 0x1

    .line 1169
    :cond_2
    :goto_0
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_8

    .line 1170
    move/from16 v0, p5

    if-lt v0, v7, :cond_3

    .line 1171
    move/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p10

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    .line 1172
    move/from16 v0, p5

    move-object/from16 v1, p11

    invoke-interface {v5, v0, v7, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v30

    .line 1175
    :cond_3
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move-object/from16 v0, v30

    array-length v4, v0

    move/from16 v0, v24

    if-ge v0, v4, :cond_7

    .line 1176
    aget-object v28, v30, v24

    .line 1178
    .local v28, span:Ljava/lang/Object;,"TT;"
    move-object/from16 v0, v28

    instance-of v4, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_5

    move-object/from16 v3, v28

    .line 1179
    check-cast v3, Landroid/text/style/ReplacementSpan;

    .line 1180
    .local v3, replacementSpan:Landroid/text/style/ReplacementSpan;
    invoke-interface {v5, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v29

    .line 1189
    .local v29, spanStart:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1, v6, v9}, Landroid/graphics/Text;->getCharSubstitution(ILandroid/graphics/Text$CharSubstitution;Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Text$TextRange;)I

    move-result v25

    .line 1191
    .local v25, id:I
    if-eqz v25, :cond_4

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    move/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/graphics/BlockLayout;->getCharSubstitutionPosition(ILandroid/graphics/Text$CharSubstitution;)V

    .line 1193
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1194
    move-object/from16 v0, v22

    iget v4, v0, Landroid/graphics/Text$CharSubstitution;->x:I

    int-to-float v8, v4

    move-object/from16 v4, p1

    move/from16 v6, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p3

    invoke-virtual/range {v3 .. v12}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .end local v3           #replacementSpan:Landroid/text/style/ReplacementSpan;
    .end local v25           #id:I
    .end local v29           #spanStart:I
    :cond_4
    :goto_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1199
    :cond_5
    move-object/from16 v0, v28

    instance-of v4, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_4

    move-object/from16 v8, v28

    .line 1200
    check-cast v8, Landroid/text/style/LeadingMarginSpan;

    .line 1201
    .local v8, margin:Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_6

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, v27

    move/from16 v12, v23

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, v5

    move/from16 v17, p5

    move/from16 v18, v7

    move-object/from16 v20, p0

    .line 1202
    invoke-interface/range {v8 .. v20}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1204
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int v27, v27, v4

    goto :goto_2

    :cond_6
    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, v26

    move/from16 v12, v23

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, v5

    move/from16 v17, p5

    move/from16 v18, v7

    move-object/from16 v20, p0

    .line 1206
    invoke-interface/range {v8 .. v20}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 1208
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v26, v26, v4

    goto :goto_2

    .line 1169
    .end local v8           #margin:Landroid/text/style/LeadingMarginSpan;
    .end local v28           #span:Ljava/lang/Object;,"TT;"
    :cond_7
    move/from16 p5, v7

    goto/16 :goto_0

    .line 1213
    .end local v24           #i:I
    :cond_8
    return-void

    .line 1197
    .restart local v3       #replacementSpan:Landroid/text/style/ReplacementSpan;
    .restart local v24       #i:I
    .restart local v28       #span:Ljava/lang/Object;,"TT;"
    .restart local v29       #spanStart:I
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static each(Landroid/text/Spanned;Landroid/graphics/Text;IILandroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 14
    .parameter "text"
    .parameter "blockText"
    .parameter "start"
    .parameter "end"
    .parameter "paint"
    .parameter "workPaint"
    .parameter "shapePaint"
    .parameter "workFm"

    .prologue
    .line 368
    const-class v3, Landroid/text/style/CharacterStyle;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {p0, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 370
    .local v13, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 371
    .local v2, replacementSpan:Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iput v3, v0, Landroid/text/TextPaint;->bgColor:I

    .line 372
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iput v3, v0, Landroid/text/TextPaint;->baselineShift:I

    .line 373
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 375
    array-length v3, v13

    if-lez v3, :cond_2

    .line 376
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v3, v13

    if-ge v9, v3, :cond_1

    .line 377
    aget-object v10, v13, v9

    check-cast v10, Landroid/text/style/CharacterStyle;

    .line 379
    .local v10, span:Landroid/text/style/CharacterStyle;
    instance-of v3, v10, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_0

    move-object v2, v10

    .line 380
    check-cast v2, Landroid/text/style/ReplacementSpan;

    .line 376
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 382
    :cond_0
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 386
    .end local v10           #span:Landroid/text/style/CharacterStyle;
    :cond_1
    if-eqz v2, :cond_2

    .line 388
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 389
    .local v12, spanStart:I
    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 391
    .local v11, spanEnd:I
    sub-int v3, v11, v12

    if-lez v3, :cond_2

    move-object/from16 v3, p5

    move-object v4, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p7

    .line 392
    invoke-virtual/range {v2 .. v7}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v8

    .line 393
    .local v8, width:I
    sub-int v5, v11, v12

    const/16 v6, 0x2a

    move-object v3, p1

    move v4, v12

    move-object/from16 v7, p7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Text;->setCharSubstitution(IICLandroid/graphics/Paint$FontMetricsInt;I)I

    .line 399
    .end local v8           #width:I
    .end local v9           #i:I
    .end local v11           #spanEnd:I
    .end local v12           #spanStart:I
    :cond_2
    sub-int v3, p3, p2

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/text/Layout;->getShapePaint(Landroid/text/TextPaint;Landroid/text/TextPaint;)Landroid/text/TextPaint;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 400
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
    .line 1922
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1924
    .local v2, ellipsisCount:I
    if-nez v2, :cond_1

    .line 1946
    :cond_0
    return-void

    .line 1928
    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1929
    .local v3, ellipsisStart:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1931
    .local v5, linestart:I
    move v4, v3

    .local v4, i:I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    .line 1934
    if-ne v4, v3, :cond_3

    .line 1935
    const/16 v1, 0x2026

    .line 1940
    .local v1, c:C
    :goto_1
    add-int v0, v4, v5

    .line 1942
    .local v0, a:I
    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    .line 1943
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1931
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1937
    .end local v0           #a:I
    .end local v1           #c:C
    :cond_3
    const v1, 0xfeff

    .restart local v1       #c:C
    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 15
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "paint"

    .prologue
    .line 135
    const/4 v11, 0x0

    .line 137
    .local v11, need:F
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_5

    .line 140
    sget-object v14, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    monitor-enter v14

    .line 141
    move/from16 v10, p1

    .local v10, i:I
    :goto_0
    move/from16 v0, p2

    if-gt v10, v0, :cond_3

    .line 142
    const/16 v1, 0xa

    :try_start_0
    move/from16 v0, p2

    invoke-static {p0, v1, v10, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    .line 144
    .local v12, next:I
    if-gez v12, :cond_0

    .line 145
    move/from16 v12, p2

    .line 147
    :cond_0
    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 148
    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v4, 0x0

    sget-object v5, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v5}, Landroid/graphics/Text;->getLength()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Text;->removeText(II)V

    .line 151
    :cond_1
    invoke-interface {p0, v10, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 152
    .local v3, subSeq:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 153
    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Text;->insertText(Ljava/lang/String;I)V

    .line 155
    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v2

    .line 157
    .local v2, len:I
    const/4 v1, 0x0

    sget-object v4, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    sget-object v6, Landroid/text/Layout;->sWorkPaintDesired:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout;->sShapePaintDesired:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout;->sFontMetricsIntDesired:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v8}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 161
    sget-object v1, Landroid/text/Layout;->sBlockTextDesired:Landroid/graphics/Text;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Landroid/graphics/Text;->setAlignment(III)V

    .line 163
    sget-object v1, Landroid/text/Layout;->sBlockLayoutDesired:Landroid/graphics/BlockLayout;

    const/16 v4, 0x7fff

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v4}, Landroid/graphics/BlockLayout;->doLayout(Landroid/graphics/Paint;I)I

    move-result v9

    .line 166
    .local v9, advanceWidth:I
    int-to-float v1, v9

    cmpl-float v1, v1, v11

    if-lez v1, :cond_2

    .line 167
    int-to-float v11, v9

    .line 171
    .end local v2           #len:I
    .end local v9           #advanceWidth:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 141
    move v10, v12

    goto :goto_0

    .line 173
    .end local v3           #subSeq:Ljava/lang/CharSequence;
    .end local v12           #next:I
    :cond_3
    monitor-exit v14

    .line 191
    :cond_4
    return v11

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    .end local v10           #i:I
    :cond_5
    move/from16 v10, p1

    .restart local v10       #i:I
    :goto_1
    move/from16 v0, p2

    if-gt v10, v0, :cond_4

    .line 177
    const/16 v1, 0xa

    move/from16 v0, p2

    invoke-static {p0, v1, v10, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v12

    .line 179
    .restart local v12       #next:I
    if-gez v12, :cond_6

    .line 180
    move/from16 v12, p2

    .line 182
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, p0, v10, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v13

    .line 184
    .local v13, w:F
    cmpl-float v1, v13, v11

    if-lez v1, :cond_7

    .line 185
    move v11, v13

    .line 187
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 176
    move v10, v12

    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .parameter "source"
    .parameter "paint"

    .prologue
    .line 112
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
    .line 1535
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1538
    .local v1, start:I
    if-eqz p3, :cond_1

    .line 1539
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 1543
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v2

    .line 1545
    .local v2, tab:Z
    if-nez p2, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1546
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 1549
    :cond_0
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-static {v3, v1, v0, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    return v3

    .line 1541
    .end local v0           #end:I
    .end local v2           #tab:Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .parameter "line"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1656
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1659
    .local v1, text:Ljava/lang/CharSequence;
    :goto_0
    if-le p3, p2, :cond_0

    .line 1660
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1662
    .local v0, ch:C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 1663
    add-int/lit8 p3, p3, -0x1

    .line 1672
    .end local v0           #ch:C
    .end local p3
    :cond_0
    return p3

    .line 1666
    .restart local v0       #ch:C
    .restart local p3
    :cond_1
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 1659
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private static getPaint(Landroid/text/Spanned;IILandroid/text/TextPaint;)V
    .locals 6
    .parameter "sp"
    .parameter "start"
    .parameter "end"
    .parameter "textPaint"

    .prologue
    .line 1072
    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-interface {p0, p1, p2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 1074
    .local v4, spans:[Landroid/text/style/CharacterStyle;
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/CharacterStyle;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1075
    .local v1, characterStyle:Landroid/text/style/CharacterStyle;
    invoke-virtual {v1, p3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1074
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1077
    .end local v1           #characterStyle:Landroid/text/style/CharacterStyle;
    :cond_0
    return-void
.end method

.method private getPaintAndMetrics(Landroid/graphics/Text;ILandroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "blockText"
    .parameter "start"
    .parameter "paint"
    .parameter "fm"

    .prologue
    .line 675
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Text;->getPaint(ILandroid/text/TextPaint;)V

    .line 676
    invoke-virtual {p3, p4}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 677
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 678
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 679
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 680
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 681
    iget v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget v1, p3, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 682
    return-void
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1977
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1978
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1981
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getPrimaryHorizontal(IZ)F
    .locals 2
    .parameter "offset"
    .parameter "trailingEdge"

    .prologue
    .line 1439
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
    .line 1457
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/graphics/BlockLayout;->getHorizontal(IZZ)F

    move-result v0

    return v0
.end method

.method private static getShapePaint(Landroid/text/TextPaint;Landroid/text/TextPaint;)Landroid/text/TextPaint;
    .locals 2
    .parameter "shapePaint"
    .parameter "paint"

    .prologue
    .line 403
    const/16 v0, -0x19

    .line 404
    .local v0, shapeFlags:I
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    and-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 405
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 406
    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setHinting(I)V

    .line 407
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 408
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 409
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 410
    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v1, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 411
    return-object p0
.end method

.method static isInBetweenSurrogatePair(Ljava/lang/CharSequence;II)Z
    .locals 1
    .parameter "s"
    .parameter "index"
    .parameter "len"

    .prologue
    .line 2298
    if-ge p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2300
    add-int/lit8 v0, p1, -0x1

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

    .line 2302
    const/4 v0, 0x1

    .line 2305
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
    .line 650
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 651
    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 654
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

.method private static resolveAlignment(Landroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)I
    .locals 2
    .parameter "align"
    .parameter "textDir"
    .parameter "dir"

    .prologue
    .line 237
    const/4 v0, 0x2

    .line 239
    .local v0, alignment:I
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne p0, v1, :cond_2

    .line 240
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p1, v1, :cond_1

    .line 241
    const/4 v0, 0x4

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 245
    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne p0, v1, :cond_6

    .line 246
    if-lez p2, :cond_3

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    if-gez p2, :cond_4

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_4
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p1, v1, :cond_5

    .line 252
    const/4 v0, 0x4

    goto :goto_0

    .line 254
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 257
    :cond_6
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p0, v1, :cond_7

    .line 258
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_7
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p0, v1, :cond_0

    .line 260
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAlignment(IILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)V
    .locals 2
    .parameter "index"
    .parameter "count"
    .parameter "alignment"
    .parameter "textDir"
    .parameter "dir"

    .prologue
    .line 2245
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-nez v0, :cond_0

    .line 2249
    :goto_0
    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-static {p3, p4, p5}, Landroid/text/Layout;->resolveAlignment(Landroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Text;->setAlignment(III)V

    goto :goto_0
.end method

.method private updateLineMetrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 2
    .parameter "lineMetrics"
    .parameter "fm"

    .prologue
    .line 667
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 668
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 669
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 670
    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 671
    return-void
.end method

.method private zeroizeFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 642
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 643
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 644
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 645
    iput v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 646
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 958
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 19
    .parameter "canvas"
    .parameter "highlight"
    .parameter "highlightpaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 965
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    .line 967
    .local v15, tempRect:Landroid/graphics/Rect;
    if-nez v15, :cond_0

    .line 968
    new-instance v15, Landroid/graphics/Rect;

    .end local v15           #tempRect:Landroid/graphics/Rect;
    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/text/Layout;->mTempRect:Landroid/graphics/Rect;

    .line 971
    .restart local v15       #tempRect:Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1031
    :cond_1
    :goto_0
    return-void

    .line 975
    :cond_2
    iget v11, v15, Landroid/graphics/Rect;->top:I

    .line 976
    .local v11, dtop:I
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 978
    .local v10, dbottom:I
    const/16 v16, 0x0

    .line 979
    .local v16, top:I
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 980
    .local v9, bottom:I
    iget v12, v15, Landroid/graphics/Rect;->left:I

    .line 981
    .local v12, left:I
    iget v14, v15, Landroid/graphics/Rect;->right:I

    .line 983
    .local v14, right:I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 984
    .local v5, workpaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 985
    .local v4, paint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 987
    .local v8, blockLayout:Landroid/graphics/BlockLayout;
    move/from16 v0, v16

    if-le v11, v0, :cond_3

    .line 988
    move/from16 v16, v11

    .line 990
    :cond_3
    if-ge v10, v9, :cond_4

    .line 991
    move v9, v10

    .line 994
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    invoke-static {v4, v2}, Landroid/graphics/Text;->attributeChanged(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 995
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v13

    .line 996
    .local v13, lineCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;)V

    .line 999
    const/4 v2, 0x1

    if-ne v13, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-eq v13, v2, :cond_5

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/text/Layout;->reflowFull(Ljava/lang/CharSequence;I)V

    .line 1005
    .end local v13           #lineCount:I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 1006
    .local v6, first:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 1008
    .local v7, last:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1009
    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/text/TextPaint;II)V

    .line 1014
    :cond_6
    if-eqz p2, :cond_8

    .line 1015
    if-eqz p4, :cond_7

    .line 1016
    const/4 v2, 0x0

    move/from16 v0, p4

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1019
    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1021
    if-eqz p4, :cond_8

    .line 1022
    const/4 v2, 0x0

    move/from16 v0, p4

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1026
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;II)V

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1029
    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->drawTopLayerSpans(Landroid/graphics/Canvas;Landroid/text/TextPaint;Landroid/text/TextPaint;II)V

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
    .line 334
    :try_start_0
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0}, Landroid/graphics/BlockLayout;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v0}, Landroid/graphics/Text;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 345
    return-void

    .line 338
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->dispose()V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method getCurrentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2274
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
    .line 1787
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1789
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1790
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1793
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    invoke-virtual {v0, p1, p1}, Landroid/text/Layout$CursorPosition;->setAbsPositions(II)V

    .line 1794
    invoke-virtual {p0, v0, p2, p3}, Landroid/text/Layout;->getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 1795
    return-void
.end method

.method public getCursorPath(Landroid/text/Layout$CursorPosition;Landroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "cursor"
    .parameter "dest"
    .parameter "editingBuffer"

    .prologue
    .line 1805
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1806
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v2, p1, Landroid/text/Layout$CursorPosition;->offset:I

    const/4 v4, 0x3

    const/4 v5, 0x4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BlockLayout;->getCursorPath(IILandroid/graphics/Path;II)V

    .line 1812
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    .line 1813
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method final getEllipsisCountDefault(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 2241
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
    .line 2232
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getEllipsisStart(I)I

    move-result v0

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1243
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1265
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
    .line 1695
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
    .line 1686
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
    .line 1679
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
    .line 1304
    if-eqz p2, :cond_0

    .line 1305
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1306
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1307
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1308
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1310
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method getLineContainsTabDefault(I)Z
    .locals 6
    .parameter "line"

    .prologue
    .line 2252
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2253
    .local v3, start:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 2256
    .local v1, end:I
    invoke-virtual {p0}, Landroid/text/Layout;->getCurrentText()Ljava/lang/String;

    move-result-object v4

    .line 2258
    .local v4, text:Ljava/lang/String;
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2260
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2261
    .local v0, ch:C
    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    .line 2262
    const/4 v5, 0x1

    .line 2265
    .end local v0           #ch:C
    :goto_1
    return v5

    .line 2258
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2265
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
    .locals 5
    .parameter "line"

    .prologue
    const/4 v4, 0x1

    .line 2203
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 2207
    .local v0, blockLayout:Landroid/graphics/BlockLayout;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isValidLine(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2209
    const/4 p1, 0x0

    .line 2211
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/BlockLayout;->getLineDirections(I)[I

    move-result-object v1

    .line 2213
    .local v1, dirs:[I
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_2

    .line 2214
    aget v2, v1, v4

    const v3, 0x3ffffff

    if-ne v2, v3, :cond_1

    .line 2215
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2220
    :goto_0
    return-object v2

    .line 2216
    :cond_1
    aget v2, v1, v4

    const v3, 0x7ffffff

    if-ne v2, v3, :cond_2

    .line 2217
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    goto :goto_0

    .line 2220
    :cond_2
    new-instance v2, Landroid/text/Layout$Directions;

    invoke-direct {v2, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    goto :goto_0
.end method

.method public final getLineEnd(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 1640
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5
    .parameter "offset"

    .prologue
    .line 1597
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1598
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1600
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1601
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1603
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1604
    move v1, v0

    goto :goto_0

    .line 1606
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1609
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1610
    const/4 v2, 0x0

    .line 1614
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method public getLineForVertical(I)I
    .locals 5
    .parameter "vertical"

    .prologue
    .line 1570
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v3, :cond_3

    .line 1571
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, high:I
    const/4 v2, -0x1

    .line 1573
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1574
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1576
    .local v0, guess:I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1577
    move v1, v0

    goto :goto_0

    .line 1579
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1582
    .end local v0           #guess:I
    :cond_1
    if-gez v2, :cond_2

    .line 1583
    const/4 v2, 0x0

    .line 1587
    .end local v1           #high:I
    .end local v2           #low:I
    :cond_2
    :goto_1
    return v2

    :cond_3
    iget-object v3, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v3, p1}, Landroid/graphics/BlockLayout;->getLineForVertical(I)I

    move-result v2

    goto :goto_1
.end method

.method public getLineLeft(I)F
    .locals 8
    .parameter "line"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1465
    iget-object v6, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v6, :cond_3

    .line 1466
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1467
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1469
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    .line 1470
    if-ne v1, v7, :cond_0

    .line 1471
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    .line 1487
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :cond_0
    :goto_0
    return v5

    .line 1474
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    .restart local v1       #dir:I
    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    .line 1475
    if-eq v1, v7, :cond_0

    .line 1478
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 1480
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1481
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1482
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1484
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0

    .line 1487
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    .end local v2           #left:I
    .end local v3           #max:I
    .end local v4           #right:I
    :cond_3
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v5, p1}, Landroid/graphics/BlockLayout;->getLineLeft(I)F

    move-result v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 2
    .parameter "line"

    .prologue
    .line 1527
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1528
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1530
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

    .line 1496
    iget-object v5, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v5, :cond_4

    .line 1497
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1498
    .local v1, dir:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1500
    .local v0, align:Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_1

    .line 1501
    if-ne v1, v6, :cond_0

    .line 1502
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    .line 1518
    .end local v0           #align:Landroid/text/Layout$Alignment;
    .end local v1           #dir:I
    :goto_0
    return v5

    .line 1504
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

    .line 1505
    :cond_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 1506
    if-ne v1, v6, :cond_2

    .line 1507
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    .line 1509
    :cond_2
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    .line 1511
    :cond_3
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 1512
    .local v2, left:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1513
    .local v4, right:I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 1515
    .local v3, max:I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0

    .line 1518
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
    .line 1648
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1649
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    .line 1651
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
    .line 1557
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-nez v0, :cond_0

    .line 1558
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineMax(I[Ljava/lang/Object;Z)F

    move-result v0

    .line 1560
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
    .line 1623
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1624
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    const/4 v1, 0x0

    .line 1626
    .local v1, offset:I
    if-nez v0, :cond_0

    .line 1627
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1630
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    float-to-int v3, p2

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/BlockLayout;->getOffsetForHorizontal(IILandroid/graphics/BlockLayout$CaretPosition;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    invoke-virtual {v0}, Landroid/graphics/BlockLayout$CaretPosition;->getCharacterIndex()I

    move-result v1

    .line 1633
    :cond_1
    return v1
.end method

.method public getOffsetToLeftOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1705
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1709
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1710
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1711
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1713
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1714
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V

    .line 1715
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToLeftOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1727
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1728
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1731
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1732
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1734
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToLeftOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1735
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1736
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1737
    return-void
.end method

.method public getOffsetToRightOf(I)I
    .locals 2
    .parameter "offset"

    .prologue
    .line 1744
    iget-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1746
    .local v0, pos:Landroid/text/Layout$CursorPosition;
    if-nez v0, :cond_0

    .line 1747
    new-instance v0, Landroid/text/Layout$CursorPosition;

    .end local v0           #pos:Landroid/text/Layout$CursorPosition;
    invoke-direct {v0}, Landroid/text/Layout$CursorPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mTmpCursorPos:Landroid/text/Layout$CursorPosition;

    .line 1750
    .restart local v0       #pos:Landroid/text/Layout$CursorPosition;
    :cond_0
    iput p1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1751
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1753
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1755
    iget v1, v0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    if-ne v1, p1, :cond_1

    .line 1756
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V

    .line 1758
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout$CursorPosition;->getLeadingAbsPos()I

    move-result v1

    return v1
.end method

.method public getOffsetToRightOf(Landroid/text/Layout$CursorPosition;)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 1768
    iget-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1770
    .local v0, caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    if-nez v0, :cond_0

    .line 1771
    new-instance v0, Landroid/graphics/BlockLayout$CaretPosition;

    .end local v0           #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    invoke-direct {v0}, Landroid/graphics/BlockLayout$CaretPosition;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mCaretPosition:Landroid/graphics/BlockLayout$CaretPosition;

    .line 1774
    .restart local v0       #caretPosition:Landroid/graphics/BlockLayout$CaretPosition;
    :cond_0
    iget v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    .line 1775
    iget v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    iput v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    .line 1777
    iget-object v1, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v1, v0}, Landroid/graphics/BlockLayout;->getOffsetToRightOf(Landroid/graphics/BlockLayout$CaretPosition;)Z

    .line 1778
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 1779
    iget v1, v0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    iput v1, p1, Landroid/text/Layout$CursorPosition;->offset:I

    .line 1780
    return-void
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .parameter "line"

    .prologue
    .line 1838
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1840
    .local v0, align:Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1841
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1842
    .local v1, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1846
    .local v3, spans:[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1847
    .local v2, spanLength:I
    if-lez v2, :cond_0

    .line 1848
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1852
    .end local v1           #sp:Landroid/text/Spanned;
    .end local v2           #spanLength:I
    .end local v3           #spans:[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1859
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_1

    .line 1860
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphLeft(I)I

    move-result v2

    .line 1883
    :cond_0
    return v2

    .line 1862
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1864
    .local v0, dir:I
    const/4 v2, 0x0

    .line 1866
    .local v2, left:I
    const/4 v4, 0x0

    .line 1867
    .local v4, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1868
    .local v3, off:I
    if-eqz v3, :cond_2

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v3, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 1869
    :cond_2
    const/4 v4, 0x1

    .line 1871
    :cond_3
    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    .line 1872
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_0

    .line 1873
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1874
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1877
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 1878
    aget-object v7, v6, v1

    invoke-interface {v7, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int/2addr v2, v7

    .line 1877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 10
    .parameter "line"

    .prologue
    .line 1891
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v7, :cond_1

    .line 1892
    iget-object v7, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v7, p1}, Landroid/graphics/BlockLayout;->getParagraphRight(I)I

    move-result v4

    .line 1917
    :cond_0
    return v4

    .line 1894
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1896
    .local v0, dir:I
    iget v4, p0, Landroid/text/Layout;->mWidth:I

    .line 1898
    .local v4, right:I
    const/4 v3, 0x0

    .line 1899
    .local v3, par:Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 1900
    .local v2, off:I
    if-eqz v2, :cond_2

    iget-object v7, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    .line 1901
    :cond_2
    const/4 v3, 0x1

    .line 1904
    :cond_3
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 1905
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_0

    .line 1906
    iget-object v5, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v5, Landroid/text/Spanned;

    .line 1907
    .local v5, sp:Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v5, v7, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/LeadingMarginSpan;

    .line 1911
    .local v6, spans:[Landroid/text/style/LeadingMarginSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 1912
    aget-object v7, v6, v1

    invoke-interface {v7, v3}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    sub-int/2addr v4, v7

    .line 1911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2
    .parameter "offset"

    .prologue
    .line 1430
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
    .line 1448
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
    .line 1822
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 1823
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/BlockLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1829
    const/4 v0, 0x0

    iput-boolean v0, p3, Landroid/graphics/Path;->isSimplePath:Z

    .line 1831
    :cond_0
    return-void
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .parameter "wid"

    .prologue
    .line 1252
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 1253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1257
    return-void
.end method

.method initLayout()V
    .locals 5

    .prologue
    .line 199
    new-instance v2, Landroid/graphics/Text$TextRange;

    invoke-direct {v2}, Landroid/graphics/Text$TextRange;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 201
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 203
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    .line 205
    sget v1, Landroid/text/Layout;->sBlockLayoutFlags:I

    .line 207
    .local v1, flags:I
    iget-boolean v2, p0, Landroid/text/Layout;->mIncludepad:Z

    if-eqz v2, :cond_0

    .line 208
    or-int/lit8 v1, v1, 0x2

    .line 211
    :cond_0
    iget-object v2, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_1

    .line 212
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$TextUtils$TruncateAt:[I

    iget-object v3, p0, Landroid/text/Layout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3}, Landroid/text/TextUtils$TruncateAt;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 230
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/text/Layout;->resolveAlignment(Landroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;I)I

    move-result v0

    .line 232
    .local v0, alignment:I
    invoke-static {}, Landroid/graphics/Text;->obtain()Landroid/graphics/Text;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 233
    iget-object v2, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    const/16 v3, 0x14

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/BlockLayout;->obtain(Landroid/graphics/Text;III)Landroid/graphics/BlockLayout;

    move-result-object v2

    iput-object v2, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 234
    return-void

    .line 214
    .end local v0           #alignment:I
    :pswitch_0
    or-int/lit8 v1, v1, 0x20

    .line 215
    goto :goto_0

    .line 217
    :pswitch_1
    or-int/lit8 v1, v1, 0x4

    .line 218
    goto :goto_0

    .line 220
    :pswitch_2
    or-int/lit8 v1, v1, 0x10

    .line 221
    goto :goto_0

    .line 223
    :pswitch_3
    or-int/lit8 v1, v1, 0x8

    .line 224
    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1371
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1372
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1373
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return v8

    .line 1377
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1378
    .local v7, runs:[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1379
    .local v4, lineStart:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 1380
    .local v3, lineEnd:I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    .line 1381
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    .line 1382
    .local v5, paraLevel:I
    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    .line 1383
    .local v6, runIndex:I
    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    .end local v5           #paraLevel:I
    .end local v6           #runIndex:I
    :cond_3
    move v5, v9

    .line 1381
    goto :goto_1

    .line 1382
    .restart local v5       #paraLevel:I
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    .line 1386
    .end local v5           #paraLevel:I
    :cond_5
    sub-int/2addr p1, v4

    .line 1387
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    .line 1388
    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    .line 1389
    goto :goto_0

    .line 1387
    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 11
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1401
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1402
    .local v3, line:I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 1403
    .local v0, dirs:Landroid/text/Layout$Directions;
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return v8

    .line 1406
    :cond_1
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_2

    move v8, v7

    .line 1407
    goto :goto_0

    .line 1409
    :cond_2
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1410
    .local v5, runs:[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1411
    .local v4, lineStart:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 1412
    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    .line 1415
    .local v6, start:I
    if-lt p1, v6, :cond_4

    .line 1416
    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    .line 1417
    .local v2, level:I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    .line 1411
    .end local v2           #level:I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1949
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method isValidLine(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 2294
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

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
    .line 2285
    if-lt p1, p2, :cond_0

    if-le p1, p3, :cond_1

    .line 2286
    :cond_0
    const/4 v0, 0x0

    .line 2289
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
    .line 441
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 442
    return-void
.end method

.method reflow(Ljava/lang/CharSequence;III)V
    .locals 15
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "width"

    .prologue
    .line 455
    iget-object v5, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 456
    .local v5, blockText:Landroid/graphics/Text;
    iget-object v13, p0, Landroid/text/Layout;->mBlockLayout:Landroid/graphics/BlockLayout;

    .line 457
    .local v13, blockLayout:Landroid/graphics/BlockLayout;
    iget-object v6, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 458
    .local v6, paint:Landroid/text/TextPaint;
    iget-object v7, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 459
    .local v7, workpaint:Landroid/text/TextPaint;
    iget-object v8, p0, Landroid/text/Layout;->mShapePaint:Landroid/text/TextPaint;

    .line 461
    .local v8, shapePaint:Landroid/text/TextPaint;
    move-object/from16 v4, p1

    .line 463
    .local v4, buf:Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/text/Layout;->mLastUsedSource:Ljava/lang/CharSequence;

    .line 465
    if-eqz v6, :cond_0

    .line 466
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 467
    iget-object v2, p0, Landroid/text/Layout;->mLastUsedPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 468
    iget-object v9, p0, Landroid/text/Layout;->mTempFmi:Landroid/graphics/Paint$FontMetricsInt;

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v2 .. v9}, Landroid/text/Layout;->decorateText(IILjava/lang/CharSequence;Landroid/graphics/Text;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 469
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v5, v6}, Landroid/text/Layout;->applyLineHeight(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    move-object v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object v12, v5

    move-object v14, v6

    .line 470
    invoke-direct/range {v9 .. v14}, Landroid/text/Layout;->applyParagraph(IILandroid/graphics/Text;Landroid/graphics/BlockLayout;Landroid/text/TextPaint;)V

    .line 471
    iget-object v2, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/text/Layout;->applyLineSpacing(IILandroid/graphics/Text;Landroid/text/TextPaint;)V

    .line 474
    :cond_0
    move/from16 v0, p4

    invoke-direct {p0, v6, v0}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;I)V

    .line 475
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 429
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 432
    :cond_0
    return-void
.end method

.method reflowFull(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "s"
    .parameter "width"

    .prologue
    .line 435
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    invoke-virtual {v1}, Landroid/graphics/Text;->getLength()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/text/Layout;->reflow(Ljava/lang/CharSequence;III)V

    .line 438
    :cond_0
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"

    .prologue
    .line 875
    if-gez p3, :cond_0

    .line 876
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

    .line 878
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 879
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 880
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 881
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 882
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 883
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 884
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 885
    return-void
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 0
    .parameter "text"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 866
    iput-boolean p7, p0, Landroid/text/Layout;->mIncludepad:Z

    .line 867
    invoke-virtual/range {p0 .. p6}, Landroid/text/Layout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 868
    return-void
.end method

.method updateText(Ljava/lang/CharSequence;IIIZ)V
    .locals 10
    .parameter "chSeq"
    .parameter "where"
    .parameter "before"
    .parameter "after"
    .parameter "compose"

    .prologue
    .line 898
    iget-object v0, p0, Landroid/text/Layout;->mBlockText:Landroid/graphics/Text;

    .line 899
    .local v0, text:Landroid/graphics/Text;
    iget-object v6, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 900
    .local v6, paint:Landroid/text/TextPaint;
    iget-object v5, p0, Landroid/text/Layout;->mRange:Landroid/graphics/Text$TextRange;

    .line 901
    .local v5, matchRange:Landroid/graphics/Text$TextRange;
    const/4 v3, 0x0

    .line 902
    .local v3, mTmpBuf:[C
    const/4 v4, 0x0

    .line 904
    .local v4, offset:I
    if-eqz p1, :cond_0

    if-nez v6, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 910
    add-int v1, p2, p4

    const/4 v9, 0x0

    invoke-static {p1, p2, v1, v3, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 912
    if-lez p3, :cond_2

    if-lez p4, :cond_2

    .line 913
    move v7, p2

    .line 914
    .local v7, start:I
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int v2, p2, v1

    .local v2, end:I
    move v1, p2

    .line 916
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Text;->compareTo(II[CILandroid/graphics/Text$TextRange;)I

    .line 917
    iget v4, v5, Landroid/graphics/Text$TextRange;->count:I

    .line 918
    iget v1, v5, Landroid/graphics/Text$TextRange;->index:I

    iget v9, v5, Landroid/graphics/Text$TextRange;->count:I

    add-int p2, v1, v9

    .line 920
    add-int v1, v7, p4

    sub-int p4, v1, p2

    .line 921
    add-int v1, v7, p3

    sub-int p3, v1, p2

    .line 924
    .end local v2           #end:I
    .end local v7           #start:I
    :cond_2
    if-lez p3, :cond_3

    .line 925
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Text;->removeText(II)V

    .line 928
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v9, 0x1

    if-le v1, v9, :cond_3

    if-eqz p5, :cond_3

    .line 929
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V

    .line 933
    :cond_3
    if-lez p4, :cond_5

    .line 934
    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v8, 0x1

    .line 936
    .local v8, wasEmpty:Z
    :goto_1
    invoke-virtual {v0, v3, v4, p4, p2}, Landroid/graphics/Text;->insertText([CIII)V

    .line 939
    invoke-virtual {v0}, Landroid/graphics/Text;->getParagraphCount()I

    move-result v1

    const/4 v9, 0x1

    if-le v1, v9, :cond_5

    if-eqz p5, :cond_5

    .line 940
    if-eqz v8, :cond_4

    .line 941
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Text;->getLength()I

    move-result v9

    invoke-virtual {v0, v1, v9, v6}, Landroid/graphics/Text;->setPaint(IILandroid/text/TextPaint;)V

    .line 943
    :cond_4
    invoke-direct {p0, v6}, Landroid/text/Layout;->compose(Landroid/text/TextPaint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v8           #wasEmpty:Z
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0

    .line 934
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 948
    :catchall_0
    move-exception v1

    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    throw v1
.end method
