.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static MIN_PAGES:I = 0x0

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2


# instance fields
.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mItemCount:I

.field private mList:Landroid/widget/AbsListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMultiPointerUsed:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollCompleted:Z

.field private mScrollFade:Landroid/widget/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mShouldMirror:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x4

    sput v0, Landroid/widget/FastScroller;->MIN_PAGES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mShouldMirror:Z

    .line 64
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/widget/FastScroller;)Landroid/widget/AbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 463
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 464
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 465
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 466
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 6

    .prologue
    .line 330
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 331
    .local v1, adapter:Landroid/widget/Adapter;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 332
    instance-of v3, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_0

    .line 333
    move-object v0, v1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v3

    iput v3, p0, Landroid/widget/FastScroller;->mListOffset:I

    .line 334
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 336
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v3, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v3, :cond_2

    .line 337
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    .line 338
    .local v2, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v3, v2, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_1

    .line 339
    check-cast v2, Landroid/widget/SectionIndexer;

    .end local v2           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 340
    check-cast v1, Landroid/widget/BaseAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 341
    iget-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 344
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v3, v1, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_3

    .line 345
    move-object v0, v1

    check-cast v0, Landroid/widget/BaseAdapter;

    move-object v3, v0

    iput-object v3, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 346
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 347
    iget-object v3, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 350
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v1, Landroid/widget/BaseAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 351
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, " "

    aput-object v5, v3, v4

    iput-object v3, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 176
    iput-boolean v5, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 178
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 180
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 181
    new-instance v3, Landroid/widget/FastScroller$ScrollFade;

    invoke-direct {v3, p0}, Landroid/widget/FastScroller$ScrollFade;-><init>(Landroid/widget/FastScroller;)V

    iput-object v3, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 182
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v4, v5, [I

    const v5, 0x1010036

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 188
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 189
    .local v1, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 190
    .local v2, textColorNormal:I
    iget-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v3, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iput v6, p0, Landroid/widget/FastScroller;->mState:I

    .line 194
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 135
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 138
    .end local v0           #viewWidth:I
    :cond_0
    return-void
.end method

.method private scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    .line 358
    .local v3, count:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 359
    const/high16 v20, 0x3f80

    move v0, v3

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x4100

    div-float v8, v20, v21

    .line 360
    .local v8, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 362
    .local v18, sections:[Ljava/lang/Object;
    if-eqz v18, :cond_b

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    .line 363
    move-object/from16 v0, v18

    array-length v0, v0

    move v10, v0

    .line 364
    .local v10, nSections:I
    move v0, v10

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 365
    .local v16, section:I
    move/from16 v0, v16

    move v1, v10

    if-lt v0, v1, :cond_0

    .line 366
    const/16 v20, 0x1

    sub-int v16, v10, v20

    .line 368
    :cond_0
    move/from16 v4, v16

    .line 369
    .local v4, exactSection:I
    move/from16 v17, v16

    .line 370
    .local v17, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 377
    .local v9, index:I
    move v11, v3

    .line 378
    .local v11, nextIndex:I
    move v14, v9

    .line 379
    .local v14, prevIndex:I
    move/from16 v15, v16

    .line 380
    .local v15, prevSection:I
    add-int/lit8 v13, v16, 0x1

    .line 382
    .local v13, nextSection:I
    const/16 v20, 0x1

    sub-int v20, v10, v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    add-int/lit8 v21, v16, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 387
    :cond_1
    if-ne v11, v9, :cond_3

    .line 389
    :cond_2
    if-lez v16, :cond_3

    .line 390
    add-int/lit8 v16, v16, -0x1

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    .line 392
    if-eq v14, v9, :cond_4

    .line 393
    move/from16 v15, v16

    .line 394
    move/from16 v17, v16

    .line 409
    :cond_3
    :goto_0
    add-int/lit8 v12, v13, 0x1

    .line 411
    .local v12, nextNextSection:I
    :goto_1
    if-ge v12, v10, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v20

    move/from16 v0, v20

    move v1, v11

    if-ne v0, v1, :cond_5

    .line 412
    add-int/lit8 v12, v12, 0x1

    .line 413
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 396
    .end local v12           #nextNextSection:I
    :cond_4
    if-nez v16, :cond_2

    .line 399
    const/16 v17, 0x0

    .line 400
    goto :goto_0

    .line 418
    .restart local v12       #nextNextSection:I
    :cond_5
    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v7, v20, v21

    .line 419
    .local v7, fPrev:F
    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v6, v20, v21

    .line 420
    .local v6, fNext:F
    if-ne v15, v4, :cond_8

    sub-float v20, p1, v7

    cmpg-float v20, v20, v8

    if-gez v20, :cond_8

    .line 421
    move v9, v14

    .line 427
    :goto_2
    const/16 v20, 0x1

    sub-int v20, v3, v20

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/16 v20, 0x1

    sub-int v9, v3, v20

    .line 429
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 431
    .local v5, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 452
    .end local v4           #exactSection:I
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v10           #nSections:I
    .end local v11           #nextIndex:I
    .end local v12           #nextNextSection:I
    .end local v13           #nextSection:I
    .end local v14           #prevIndex:I
    .end local v15           #prevSection:I
    .end local v16           #section:I
    .end local p1
    :goto_3
    if-ltz v17, :cond_f

    .line 453
    aget-object v20, v18, v17

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    .line 454
    .local v19, text:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    :cond_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    .line 459
    .end local v19           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 423
    .restart local v4       #exactSection:I
    .restart local v6       #fNext:F
    .restart local v7       #fPrev:F
    .restart local v10       #nSections:I
    .restart local v11       #nextIndex:I
    .restart local v12       #nextNextSection:I
    .restart local v13       #nextSection:I
    .restart local v14       #prevIndex:I
    .restart local v15       #prevSection:I
    .restart local v16       #section:I
    .restart local p1
    :cond_8
    sub-int v20, v11, v14

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v21, p1, v7

    mul-float v20, v20, v21

    sub-float v21, v6, v7

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v9, v14, v20

    goto/16 :goto_2

    .line 433
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 436
    .restart local p1
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView;->setSelection(I)V

    goto/16 :goto_3

    .line 439
    .end local v4           #exactSection:I
    .end local v6           #fNext:F
    .end local v7           #fPrev:F
    .end local v9           #index:I
    .end local v10           #nSections:I
    .end local v11           #nextIndex:I
    .end local v12           #nextNextSection:I
    .end local v13           #nextSection:I
    .end local v14           #prevIndex:I
    .end local v15           #prevSection:I
    .end local v16           #section:I
    .end local v17           #sectionIndex:I
    :cond_b
    move v0, v3

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, p1

    move/from16 v0, v20

    float-to-int v0, v0

    move v9, v0

    .line 440
    .restart local v9       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    check-cast v5, Landroid/widget/ExpandableListView;

    .line 442
    .restart local v5       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    invoke-static/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v20

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v20

    const/16 v21, 0x0

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 449
    .end local v5           #expList:Landroid/widget/ExpandableListView;
    .end local p1
    :goto_6
    const/16 v17, -0x1

    .restart local v17       #sectionIndex:I
    goto/16 :goto_3

    .line 444
    .end local v17           #sectionIndex:I
    .restart local p1
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v20, v0

    if-eqz v20, :cond_d

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v9

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 447
    .restart local p1
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v21, v0

    add-int v21, v21, v9

    invoke-virtual/range {v20 .. v21}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_6

    .line 454
    .end local p1
    .restart local v17       #sectionIndex:I
    .restart local v19       #text:Ljava/lang/String;
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 457
    .end local v19           #text:Ljava/lang/String;
    :cond_f
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 20
    .parameter "canvas"
    .parameter "shouldMirror"

    .prologue
    .line 206
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mShouldMirror:Z

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move v5, v0

    if-nez v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbY:I

    move/from16 v19, v0

    .line 213
    .local v19, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getWidth()I

    move-result v18

    .line 214
    .local v18, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    move-object/from16 v17, v0

    .line 216
    .local v17, scrollFade:Landroid/widget/FastScroller$ScrollFade;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v13

    .line 218
    .local v13, height:I
    const/16 v5, 0x8

    new-array v6, v5, [F

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v7, v6, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    aput v7, v6, v5

    const/4 v5, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    aput v7, v6, v5

    const/4 v5, 0x3

    const/4 v7, 0x0

    aput v7, v6, v5

    const/4 v5, 0x4

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    aput v7, v6, v5

    const/4 v5, 0x5

    int-to-float v7, v13

    aput v7, v6, v5

    const/4 v5, 0x6

    const/4 v7, 0x0

    aput v7, v6, v5

    const/4 v5, 0x7

    int-to-float v7, v13

    aput v7, v6, v5

    .line 219
    .local v6, src:[F
    const/16 v5, 0x8

    new-array v8, v5, [F

    const/4 v5, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    aput v7, v8, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    aput v7, v8, v5

    const/4 v5, 0x2

    const/4 v7, 0x0

    aput v7, v8, v5

    const/4 v5, 0x3

    const/4 v7, 0x0

    aput v7, v8, v5

    const/4 v5, 0x4

    const/4 v7, 0x0

    aput v7, v8, v5

    const/4 v5, 0x5

    int-to-float v7, v13

    aput v7, v8, v5

    const/4 v5, 0x6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    aput v7, v8, v5

    const/4 v5, 0x7

    int-to-float v7, v13

    aput v7, v8, v5

    .line 220
    .local v8, dst:[F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mMirrorMatrix:Landroid/graphics/Matrix;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 224
    .end local v6           #src:[F
    .end local v8           #dst:[F
    .end local v13           #height:I
    :cond_2
    const/4 v11, -0x1

    .line 225
    .local v11, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 226
    invoke-virtual/range {v17 .. v17}, Landroid/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v11

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 228
    const/16 v5, 0x68

    if-ge v11, v5, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    mul-int/lit8 v6, v11, 0x2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 231
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move v5, v0

    mul-int/2addr v5, v11

    div-int/lit16 v5, v5, 0xd0

    sub-int v14, v18, v5

    .line 232
    .local v14, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move v7, v0

    move-object v0, v5

    move v1, v14

    move v2, v6

    move/from16 v3, v18

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 237
    .end local v14           #left:I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 238
    const/4 v5, 0x0

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 240
    if-eqz p2, :cond_5

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mMirrorMatrix:Landroid/graphics/Matrix;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 243
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mDrawOverlay:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 252
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 253
    .local v15, paint:Landroid/graphics/Paint;
    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v12

    .line 254
    .local v12, descent:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    .line 255
    .local v16, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlaySize:I

    move v8, v0

    div-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v7, v12

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 257
    .end local v12           #descent:F
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #rectF:Landroid/graphics/RectF;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 258
    if-nez v11, :cond_9

    .line 259
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 261
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mShouldMirror:Z

    move v5, v0

    if-eqz v5, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbY:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move v9, v0

    add-int v9, v9, v19

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move v6, v0

    sub-int v6, v18, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move v7, v0

    add-int v7, v7, v19

    move-object v0, v5

    move v1, v6

    move/from16 v2, v19

    move/from16 v3, v18

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto/16 :goto_0
.end method

.method public getOverlay()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isPointInside(FFZ)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "shouldMirror"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, inside:Z
    iget v1, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v2, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 583
    if-eqz p3, :cond_2

    .line 584
    iget v1, p0, Landroid/widget/FastScroller;->mThumbW:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    move v0, v4

    .line 590
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 584
    goto :goto_0

    .line 587
    :cond_2
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    move v0, v4

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 2
    .parameter "ev"
    .parameter "shouldMirror"

    .prologue
    .line 469
    iput-boolean p2, p0, Landroid/widget/FastScroller;->mShouldMirror:Z

    .line 470
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/widget/FastScroller;->isPointInside(FFZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 473
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 290
    iput p4, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 291
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v1, Landroid/widget/FastScroller;->MIN_PAGES:I

    if-lt v0, v1, :cond_2

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 293
    :cond_0
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_3

    .line 294
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 316
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 291
    goto :goto_0

    .line 299
    :cond_3
    sub-int v0, p4, p3

    if-lez v0, :cond_4

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_4

    .line 300
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 302
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_4

    .line 303
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 304
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 307
    :cond_4
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 308
    iget v0, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_1

    .line 311
    iput p2, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    .line 312
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_1

    .line 313
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 314
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 272
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 276
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 277
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 278
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 279
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 280
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 284
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .parameter "me"
    .parameter "shouldMirror"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 480
    iput-boolean p2, p0, Landroid/widget/FastScroller;->mShouldMirror:Z

    .line 481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 483
    .local v3, pointerCount:I
    iget v5, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v5, :cond_0

    .line 486
    if-le v3, v8, :cond_6

    .line 487
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 488
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 495
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 497
    .local v0, action:I
    if-eqz v0, :cond_1

    if-ne v0, v11, :cond_8

    .line 498
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, p2}, Landroid/widget/FastScroller;->isPointInside(FFZ)Z

    move-result v5

    if-nez v5, :cond_2

    if-le v3, v8, :cond_13

    .line 499
    :cond_2
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 500
    iget-object v5, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v5, :cond_3

    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_3

    .line 501
    invoke-direct {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 503
    :cond_3
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_4

    .line 504
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 505
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 511
    :cond_4
    if-nez v0, :cond_5

    .line 512
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 514
    :cond_5
    if-ne v0, v11, :cond_7

    move v5, v9

    .line 577
    .end local v0           #action:I
    :goto_0
    return v5

    :cond_6
    move v5, v9

    .line 491
    goto :goto_0

    .restart local v0       #action:I
    :cond_7
    move v5, v8

    .line 520
    goto :goto_0

    .line 523
    :cond_8
    const/4 v5, 0x6

    if-ne v0, v5, :cond_a

    .line 526
    if-ne v3, v7, :cond_9

    .line 527
    invoke-virtual {p0, v7}, Landroid/widget/FastScroller;->setState(I)V

    :cond_9
    move v5, v9

    .line 530
    goto :goto_0

    .line 531
    :cond_a
    if-ne v0, v8, :cond_d

    .line 533
    iget v5, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v5, v10, :cond_b

    iget-boolean v5, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    if-eqz v5, :cond_13

    .line 534
    :cond_b
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v5, :cond_c

    .line 538
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v9}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 539
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 541
    :cond_c
    invoke-virtual {p0, v7}, Landroid/widget/FastScroller;->setState(I)V

    .line 542
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 543
    .local v1, handler:Landroid/os/Handler;
    iget-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 544
    iget-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    iput-boolean v9, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    move v5, v8

    .line 546
    goto :goto_0

    .line 548
    .end local v1           #handler:Landroid/os/Handler;
    :cond_d
    if-ne v0, v7, :cond_13

    .line 549
    iget v5, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v5, v10, :cond_13

    .line 550
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 554
    .local v4, viewHeight:I
    if-le v3, v8, :cond_f

    .line 555
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v5, v6

    add-int/lit8 v2, v5, 0xa

    .line 556
    .local v2, newThumbY:I
    iput-boolean v8, p0, Landroid/widget/FastScroller;->mMultiPointerUsed:Z

    .line 561
    :goto_1
    if-gez v2, :cond_10

    .line 562
    const/4 v2, 0x0

    .line 566
    :cond_e
    :goto_2
    iget v5, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v7, :cond_11

    move v5, v8

    .line 567
    goto :goto_0

    .line 559
    .end local v2           #newThumbY:I
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v5, v6

    add-int/lit8 v2, v5, 0xa

    .restart local v2       #newThumbY:I
    goto :goto_1

    .line 563
    :cond_10
    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v5, v2

    if-le v5, v4, :cond_e

    .line 564
    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v2, v4, v5

    goto :goto_2

    .line 569
    :cond_11
    iput v2, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 571
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v5, :cond_12

    .line 572
    iget v5, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v6, v4, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-direct {p0, v5}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_12
    move v5, v8

    .line 574
    goto/16 :goto_0

    .end local v2           #newThumbY:I
    .end local v4           #viewHeight:I
    :cond_13
    move v5, v9

    .line 577
    goto/16 :goto_0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .parameter "overlay"
    .parameter "size"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iput-object p1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput p2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    .line 145
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 146
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 147
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 148
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 149
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    iget-object v0, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 7
    .parameter "state"

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 125
    return-void

    .line 103
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0

    .line 107
    :pswitch_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 108
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 112
    :cond_0
    :pswitch_3
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 115
    :pswitch_4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    .line 116
    .local v0, viewWidth:I
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mShouldMirror:Z

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v5, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v6, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter "thumb"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    iput-object p1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    iput p2, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 166
    iput p3, p0, Landroid/widget/FastScroller;->mThumbH:I

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 169
    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 198
    return-void
.end method
