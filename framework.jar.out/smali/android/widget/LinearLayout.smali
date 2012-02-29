.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 84
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 70
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 78
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 84
    const/16 v3, 0x33

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 126
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 130
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    :cond_0
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 135
    if-ltz v2, :cond_1

    .line 136
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 139
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 140
    .local v1, baselineAligned:Z
    if-nez v1, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 144
    :cond_2
    const/4 v3, 0x4

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 146
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 150
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 152
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 961
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 963
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 964
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 965
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 966
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 968
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 971
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 972
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 975
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 976
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 963
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 980
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 584
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 586
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 587
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 589
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 591
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 594
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 595
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 598
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 599
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 586
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 603
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1263
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1264
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1365
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1348
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1353
    :goto_0
    return-object v0

    .line 1350
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1351
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1335
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1358
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 181
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_0

    .line 182
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 229
    :goto_0
    return v5

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1

    .line 186
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 190
    :cond_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 193
    .local v1, childBaseline:I
    if-ne v1, v7, :cond_3

    .line 194
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2

    move v5, v7

    .line 196
    goto :goto_0

    .line 200
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 212
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 213
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 214
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 215
    sparse-switch v4, :sswitch_data_0

    .line 228
    .end local v4           #majorGravity:I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 217
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_0
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 218
    goto :goto_1

    .line 221
    :sswitch_1
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1045
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1286
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method layoutHorizontal()V
    .locals 26

    .prologue
    .line 1155
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v25, v0

    .line 1157
    .local v25, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->shouldMirror()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->hasBackgroundDrawablePadding()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    move/from16 v24, v3

    .line 1160
    .local v24, paddingLeft:I
    :goto_0
    move/from16 v12, v24

    .line 1163
    .local v12, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int v17, v3, v4

    .line 1164
    .local v17, height:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v3, v0

    sub-int v11, v17, v3

    .line 1167
    .local v11, childBottom:I
    sub-int v3, v17, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1169
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1171
    .local v14, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v20, v3, 0x7

    .line 1172
    .local v20, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v23, v3, 0x70

    .line 1174
    .local v23, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v9, v0

    .line 1176
    .local v9, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v21, v0

    .line 1177
    .local v21, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v22, v0

    .line 1179
    .local v22, maxDescent:[I
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 1180
    sparse-switch v20, :sswitch_data_0

    .line 1193
    :cond_0
    :goto_1
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_7

    .line 1194
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1196
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_3

    .line 1197
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v12, v3

    .line 1193
    :cond_1
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1157
    .end local v4           #child:Landroid/view/View;
    .end local v9           #baselineAligned:Z
    .end local v11           #childBottom:I
    .end local v12           #childLeft:I
    .end local v13           #childSpace:I
    .end local v14           #count:I
    .end local v17           #height:I
    .end local v18           #i:I
    .end local v20           #majorGravity:I
    .end local v21           #maxAscent:[I
    .end local v22           #maxDescent:[I
    .end local v23           #minorGravity:I
    .end local v24           #paddingLeft:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move/from16 v24, v3

    goto :goto_0

    .line 1184
    .restart local v9       #baselineAligned:Z
    .restart local v11       #childBottom:I
    .restart local v12       #childLeft:I
    .restart local v13       #childSpace:I
    .restart local v14       #count:I
    .restart local v17       #height:I
    .restart local v20       #majorGravity:I
    .restart local v21       #maxAscent:[I
    .restart local v22       #maxDescent:[I
    .restart local v23       #minorGravity:I
    .restart local v24       #paddingLeft:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    add-int v3, v3, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1185
    goto :goto_1

    .line 1188
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_1

    .line 1198
    .restart local v4       #child:Landroid/view/View;
    .restart local v18       #i:I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 1199
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1200
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1201
    .local v8, childHeight:I
    const/4 v10, -0x1

    .line 1203
    .local v10, childBaseline:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1206
    .local v19, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v9, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 1207
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 1210
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 1211
    .local v16, gravity:I
    if-gez v16, :cond_5

    .line 1212
    move/from16 v16, v23

    .line 1215
    :cond_5
    and-int/lit8 v3, v16, 0x70

    sparse-switch v3, :sswitch_data_1

    .line 1247
    move/from16 v6, v25

    .line 1251
    .local v6, childTop:I
    :cond_6
    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1252
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v5, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1254
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v3, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 1257
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v18, v18, v3

    goto/16 :goto_3

    .line 1217
    .end local v6           #childTop:I
    :sswitch_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v6, v25, v3

    .line 1218
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 1219
    const/4 v3, 0x1

    aget v3, v21, v3

    sub-int/2addr v3, v10

    add-int/2addr v6, v3

    goto :goto_4

    .line 1235
    .end local v6           #childTop:I
    :sswitch_3
    sub-int v3, v13, v8

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1237
    .restart local v6       #childTop:I
    goto :goto_4

    .line 1240
    .end local v6           #childTop:I
    :sswitch_4
    sub-int v3, v11, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1241
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    .line 1242
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v15, v3, v10

    .line 1243
    .local v15, descent:I
    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v3, v15

    sub-int/2addr v6, v3

    .line 1244
    goto :goto_4

    .line 1260
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childTop:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v10           #childBaseline:I
    .end local v15           #descent:I
    .end local v16           #gravity:I
    .end local v19           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 1180
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1215
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 21

    .prologue
    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->shouldMirror()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->hasBackgroundDrawablePadding()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    move/from16 v18, v3

    .line 1069
    .local v18, paddingLeft:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v11, v0

    .line 1073
    .local v11, childTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->shouldMirror()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->hasBackgroundDrawablePadding()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move/from16 v19, v3

    .line 1075
    .local v19, paddingRight:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int v20, v3, v4

    .line 1076
    .local v20, width:I
    sub-int v9, v20, v19

    .line 1079
    .local v9, childRight:I
    sub-int v3, v20, v18

    sub-int v10, v3, v19

    .line 1081
    .local v10, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1083
    .local v12, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v16, v3, 0x70

    .line 1084
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v17, v3, 0x7

    .line 1086
    .local v17, minorGravity:I
    const/16 v3, 0x30

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 1087
    sparse-switch v16, :sswitch_data_0

    .line 1101
    :cond_0
    :goto_2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    if-ge v14, v12, :cond_6

    .line 1102
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1103
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_4

    .line 1104
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 1101
    :cond_1
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1066
    .end local v4           #child:Landroid/view/View;
    .end local v9           #childRight:I
    .end local v10           #childSpace:I
    .end local v11           #childTop:I
    .end local v12           #count:I
    .end local v14           #i:I
    .end local v16           #majorGravity:I
    .end local v17           #minorGravity:I
    .end local v18           #paddingLeft:I
    .end local v19           #paddingRight:I
    .end local v20           #width:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move/from16 v18, v3

    goto :goto_0

    .line 1073
    .restart local v11       #childTop:I
    .restart local v18       #paddingLeft:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    move/from16 v19, v3

    goto :goto_1

    .line 1091
    .restart local v9       #childRight:I
    .restart local v10       #childSpace:I
    .restart local v12       #count:I
    .restart local v16       #majorGravity:I
    .restart local v17       #minorGravity:I
    .restart local v19       #paddingRight:I
    .restart local v20       #width:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v11, v3, v4

    .line 1092
    goto :goto_2

    .line 1095
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    goto :goto_2

    .line 1105
    .restart local v4       #child:Landroid/view/View;
    .restart local v14       #i:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    .line 1106
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1107
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1109
    .local v8, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1112
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1113
    .local v13, gravity:I
    if-gez v13, :cond_5

    .line 1114
    move/from16 v13, v17

    .line 1117
    :cond_5
    and-int/lit8 v3, v13, 0x7

    packed-switch v3, :pswitch_data_0

    .line 1131
    :pswitch_0
    move/from16 v5, v18

    .line 1136
    .local v5, childLeft:I
    :goto_5
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1137
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, v11, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1139
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    .end local v5           #childLeft:I
    add-int/2addr v3, v5

    add-int/2addr v11, v3

    .line 1141
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v14, v3

    goto/16 :goto_4

    .line 1119
    :pswitch_1
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v5, v18, v3

    .line 1120
    .restart local v5       #childLeft:I
    goto :goto_5

    .line 1123
    .end local v5           #childLeft:I
    :pswitch_2
    sub-int v3, v10, v7

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v18

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1125
    .restart local v5       #childLeft:I
    goto :goto_5

    .line 1128
    .end local v5           #childLeft:I
    :pswitch_3
    sub-int v3, v9, v7

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1129
    .restart local v5       #childLeft:I
    goto :goto_5

    .line 1144
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v13           #gravity:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    return-void

    .line 1087
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1021
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1023
    return-void
.end method

.method measureHorizontal(II)V
    .locals 44
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 617
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 618
    const/16 v34, 0x0

    .line 619
    .local v34, maxHeight:I
    const/4 v11, 0x0

    .line 620
    .local v11, alternativeMaxHeight:I
    const/16 v41, 0x0

    .line 621
    .local v41, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 622
    .local v10, allFillParent:Z
    const/16 v38, 0x0

    .line 624
    .local v38, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v19

    .line 626
    .local v19, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v42

    .line 627
    .local v42, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 629
    .local v24, heightMode:I
    const/16 v30, 0x0

    .line 631
    .local v30, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object v3, v0

    if-nez v3, :cond_1

    .line 632
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 633
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 636
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v32, v0

    .line 637
    .local v32, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v33, v0

    .line 639
    .local v33, maxDescent:[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 640
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v13, v0

    .line 643
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v39, v0

    .line 645
    .local v39, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    move/from16 v26, v3

    .line 647
    .local v26, isExactly:Z
    :goto_0
    const/high16 v27, -0x8000

    .line 650
    .local v27, largestChildWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    .line 651
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 653
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_3

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 650
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 645
    .end local v5           #i:I
    .end local v26           #isExactly:Z
    .end local v27           #largestChildWidth:I
    :cond_2
    const/4 v3, 0x0

    move/from16 v26, v3

    goto :goto_0

    .line 658
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v26       #isExactly:Z
    .restart local v27       #largestChildWidth:I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 659
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 660
    goto :goto_2

    .line 663
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 666
    .local v28, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v38, v38, v3

    .line 668
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 672
    if-eqz v26, :cond_8

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 685
    :goto_3
    if-eqz v13, :cond_5

    .line 686
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 687
    .local v22, freeSpec:I
    move-object v0, v4

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 728
    .end local v22           #freeSpec:I
    :cond_5
    :goto_4
    const/16 v31, 0x0

    .line 729
    .local v31, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    .line 733
    const/16 v30, 0x1

    .line 734
    const/16 v31, 0x1

    .line 737
    :cond_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 738
    .local v29, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 740
    .local v16, childHeight:I
    if-eqz v13, :cond_7

    .line 741
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 742
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_7

    .line 745
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_5
    and-int/lit8 v23, v3, 0x70

    .line 747
    .local v23, gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 750
    .local v25, index:I
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 751
    aget v3, v33, v25

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v25

    .line 755
    .end local v14           #childBaseline:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    :cond_7
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 757
    if-eqz v10, :cond_f

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_f

    const/4 v3, 0x1

    move v10, v3

    .line 758
    :goto_6
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_11

    .line 763
    if-eqz v31, :cond_10

    move/from16 v3, v29

    :goto_7
    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 770
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 675
    .end local v16           #childHeight:I
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 676
    .local v37, totalLength:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 690
    .end local v37           #totalLength:I
    :cond_9
    const/high16 v35, -0x8000

    .line 692
    .local v35, oldWidth:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_a

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 697
    const/16 v35, 0x0

    .line 698
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 705
    :cond_a
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v7, v3

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 709
    const/high16 v3, -0x8000

    move/from16 v0, v35

    move v1, v3

    if-eq v0, v1, :cond_b

    .line 710
    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 713
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 714
    .local v18, childWidth:I
    if-eqz v26, :cond_d

    .line 715
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 723
    :goto_a
    if-eqz v39, :cond_5

    .line 724
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto/16 :goto_4

    .line 705
    .end local v18           #childWidth:I
    :cond_c
    const/4 v3, 0x0

    move v7, v3

    goto :goto_9

    .line 718
    .restart local v18       #childWidth:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 719
    .restart local v37       #totalLength:I
    add-int v3, v37, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_a

    .line 745
    .end local v18           #childWidth:I
    .end local v35           #oldWidth:I
    .end local v37           #totalLength:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v29       #margin:I
    .restart local v31       #matchHeightLocally:Z
    :cond_e
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto/16 :goto_5

    .line 757
    .end local v14           #childBaseline:I
    :cond_f
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_6

    :cond_10
    move/from16 v3, v16

    .line 763
    goto/16 :goto_7

    .line 766
    :cond_11
    if-eqz v31, :cond_12

    move/from16 v3, v29

    :goto_b
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    :cond_12
    move/from16 v3, v16

    goto :goto_b

    .line 775
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_13
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 779
    :cond_14
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    .end local v5           #i:I
    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 782
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 785
    .local v21, descent:I
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 788
    .end local v12           #ascent:I
    .end local v21           #descent:I
    :cond_15
    if-eqz v39, :cond_19

    const/high16 v3, -0x8000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_19

    .line 789
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 791
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_c
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_19

    .line 792
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 794
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_16

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 791
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 799
    .restart local v4       #child:Landroid/view/View;
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_17

    .line 800
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 801
    goto :goto_d

    .line 804
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 806
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v26, :cond_18

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 810
    .restart local v4       #child:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 811
    .restart local v37       #totalLength:I
    add-int v3, v37, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 818
    .end local v5           #i:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v37           #totalLength:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 820
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    .line 823
    .local v43, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v43

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 826
    move/from16 v0, v43

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v43

    .line 830
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v20, v43, v3

    .line 831
    .local v20, delta:I
    if-eqz v20, :cond_2c

    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_2c

    .line 832
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v40, v3

    .line 834
    .local v40, weightSum:F
    :goto_e
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 835
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 836
    const/16 v34, -0x1

    .line 838
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 840
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_f
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_27

    .line 841
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 843
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1c

    .line 840
    .end local v4           #child:Landroid/view/View;
    :cond_1a
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v5           #i:I
    .end local v40           #weightSum:F
    :cond_1b
    move/from16 v40, v38

    .line 832
    goto :goto_e

    .line 847
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v40       #weightSum:F
    :cond_1c
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 850
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v15, v0

    .line 851
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_1f

    .line 853
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v40

    move v0, v3

    float-to-int v0, v0

    move/from16 v36, v0

    .line 854
    .local v36, share:I
    sub-float v40, v40, v15

    .line 855
    sub-int v20, v20, v36

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v6, v0

    move/from16 v0, p2

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 864
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_1d

    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-eq v0, v1, :cond_20

    .line 867
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v18, v3, v36

    .line 868
    .restart local v18       #childWidth:I
    if-gez v18, :cond_1e

    .line 869
    const/16 v18, 0x0

    .line 872
    :cond_1e
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 883
    .end local v17           #childHeightMeasureSpec:I
    .end local v18           #childWidth:I
    .end local v36           #share:I
    :cond_1f
    :goto_11
    if-eqz v26, :cond_22

    .line 884
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 892
    :goto_12
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_23

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_23

    const/4 v3, 0x1

    move/from16 v31, v3

    .line 895
    .restart local v31       #matchHeightLocally:Z
    :goto_13
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 896
    .restart local v29       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 897
    .restart local v16       #childHeight:I
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 898
    if-eqz v31, :cond_24

    move/from16 v3, v29

    :goto_14
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 901
    if-eqz v10, :cond_25

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_25

    const/4 v3, 0x1

    move v10, v3

    .line 903
    :goto_15
    if-eqz v13, :cond_1a

    .line 904
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 905
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1a

    .line 907
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_16
    and-int/lit8 v23, v3, 0x70

    .line 909
    .restart local v23       #gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 912
    .restart local v25       #index:I
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 913
    aget v3, v33, v25

    sub-int v4, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .end local v4           #child:Landroid/view/View;
    move-result v3

    aput v3, v33, v25

    goto/16 :goto_10

    .line 877
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v36       #share:I
    :cond_20
    if-lez v36, :cond_21

    move/from16 v3, v36

    :goto_17
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    :cond_21
    const/4 v3, 0x0

    goto :goto_17

    .line 887
    .end local v17           #childHeightMeasureSpec:I
    .end local v36           #share:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 888
    .restart local v37       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12

    .line 892
    .end local v37           #totalLength:I
    :cond_23
    const/4 v3, 0x0

    move/from16 v31, v3

    goto/16 :goto_13

    .restart local v16       #childHeight:I
    .restart local v29       #margin:I
    .restart local v31       #matchHeightLocally:Z
    :cond_24
    move/from16 v3, v16

    .line 898
    goto/16 :goto_14

    .line 901
    :cond_25
    const/4 v3, 0x0

    move v10, v3

    goto :goto_15

    .line 907
    .restart local v14       #childBaseline:I
    :cond_26
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto :goto_16

    .line 920
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v28           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #margin:I
    .end local v31           #matchHeightLocally:Z
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 925
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_28

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 929
    :cond_28
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 932
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 935
    .restart local v21       #descent:I
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 941
    .end local v12           #ascent:I
    .end local v21           #descent:I
    .end local v40           #weightSum:F
    :cond_29
    :goto_18
    if-nez v10, :cond_2a

    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_2a

    .line 942
    move/from16 v34, v11

    .line 945
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v34, v34, v3

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 950
    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 952
    if-eqz v30, :cond_2b

    .line 953
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 955
    :cond_2b
    return-void

    .line 938
    :cond_2c
    move v0, v11

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_18
.end method

.method measureNullChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1002
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 35
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 331
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 332
    const/16 v25, 0x0

    .line 333
    .local v25, maxWidth:I
    const/4 v11, 0x0

    .line 334
    .local v11, alternativeMaxWidth:I
    const/16 v33, 0x0

    .line 335
    .local v33, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 336
    .local v10, allFillParent:Z
    const/16 v30, 0x0

    .line 338
    .local v30, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v16

    .line 340
    .local v16, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v34

    .line 341
    .local v34, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 343
    .local v18, heightMode:I
    const/16 v23, 0x0

    .line 345
    .local v23, matchWidth:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move v12, v0

    .line 346
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v31, v0

    .line 348
    .local v31, useLargestChild:Z
    const/high16 v20, -0x8000

    .line 351
    .local v20, largestChildHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 352
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 354
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 351
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    .restart local v4       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 360
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 361
    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 366
    .local v21, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v30, v30, v3

    .line 368
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_4

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 373
    .local v29, totalLength:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 412
    :cond_2
    :goto_2
    if-ltz v12, :cond_3

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_3

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 419
    :cond_3
    if-ge v5, v12, :cond_8

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    .line 420
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .end local v4           #child:Landroid/view/View;
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    .end local v29           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    :cond_4
    const/high16 v27, -0x8000

    .line 377
    .local v27, oldHeight:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 382
    const/16 v27, 0x0

    .line 383
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 390
    :cond_5
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v9, v3

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 394
    const/high16 v3, -0x8000

    move/from16 v0, v27

    move v1, v3

    if-eq v0, v1, :cond_6

    .line 395
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 398
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 399
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 400
    .restart local v29       #totalLength:I
    add-int v3, v29, v14

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 403
    if-eqz v31, :cond_2

    .line 404
    move v0, v14

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_2

    .line 390
    .end local v14           #childHeight:I
    .end local v29           #totalLength:I
    :cond_7
    const/4 v3, 0x0

    move v9, v3

    goto :goto_3

    .line 426
    .end local v27           #oldHeight:I
    .restart local v29       #totalLength:I
    :cond_8
    const/16 v24, 0x0

    .line 427
    .local v24, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    .line 432
    const/16 v23, 0x1

    .line 433
    const/16 v24, 0x1

    .line 436
    :cond_9
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 437
    .local v22, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 438
    .local v26, measuredWidth:I
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 440
    if-eqz v10, :cond_a

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    const/4 v3, 0x1

    move v10, v3

    .line 441
    :goto_4
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 446
    if-eqz v24, :cond_b

    move/from16 v3, v22

    :goto_5
    move/from16 v0, v33

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 453
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 440
    :cond_a
    const/4 v3, 0x0

    move v10, v3

    goto :goto_4

    :cond_b
    move/from16 v3, v26

    .line 446
    goto :goto_5

    .line 449
    :cond_c
    if-eqz v24, :cond_d

    move/from16 v3, v22

    :goto_7
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    :cond_d
    move/from16 v3, v26

    goto :goto_7

    .line 456
    .end local v4           #child:Landroid/view/View;
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    .end local v29           #totalLength:I
    :cond_e
    if-eqz v31, :cond_11

    const/high16 v3, -0x8000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_11

    .line 457
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 459
    const/4 v5, 0x0

    :goto_8
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 460
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 462
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_f

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 459
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 467
    .restart local v4       #child:Landroid/view/View;
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_10

    .line 468
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 469
    goto :goto_9

    .line 472
    :cond_10
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 475
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 476
    .restart local v29       #totalLength:I
    add-int v3, v29, v20

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 482
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #totalLength:I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v19, v0

    .line 487
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 490
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v19

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v17, v19, v3

    .line 495
    .local v17, delta:I
    if-eqz v17, :cond_1f

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_1f

    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v32, v3

    .line 498
    .local v32, weightSum:F
    :goto_a
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 500
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_b
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c

    .line 501
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 503
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_13

    .line 500
    .end local v4           #child:Landroid/view/View;
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v5           #i:I
    .end local v32           #weightSum:F
    :cond_12
    move/from16 v32, v30

    .line 496
    goto :goto_a

    .line 507
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v32       #weightSum:F
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 509
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v13, v0

    .line 510
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_16

    .line 512
    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v32

    move v0, v3

    float-to-int v0, v0

    move/from16 v28, v0

    .line 513
    .local v28, share:I
    sub-float v32, v32, v13

    .line 514
    sub-int v17, v17, v28

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v6, v0

    move/from16 v0, p1

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v15

    .line 522
    .local v15, childWidthMeasureSpec:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_14

    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_17

    .line 525
    :cond_14
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v28

    .line 526
    .restart local v14       #childHeight:I
    if-gez v14, :cond_15

    .line 527
    const/4 v14, 0x0

    .line 530
    :cond_15
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    .line 541
    .end local v14           #childHeight:I
    .end local v15           #childWidthMeasureSpec:I
    .end local v28           #share:I
    :cond_16
    :goto_d
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 542
    .restart local v22       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 543
    .restart local v26       #measuredWidth:I
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 545
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_19

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_19

    const/4 v3, 0x1

    move/from16 v24, v3

    .line 548
    .restart local v24       #matchWidthLocally:Z
    :goto_e
    if-eqz v24, :cond_1a

    move/from16 v3, v22

    :goto_f
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 551
    if-eqz v10, :cond_1b

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1b

    const/4 v3, 0x1

    move v10, v3

    .line 553
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 554
    .restart local v29       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 535
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    .end local v29           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #childWidthMeasureSpec:I
    .restart local v28       #share:I
    :cond_17
    if-lez v28, :cond_18

    move/from16 v3, v28

    :goto_11
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    goto :goto_d

    :cond_18
    const/4 v3, 0x0

    goto :goto_11

    .line 545
    .end local v15           #childWidthMeasureSpec:I
    .end local v28           #share:I
    .restart local v22       #margin:I
    .restart local v26       #measuredWidth:I
    :cond_19
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_e

    .restart local v24       #matchWidthLocally:Z
    :cond_1a
    move/from16 v3, v26

    .line 548
    goto :goto_f

    .line 551
    :cond_1b
    const/4 v3, 0x0

    move v10, v3

    goto :goto_10

    .line 559
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v21           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v22           #margin:I
    .end local v24           #matchWidthLocally:Z
    .end local v26           #measuredWidth:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 566
    .end local v32           #weightSum:F
    :goto_12
    if-nez v10, :cond_1d

    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_1d

    .line 567
    move/from16 v25, v11

    .line 570
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v25, v25, v3

    .line 573
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 575
    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 577
    if-eqz v23, :cond_1e

    .line 578
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 580
    :cond_1e
    return-void

    .line 562
    :cond_1f
    move v0, v11

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_12
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1050
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1051
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 312
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 176
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 177
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 249
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 254
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1301
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1302
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 1303
    or-int/lit8 p1, p1, 0x3

    .line 1306
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1307
    or-int/lit8 p1, p1, 0x30

    .line 1310
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1311
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1313
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 2
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1317
    and-int/lit8 v0, p1, 0x7

    .line 1318
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_0

    .line 1319
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1320
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1322
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1274
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1275
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1278
    :cond_0
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1326
    and-int/lit8 v0, p1, 0x70

    .line 1327
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1328
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1329
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1331
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 308
    return-void
.end method
