.class Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Lmiui/widget/SpectrumVisualizer$DotBarDrawer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SymmetryDotBar"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/SpectrumVisualizer;


# direct methods
.method private constructor <init>(Lmiui/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/widget/SpectrumVisualizer;Lmiui/widget/SpectrumVisualizer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    return-void
.end method


# virtual methods
.method public drawDotBar(Landroid/graphics/Canvas;I)V
    .locals 17
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$300(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v3, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mPointData:[F
    invoke-static {v3}, Lmiui/widget/SpectrumVisualizer;->access$400(Lmiui/widget/SpectrumVisualizer;)[F

    move-result-object v3

    aget v3, v3, p2

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v2, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v2}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v2, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v2}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v2

    mul-int v6, v1, v2

    .line 318
    .local v6, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$300(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mPixels:[I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$600(Lmiui/widget/SpectrumVisualizer;)[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    mul-int v3, v1, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    mul-int v5, v1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$300(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    sub-int v8, v1, v6

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$700(Lmiui/widget/SpectrumVisualizer;)Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$800(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v2, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mPointData:[F
    invoke-static {v2}, Lmiui/widget/SpectrumVisualizer;->access$400(Lmiui/widget/SpectrumVisualizer;)[F

    move-result-object v2

    aget v2, v2, p2

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v2, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v2}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v2, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v2}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v2

    mul-int v14, v1, v2

    .line 331
    .local v14, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$800(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    if-le v14, v1, :cond_1

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$800(Lmiui/widget/SpectrumVisualizer;)I

    move-result v14

    .line 334
    :cond_1
    if-lez v14, :cond_2

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$900(Lmiui/widget/SpectrumVisualizer;)[I

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v1

    mul-int v11, v1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$300(Lmiui/widget/SpectrumVisualizer;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mCellSize:I
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$500(Lmiui/widget/SpectrumVisualizer;)I

    move-result v13

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;->this$0:Lmiui/widget/SpectrumVisualizer;

    move-object v1, v0

    #getter for: Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lmiui/widget/SpectrumVisualizer;->access$700(Lmiui/widget/SpectrumVisualizer;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 345
    :cond_2
    return-void
.end method
