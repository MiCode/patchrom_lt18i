.class public Lmiui/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$DotBarDrawer;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x602034e

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x602034d

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x602034f

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field private mAlphaWidthNum:I

.field private mCellSize:I

.field private mDotbarHeight:I

.field private mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mPointData:[F

.field private mSampleBuf:[S

.field private mShadowDotbarHeight:I

.field private mShadowPixels:[I

.field private mVisualizationHeightNum:I

.field private mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 184
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 184
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 66
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    .line 52
    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 184
    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 227
    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    .line 71
    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method static synthetic access$200(Lmiui/widget/SpectrumVisualizer;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer;->update([B)V

    return-void
.end method

.method static synthetic access$300(Lmiui/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/SpectrumVisualizer;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    return-object v0
.end method

.method static synthetic access$500(Lmiui/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    return v0
.end method

.method static synthetic access$600(Lmiui/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    return-object v0
.end method

.method static synthetic access$700(Lmiui/widget/SpectrumVisualizer;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/widget/SpectrumVisualizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    return v0
.end method

.method static synthetic access$900(Lmiui/widget/SpectrumVisualizer;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 75
    const/4 v15, 0x0

    .line 76
    .local v15, panelDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 77
    .local v13, dotBarDrawble:Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 78
    .local v16, shadowDotbarDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 79
    .local v17, symmetry:Z
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 81
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 82
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 84
    if-eqz p2, :cond_0

    .line 85
    sget-object v5, Lcom/miui/internal/R$styleable;->SpectrumVisualizer:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 86
    .local v12, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x3

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 87
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 88
    const/4 v5, 0x2

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 89
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 91
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    move v6, v0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 92
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 93
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    .line 94
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    .end local v12           #a:Landroid/content/res/TypedArray;
    :cond_0
    if-nez v15, :cond_1

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x602034d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 100
    :cond_1
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 101
    .local v14, panelBm:Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 102
    .local v19, visualizationWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 103
    .local v18, visualizationHeight:I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lmiui/widget/SpectrumVisualizer;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    if-nez v13, :cond_2

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x602034e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 109
    :cond_2
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13           #dotBarDrawble:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 110
    .local v3, dotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    .line 111
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 114
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    .line 116
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v10, v0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 119
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    div-int v5, v19, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    .line 120
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    div-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    .line 121
    const/high16 v5, 0x41a0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    move v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    move v5, v0

    div-int/lit8 v5, v5, 0x3

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    .line 123
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    move v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    .line 125
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    move v5, v0

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    move v5, v0

    if-nez v5, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    move v5, v0

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .line 131
    :cond_4
    if-eqz v17, :cond_8

    .line 132
    if-nez v16, :cond_5

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x602034f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 136
    :cond_5
    move-object/from16 v0, v16

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v17, v0

    .end local v17           #symmetry:Z
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 137
    .local v4, shadowDotBar:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v6, v0

    add-int/2addr v5, v6

    move v0, v5

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move v5, v0

    sub-int v5, v18, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v6, v0

    if-ge v5, v6, :cond_7

    .line 144
    new-instance v5, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;Lmiui/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    .line 154
    .end local v4           #shadowDotBar:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 148
    .restart local v4       #shadowDotBar:Landroid/graphics/Bitmap;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v6, v0

    mul-int/2addr v5, v6

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 150
    new-instance v5, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;Lmiui/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0

    .line 152
    .end local v4           #shadowDotBar:Landroid/graphics/Bitmap;
    .restart local v17       #symmetry:Z
    :cond_8
    new-instance v5, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;Lmiui/widget/SpectrumVisualizer$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_0
.end method

.method private update([B)V
    .locals 15
    .parameter "fFtBuffer"

    .prologue
    .line 231
    iget-boolean v11, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x3

    invoke-static {v11}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 232
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    .line 240
    if-eqz p1, :cond_0

    .line 244
    iget-object v8, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    .line 245
    .local v8, sampleBuf:[S
    array-length v9, v8

    .line 246
    .local v9, sampleLen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v9, :cond_3

    .line 247
    mul-int/lit8 v11, v5, 0x2

    aget-byte v0, p1, v11

    .line 248
    .local v0, a:I
    mul-int/lit8 v11, v5, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-byte v1, p1, v11

    .line 249
    .local v1, b:I
    mul-int v11, v0, v0

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 251
    .local v2, c:I
    const/16 v11, 0x7fff

    if-ge v2, v11, :cond_2

    move v11, v2

    :goto_2
    int-to-short v11, v11

    aput-short v11, v8, v5

    .line 246
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const/16 v11, 0x7fff

    goto :goto_2

    .line 254
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    :cond_3
    const/4 v10, 0x0

    .line 255
    .local v10, srcIdx:I
    const/4 v3, 0x0

    .line 256
    .local v3, count:I
    const/4 v5, 0x0

    :goto_3
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v5, v11, :cond_7

    .line 257
    const/4 v6, 0x0

    .line 260
    .local v6, max:I
    :goto_4
    if-ge v3, v9, :cond_4

    .line 261
    aget-short v11, v8, v10

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 262
    add-int/lit8 v10, v10, 0x1

    .line 263
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v3, v11

    goto :goto_4

    .line 265
    :cond_4
    sub-int/2addr v3, v9

    .line 269
    const/4 v11, 0x1

    if-le v6, v11, :cond_5

    .line 270
    add-int/lit8 v11, v5, 0x2

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    iget v13, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v13, v13

    div-double/2addr v11, v13

    double-to-float v4, v11

    .line 271
    .local v4, f:F
    const/4 v11, 0x1

    sub-int v11, v6, v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    mul-float v7, v11, v4

    .line 278
    .end local v4           #f:F
    .local v7, rawData:F
    :goto_5
    const/high16 v11, 0x41a0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_6

    .line 279
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v7, v11

    .line 285
    :goto_6
    iget-object v11, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    iget v12, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v12, v12

    div-float v12, v7, v12

    iget-object v13, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v13, v13, v5

    iget v14, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    aput v12, v11, v5

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 273
    .end local v7           #rawData:F
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #rawData:F
    goto :goto_5

    .line 281
    :cond_6
    iget v11, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float/2addr v7, v11

    goto :goto_6

    .line 288
    .end local v6           #max:I
    .end local v7           #rawData:F
    :cond_7
    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->invalidate()V

    goto/16 :goto_0
.end method


# virtual methods
.method public enableDrawing(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 181
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    .line 182
    return-void
.end method

.method public enableUpdate(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 194
    :try_start_0
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v0, p1, :cond_1

    .line 195
    if-eqz p1, :cond_3

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_3

    .line 196
    sget-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "SpectrumVisualizer"

    const-string v1, "lpa decode is on, can\'t enable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 199
    :cond_2
    new-instance v0, Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 200
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 202
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 206
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_1

    .line 209
    :cond_3
    if-nez p1, :cond_0

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 211
    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 218
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 159
    iget-boolean v2, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v2, :cond_1

    .line 178
    :cond_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    .line 166
    .local v0, end:I
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 167
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1
    if-lez v1, :cond_0

    .line 172
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 174
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 175
    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    .line 171
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
