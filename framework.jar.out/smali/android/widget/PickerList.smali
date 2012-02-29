.class Landroid/widget/PickerList;
.super Landroid/widget/AdapterView;
.source "PickerList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PickerList$5;,
        Landroid/widget/PickerList$PickerDynamics;,
        Landroid/widget/PickerList$ScrollDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INIT_POSITION:I = 0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final ITEM_VERTICAL_MARGIN:F = 2.0f

.field private static final ITEM_WIDTH:F = 0.85f

.field private static final LAYOUT_MODE_ABOVE:I = 0x1

.field private static final LAYOUT_MODE_BELOW:I = 0x0

.field private static final PICKER_RADIUS:F = -90.0f

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field private static final POSITION_TOLERANCE:F = 0.4f

.field private static final ROTATION_FACTOR:F = 55.0f

.field private static final SCALE_DOWN_FACTOR:F = 0.5f

.field private static final TOP_OFFSET:I = 0x2f

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final TOUCH_STATE_AUTO_SCROLL:I = 0x3

.field private static final TOUCH_STATE_CLICK:I = 0x1

.field private static final TOUCH_STATE_RESTING:I = 0x0

.field private static final TOUCH_STATE_SCROLL:I = 0x2

.field private static final VELOCITY_TOLERANCE:F = 1.0f

.field private static final VISIBLE_ITEM_COUNT:I = 0x3


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private final mCachedItemViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/graphics/Camera;

.field private mCurrentPosition:I

.field private mDynamics:Landroid/widget/Dynamics;

.field private mDynamicsRunnable:Ljava/lang/Runnable;

.field private mExitAutoscrollRunnable:Ljava/lang/Runnable;

.field private mFirstItemPosition:I

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mIndexNextFocus:I

.field private mInitialPosOffset:I

.field private mLastItemPosition:I

.field private mListTop:I

.field private mListTopOffset:I

.field private mListTopStart:I

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingLayoutRequest:Z

.field private mPickerListListener:Landroid/widget/PickerListListener;

.field private mRect:Landroid/graphics/Rect;

.field private final mScale:F

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iput v0, p0, Landroid/widget/PickerList;->mTouchState:I

    .line 152
    iput v2, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    .line 155
    iput v1, p0, Landroid/widget/PickerList;->mInitialPosOffset:I

    .line 158
    iput v1, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    .line 161
    iput-boolean v0, p0, Landroid/widget/PickerList;->mPendingLayoutRequest:Z

    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/widget/PickerList;->mScale:F

    .line 211
    invoke-virtual {p0, p0}, Landroid/widget/PickerList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/PickerList;->mPaint:Landroid/graphics/Paint;

    .line 213
    iget-object v0, p0, Landroid/widget/PickerList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v0, p0, Landroid/widget/PickerList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 215
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    .line 216
    iget-object v0, p0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 218
    iget-object v0, p0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    iget-object v0, p0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/PickerList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/PickerList;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->centerItem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/PickerList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getAdapterPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/PickerList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/PickerList;->notifyPositionChanged()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/PickerList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/PickerList;->finalizeAndExitAutoscroll()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/PickerList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->longClickChild(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/PickerList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->setState(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/widget/PickerList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/widget/PickerList;->mPendingLayoutRequest:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/PickerList;)Landroid/widget/Dynamics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mListTopStart:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/PickerList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/PickerList;->mListTopStart:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/PickerList;Landroid/view/View;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PickerList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mListTopOffset:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/PickerList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/PickerList;->mScale:F

    return v0
.end method

.method static synthetic access$800(Landroid/widget/PickerList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->scrollList(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/PickerList;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/PickerList;->getContainingChildIndex(II)I

    move-result v0

    return v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 13
    .parameter "child"
    .parameter "layoutMode"

    .prologue
    const/high16 v12, 0x4000

    const/4 v4, -0x2

    const-wide/high16 v10, 0x4008

    const/4 v5, 0x1

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1086
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 1087
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1089
    .restart local v3       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-ne p2, v5, :cond_1

    const/4 v4, 0x0

    move v2, v4

    .line 1090
    .local v2, index:I
    :goto_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1091
    invoke-virtual {p0, p1, v2, v3, v5}, Landroid/widget/PickerList;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1099
    invoke-virtual {p0}, Landroid/widget/PickerList;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f59999a

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 1100
    .local v1, childWidth:I
    invoke-virtual {p0}, Landroid/widget/PickerList;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-direct {p0}, Landroid/widget/PickerList;->getChildMargin()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    mul-double/2addr v6, v10

    sub-double/2addr v4, v6

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 1103
    .local v0, childHeight:I
    or-int v4, v12, v1

    or-int v5, v12, v0

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1105
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1106
    return-void

    .line 1089
    .end local v0           #childHeight:I
    .end local v1           #childWidth:I
    .end local v2           #index:I
    :cond_1
    const/4 v4, -0x1

    move v2, v4

    goto :goto_0
.end method

.method private centerItem(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1135
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1136
    invoke-direct {p0}, Landroid/widget/PickerList;->removeAllChildren()V

    .line 1137
    iget-object v0, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1138
    iget-object v0, p0, Landroid/widget/PickerList;->mExitAutoscrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1139
    iget-object v0, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    rem-int/2addr p1, v0

    .line 1140
    iput p1, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    .line 1141
    const/4 v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/PickerList;->mInitialPosOffset:I

    .line 1142
    invoke-virtual {p0}, Landroid/widget/PickerList;->requestLayout()V

    .line 1143
    const/4 v0, 0x1

    .line 1145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clickChild(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 895
    if-eq p1, v4, :cond_0

    .line 896
    invoke-virtual {p0, p1}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 897
    .local v3, itemView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getAdapterPosition(I)I

    move-result v0

    .line 898
    .local v0, adapterPosition:I
    if-eq v0, v4, :cond_0

    .line 899
    iget-object v4, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    .line 900
    .local v1, id:J
    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/PickerList;->performItemClick(Landroid/view/View;IJ)Z

    .line 903
    .end local v0           #adapterPosition:I
    .end local v1           #id:J
    .end local v3           #itemView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 4
    .parameter "canvas"
    .parameter "view"
    .parameter "top"
    .parameter "left"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 492
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    const/high16 v1, 0x42b4

    iget v2, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v3, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 493
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0, p8}, Landroid/graphics/Camera;->rotateX(F)V

    .line 494
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    const/high16 v1, -0x3d4c

    iget v2, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v3, v3, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 497
    iget-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1

    .line 498
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    .line 502
    :cond_1
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 503
    iget-object v0, p0, Landroid/widget/PickerList;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 506
    iget-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p5

    int-to-float v1, v1

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 507
    iget-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p7, p7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 508
    iget-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    add-int v1, p4, p5

    int-to-float v1, v1

    const/high16 v2, 0x423c

    iget v3, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 511
    iget-object v0, p0, Landroid/widget/PickerList;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/widget/PickerList;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 512
    return-void
.end method

.method private endTouch(Landroid/view/MotionEvent;F)V
    .locals 4
    .parameter "event"
    .parameter "velocity"

    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamicsRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Landroid/widget/PickerList$2;

    invoke-direct {v0, p0}, Landroid/widget/PickerList$2;-><init>(Landroid/widget/PickerList;)V

    iput-object v0, p0, Landroid/widget/PickerList;->mDynamicsRunnable:Ljava/lang/Runnable;

    .line 643
    :cond_1
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 647
    invoke-direct {p0, p2}, Landroid/widget/PickerList;->getScrollingDirection(F)Landroid/widget/PickerList$ScrollDirection;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setSnapPoint(Landroid/widget/PickerList$ScrollDirection;)V

    .line 650
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    iget v1, p0, Landroid/widget/PickerList;->mListTop:I

    int-to-float v1, v1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/Dynamics;->setState(FFJ)V

    .line 651
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setState(I)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setState(I)V

    goto :goto_0
.end method

.method private fillList(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 1014
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PickerList;->getChildBottom(Landroid/view/View;)I

    move-result v0

    .line 1015
    .local v0, bottomEdge:I
    invoke-direct {p0, v0, p1}, Landroid/widget/PickerList;->fillListDown(II)V

    .line 1017
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I

    move-result v1

    .line 1018
    .local v1, topEdge:I
    invoke-direct {p0, v1, p1}, Landroid/widget/PickerList;->fillListUp(II)V

    .line 1019
    return-void
.end method

.method private fillListDown(II)V
    .locals 5
    .parameter "bottomEdge"
    .parameter "offset"

    .prologue
    .line 1028
    :goto_0
    add-int v3, p1, p2

    invoke-virtual {p0}, Landroid/widget/PickerList;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1029
    iget v3, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    .line 1031
    iget-object v3, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 1032
    .local v2, totNbr:I
    iget v3, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    iget-object v4, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    rem-int v0, v3, v4

    .line 1034
    .local v0, index:I
    if-gez v0, :cond_0

    .line 1035
    add-int/2addr v0, v2

    .line 1037
    if-gez v0, :cond_0

    .line 1038
    mul-int/lit8 v0, v0, -0x1

    .line 1042
    :cond_0
    iget-object v3, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-direct {p0}, Landroid/widget/PickerList;->getCachedView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v0, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1043
    .local v1, newBottomchild:Landroid/view/View;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/widget/PickerList;->addAndMeasureChild(Landroid/view/View;I)V

    .line 1044
    invoke-direct {p0, v1}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr p1, v3

    .line 1045
    goto :goto_0

    .line 1046
    .end local v0           #index:I
    .end local v1           #newBottomchild:Landroid/view/View;
    .end local v2           #totNbr:I
    :cond_1
    return-void
.end method

.method private fillListUp(II)V
    .locals 7
    .parameter "topEdge"
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    .line 1055
    :goto_0
    add-int v4, p1, p2

    if-lez v4, :cond_1

    .line 1056
    iget v4, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    sub-int/2addr v4, v6

    iput v4, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    .line 1058
    iget-object v4, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    .line 1059
    .local v3, totNBr:I
    iget v4, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    rem-int v2, v4, v3

    .line 1060
    .local v2, pos:I
    if-gez v2, :cond_0

    .line 1061
    add-int/2addr v2, v3

    .line 1063
    if-gez v2, :cond_0

    .line 1064
    mul-int/lit8 v2, v2, -0x1

    .line 1068
    :cond_0
    iget-object v4, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-direct {p0}, Landroid/widget/PickerList;->getCachedView()Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v2, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1069
    .local v1, newTopCild:Landroid/view/View;
    invoke-direct {p0, v1, v6}, Landroid/widget/PickerList;->addAndMeasureChild(Landroid/view/View;I)V

    .line 1070
    invoke-direct {p0, v1}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 1071
    .local v0, childHeight:I
    sub-int/2addr p1, v0

    .line 1074
    iget v4, p0, Landroid/widget/PickerList;->mListTopOffset:I

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/widget/PickerList;->mListTopOffset:I

    goto :goto_0

    .line 1076
    .end local v0           #childHeight:I
    .end local v1           #newTopCild:Landroid/view/View;
    .end local v2           #pos:I
    .end local v3           #totNBr:I
    :cond_1
    return-void
.end method

.method private finalizeAndExitAutoscroll()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Landroid/widget/PickerList;->mExitAutoscrollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1237
    new-instance v0, Landroid/widget/PickerList$4;

    invoke-direct {v0, p0}, Landroid/widget/PickerList$4;-><init>(Landroid/widget/PickerList;)V

    iput-object v0, p0, Landroid/widget/PickerList;->mExitAutoscrollRunnable:Ljava/lang/Runnable;

    .line 1251
    :cond_0
    iget-object v0, p0, Landroid/widget/PickerList;->mExitAutoscrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->post(Ljava/lang/Runnable;)Z

    .line 1252
    return-void
.end method

.method private getAdapterPosition(I)I
    .locals 4
    .parameter "childIndex"

    .prologue
    .line 876
    const/4 v0, -0x1

    .line 877
    .local v0, adapterPosition:I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 878
    iget v2, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    if-gez v2, :cond_1

    .line 879
    iget v2, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    iget-object v3, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    rem-int v1, v2, v3

    .line 880
    .local v1, firstItemPosition:I
    iget-object v2, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int v0, v2, p1

    .line 884
    .end local v1           #firstItemPosition:I
    :goto_0
    iget-object v2, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    rem-int/2addr v0, v2

    .line 886
    :cond_0
    return v0

    .line 882
    :cond_1
    iget v2, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    add-int v0, v2, p1

    goto :goto_0
.end method

.method private getCachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    move-object v0, p0

    .line 1157
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildBottom(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/PickerList;->getChildMargin()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getChildHeight(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 1199
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/PickerList;->getChildMargin()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private getChildIndex(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 860
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 861
    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 865
    :goto_1
    return v1

    .line 860
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getChildMargin()I
    .locals 2

    .prologue
    .line 1166
    const/high16 v0, 0x4000

    iget v1, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 1177
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/PickerList;->getChildMargin()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getContainingChildIndex(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 840
    iget-object v1, p0, Landroid/widget/PickerList;->mRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 841
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PickerList;->mRect:Landroid/graphics/Rect;

    .line 843
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 844
    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PickerList;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 845
    iget-object v1, p0, Landroid/widget/PickerList;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 849
    :goto_1
    return v1

    .line 843
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getScrollingDirection(F)Landroid/widget/PickerList$ScrollDirection;
    .locals 7
    .parameter "velocity"

    .prologue
    .line 758
    const/4 v4, 0x0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    sget-object v4, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    move-object v3, v4

    .line 761
    .local v3, scrollDirection:Landroid/widget/PickerList$ScrollDirection;
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f80

    iget v6, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 762
    iget v4, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    iget v5, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    sub-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 763
    .local v1, middleChild:I
    invoke-virtual {p0, v1}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 764
    .local v0, childHeight:I
    iget v4, p0, Landroid/widget/PickerList;->mListTop:I

    rem-int v2, v4, v0

    .line 768
    .local v2, reminder:I
    iget v4, p0, Landroid/widget/PickerList;->mListTop:I

    if-ltz v4, :cond_3

    .line 769
    sub-int v4, v0, v2

    if-ge v2, v4, :cond_2

    .line 770
    sget-object v3, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    .line 782
    .end local v0           #childHeight:I
    .end local v1           #middleChild:I
    .end local v2           #reminder:I
    :cond_0
    :goto_1
    return-object v3

    .line 758
    .end local v3           #scrollDirection:Landroid/widget/PickerList$ScrollDirection;
    :cond_1
    sget-object v4, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    move-object v3, v4

    goto :goto_0

    .line 772
    .restart local v0       #childHeight:I
    .restart local v1       #middleChild:I
    .restart local v2       #reminder:I
    .restart local v3       #scrollDirection:Landroid/widget/PickerList$ScrollDirection;
    :cond_2
    sget-object v3, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    goto :goto_1

    .line 775
    :cond_3
    neg-int v4, v2

    add-int v5, v0, v2

    if-ge v4, v5, :cond_4

    .line 776
    sget-object v3, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    goto :goto_1

    .line 778
    :cond_4
    sget-object v3, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    goto :goto_1
.end method

.method private getScrollingDirection(I)Landroid/widget/PickerList$ScrollDirection;
    .locals 1
    .parameter "scrolledDistance"

    .prologue
    .line 747
    if-lez p1, :cond_0

    sget-object v0, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    goto :goto_0
.end method

.method private isPreparedForTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 297
    :goto_0
    return v2

    .line 293
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v5

    .line 294
    .local v0, isDownAction:Z
    :goto_1
    iget v2, p0, Landroid/widget/PickerList;->mTouchState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v2, v5, :cond_4

    :cond_1
    move v1, v5

    .line 297
    .local v1, isListTouched:Z
    :goto_2
    if-nez v0, :cond_2

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    :cond_2
    move v2, v5

    goto :goto_0

    .end local v0           #isDownAction:Z
    .end local v1           #isListTouched:Z
    :cond_3
    move v0, v4

    .line 293
    goto :goto_1

    .restart local v0       #isDownAction:Z
    :cond_4
    move v1, v4

    .line 294
    goto :goto_2

    .restart local v1       #isListTouched:Z
    :cond_5
    move v2, v4

    .line 297
    goto :goto_0
.end method

.method private longClickChild(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v1, -0x1

    .line 911
    if-eq p1, v1, :cond_0

    .line 912
    invoke-virtual {p0, p1}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 913
    .local v2, itemView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getAdapterPosition(I)I

    move-result v3

    .line 914
    .local v3, adapterPosition:I
    if-eq v3, v1, :cond_0

    .line 915
    iget-object v1, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 916
    .local v4, id:J
    invoke-virtual {p0}, Landroid/widget/PickerList;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 917
    .local v0, listener:Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    .line 918
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 922
    .end local v0           #listener:Landroid/widget/AdapterView$OnItemLongClickListener;
    .end local v2           #itemView:Landroid/view/View;
    .end local v3           #adapterPosition:I
    .end local v4           #id:J
    :cond_0
    return-void
.end method

.method private notifyPositionChanged()V
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/widget/PickerList;->mPickerListListener:Landroid/widget/PickerListListener;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Landroid/widget/PickerList;->mPickerListListener:Landroid/widget/PickerListListener;

    iget v1, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    invoke-interface {v0, v1}, Landroid/widget/PickerListListener;->onPositionChanged(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method private positionItems()V
    .locals 10

    .prologue
    .line 1112
    iget v8, p0, Landroid/widget/PickerList;->mListTop:I

    iget v9, p0, Landroid/widget/PickerList;->mListTopOffset:I

    add-int v6, v8, v9

    .line 1114
    .local v6, top:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1115
    invoke-virtual {p0, v3}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1117
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1118
    .local v7, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1119
    .local v2, height:I
    invoke-virtual {p0}, Landroid/widget/PickerList;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    div-int/lit8 v4, v8, 0x2

    .line 1120
    .local v4, left:I
    invoke-direct {p0}, Landroid/widget/PickerList;->getChildMargin()I

    move-result v5

    .line 1121
    .local v5, margin:I
    add-int v1, v6, v5

    .line 1123
    .local v1, childTop:I
    add-int v8, v4, v7

    add-int v9, v1, v2

    invoke-virtual {v0, v4, v1, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1124
    mul-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v2

    add-int/2addr v6, v8

    .line 1114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1126
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childTop:I
    .end local v2           #height:I
    .end local v4           #left:I
    .end local v5           #margin:I
    .end local v7           #width:I
    :cond_0
    return-void
.end method

.method private removeAllChildren()V
    .locals 3

    .prologue
    .line 941
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 942
    invoke-virtual {p0, v1}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 946
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 948
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PickerList;->removeAllViewsInLayout()V

    .line 949
    return-void
.end method

.method private removeChild(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 930
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 933
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 934
    invoke-virtual {p0, p1}, Landroid/widget/PickerList;->removeViewInLayout(Landroid/view/View;)V

    .line 935
    return-void
.end method

.method private removeNonVisibleViews(I)V
    .locals 7
    .parameter "offset"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 961
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v0

    .line 963
    .local v0, childCount:I
    if-le v0, v5, :cond_1

    .line 965
    invoke-virtual {p0, v6}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 966
    .local v1, firstChild:Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/PickerList;->getChildBottom(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p1

    if-gtz v3, :cond_1

    .line 968
    invoke-direct {p0, v1}, Landroid/widget/PickerList;->removeChild(Landroid/view/View;)V

    .line 969
    add-int/lit8 v0, v0, -0x1

    .line 970
    iget-object v3, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 971
    iget v3, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    .line 974
    iget v3, p0, Landroid/widget/PickerList;->mListTopOffset:I

    invoke-direct {p0, v1}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/PickerList;->mListTopOffset:I

    .line 978
    if-le v0, v5, :cond_0

    .line 979
    invoke-virtual {p0, v6}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 981
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 987
    .end local v1           #firstChild:Landroid/view/View;
    :cond_1
    if-le v0, v5, :cond_3

    .line 989
    sub-int v3, v0, v5

    invoke-virtual {p0, v3}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 990
    .local v2, lastChild:Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0}, Landroid/widget/PickerList;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 992
    invoke-direct {p0, v2}, Landroid/widget/PickerList;->removeChild(Landroid/view/View;)V

    .line 993
    add-int/lit8 v0, v0, -0x1

    .line 994
    iget-object v3, p0, Landroid/widget/PickerList;->mCachedItemViews:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 995
    iget v3, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    sub-int/2addr v3, v5

    iput v3, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    .line 999
    if-le v0, v5, :cond_2

    .line 1000
    sub-int v3, v0, v5

    invoke-virtual {p0, v3}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 1002
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1006
    .end local v2           #lastChild:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private scrollList(I)V
    .locals 1
    .parameter "scrolledDistance"

    .prologue
    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget v0, p0, Landroid/widget/PickerList;->mListTopStart:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/PickerList;->mListTop:I

    .line 666
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getScrollingDirection(I)Landroid/widget/PickerList$ScrollDirection;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setSnapPoint(Landroid/widget/PickerList$ScrollDirection;)V

    .line 667
    invoke-virtual {p0}, Landroid/widget/PickerList;->requestLayout()V

    .line 669
    :cond_0
    return-void
.end method

.method private setSnapPoint(Landroid/widget/PickerList$ScrollDirection;)V
    .locals 7
    .parameter "scrollDirection"

    .prologue
    .line 677
    iget v5, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    iget v6, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 678
    .local v3, middleChild:I
    invoke-virtual {p0, v3}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v0

    .line 679
    .local v0, childHeight:I
    iget v5, p0, Landroid/widget/PickerList;->mListTop:I

    rem-int v4, v5, v0

    .line 680
    .local v4, reminder:I
    const/4 v2, 0x0

    .line 681
    .local v2, listTopSnap:I
    const/4 v1, 0x0

    .line 707
    .local v1, diff:I
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    if-nez v5, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    sget-object v5, Landroid/widget/PickerList$5;->$SwitchMap$android$widget$PickerList$ScrollDirection:[I

    invoke-virtual {p1}, Landroid/widget/PickerList$ScrollDirection;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 725
    iget v5, p0, Landroid/widget/PickerList;->mListTop:I

    if-ltz v5, :cond_3

    .line 726
    sub-int v1, v0, v4

    .line 733
    :goto_1
    iget v5, p0, Landroid/widget/PickerList;->mListTop:I

    add-int v2, v5, v1

    .line 735
    iget-object v5, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/Dynamics;->setMaxPosition(F)V

    .line 736
    iget-object v5, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/Dynamics;->setMinPosition(F)V

    goto :goto_0

    .line 715
    :pswitch_0
    iget v5, p0, Landroid/widget/PickerList;->mListTop:I

    if-ltz v5, :cond_2

    .line 716
    neg-int v1, v4

    goto :goto_1

    .line 718
    :cond_2
    add-int v5, v0, v4

    neg-int v1, v5

    .line 720
    goto :goto_1

    .line 728
    :cond_3
    neg-int v1, v4

    goto :goto_1

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 520
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    if-eq p1, v0, :cond_0

    .line 523
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/PickerList;->mTouchState:I

    .line 536
    packed-switch p1, :pswitch_data_1

    .line 561
    :cond_0
    :goto_1
    return-void

    .line 525
    :pswitch_1
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v0, p0, Landroid/widget/PickerList;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 539
    :pswitch_3
    iget-boolean v0, p0, Landroid/widget/PickerList;->mPendingLayoutRequest:Z

    if-eqz v0, :cond_0

    .line 540
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->centerItem(I)Z

    .line 541
    invoke-direct {p0}, Landroid/widget/PickerList;->notifyPositionChanged()V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PickerList;->mPendingLayoutRequest:Z

    goto :goto_1

    .line 547
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/PickerList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 551
    :pswitch_5
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamicsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 555
    :pswitch_6
    invoke-direct {p0}, Landroid/widget/PickerList;->startLongPressCheck()V

    goto :goto_1

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private startLongPressCheck()V
    .locals 3

    .prologue
    .line 791
    iget-object v0, p0, Landroid/widget/PickerList;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Landroid/widget/PickerList$3;

    invoke-direct {v0, p0}, Landroid/widget/PickerList$3;-><init>(Landroid/widget/PickerList;)V

    iput-object v0, p0, Landroid/widget/PickerList;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 805
    :cond_0
    iget-object v0, p0, Landroid/widget/PickerList;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/PickerList;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 806
    return-void
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 817
    .local v1, xPos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 818
    .local v2, yPos:I
    const/high16 v3, 0x4120

    iget v4, p0, Landroid/widget/PickerList;->mScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 819
    .local v0, scrollThreshold:I
    iget v3, p0, Landroid/widget/PickerList;->mTouchStartX:I

    sub-int/2addr v3, v0

    if-lt v1, v3, :cond_0

    iget v3, p0, Landroid/widget/PickerList;->mTouchStartX:I

    add-int/2addr v3, v0

    if-gt v1, v3, :cond_0

    iget v3, p0, Landroid/widget/PickerList;->mTouchStartY:I

    sub-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    iget v3, p0, Landroid/widget/PickerList;->mTouchStartY:I

    add-int/2addr v3, v0

    if-le v2, v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/widget/PickerList;->mTouchStartY:I

    if-eq v2, v3, :cond_1

    .line 823
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Landroid/widget/PickerList;->setState(I)V

    .line 824
    iget v3, p0, Landroid/widget/PickerList;->mTouchStartY:I

    sub-int v3, v2, v3

    invoke-direct {p0, v3}, Landroid/widget/PickerList;->scrollList(I)V

    .line 825
    const/4 v3, 0x1

    .line 827
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/PickerList;->mTouchStartX:I

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/PickerList;->mTouchStartY:I

    .line 573
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/widget/PickerList;->mListTopOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/PickerList;->mListTopStart:I

    .line 576
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 577
    iget-object v0, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 579
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    if-nez v0, :cond_1

    .line 582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setState(I)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 584
    iget v0, p0, Landroid/widget/PickerList;->mListTopStart:I

    iput v0, p0, Landroid/widget/PickerList;->mListTop:I

    .line 585
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 21
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 434
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_0

    .line 437
    invoke-super/range {p0 .. p4}, Landroid/widget/AdapterView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    .line 465
    :goto_0
    return v2

    .line 441
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 442
    .local v5, top:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v17

    .line 443
    .local v17, bottom:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 444
    .local v6, left:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v20

    .line 447
    .local v20, right:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    .line 448
    .local v7, centerX:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v8, v2, 0x2

    .line 451
    .local v8, centerY:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PickerList;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v18, v2, v3

    .line 452
    .local v18, centerScreen:F
    add-int v2, v5, v8

    int-to-float v2, v2

    sub-float v2, v2, v18

    div-float v19, v2, v18

    .line 455
    .local v19, distFromCenter:F
    const-wide/high16 v2, 0x3ff0

    const-wide/high16 v9, 0x3fe0

    const-wide/high16 v11, 0x3ff0

    const-wide/high16 v13, 0x3fe0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide v15, v0

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v2, v9

    double-to-float v9, v2

    .line 456
    .local v9, scale:F
    const/high16 v2, 0x425c

    mul-float v2, v2, v19

    neg-float v10, v2

    .local v10, rotation:F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 458
    invoke-direct/range {v2 .. v10}, Landroid/widget/PickerList;->drawFace(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;IIIIFF)V

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    int-to-float v12, v6

    int-to-float v13, v5

    const/4 v2, 0x1

    sub-int v2, v20, v2

    int-to-float v14, v2

    const/4 v2, 0x1

    sub-int v2, v17, v2

    int-to-float v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PickerList;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 465
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, selectedView:Landroid/view/View;
    iget v1, p0, Landroid/widget/PickerList;->mTouchState:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 254
    :cond_1
    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 302
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->isPreparedForTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 315
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 314
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PickerList;->endTouch(Landroid/view/MotionEvent;F)V

    move v0, v2

    .line 315
    goto :goto_0

    .line 307
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->startTouch(Landroid/view/MotionEvent;)V

    .line 308
    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 311
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p3}, Landroid/widget/PickerList;->centerItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Landroid/widget/PickerList;->notifyPositionChanged()V

    .line 367
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 370
    const/16 v3, 0x14

    if-eq p2, v3, :cond_0

    const/16 v3, 0x13

    if-eq p2, v3, :cond_0

    const/16 v3, 0x15

    if-eq p2, v3, :cond_0

    const/16 v3, 0x16

    if-ne p2, v3, :cond_1

    :cond_0
    move v1, v4

    .line 374
    .local v1, isNavigationKey:Z
    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 376
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->getChildIndex(Landroid/view/View;)I

    move-result v0

    .line 377
    .local v0, index:I
    if-eq v0, v5, :cond_2

    .line 378
    invoke-direct {p0, v0}, Landroid/widget/PickerList;->getAdapterPosition(I)I

    move-result v2

    .line 379
    .local v2, position:I
    if-eq v2, v5, :cond_2

    iget v3, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    if-eq v2, v3, :cond_2

    .line 380
    invoke-direct {p0, v2}, Landroid/widget/PickerList;->centerItem(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    iput v0, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    .line 382
    invoke-direct {p0}, Landroid/widget/PickerList;->notifyPositionChanged()V

    move v3, v4

    .line 388
    .end local v0           #index:I
    .end local v2           #position:I
    :goto_1
    return v3

    .end local v1           #isNavigationKey:Z
    :cond_1
    move v1, v6

    .line 370
    goto :goto_0

    .restart local v1       #isNavigationKey:Z
    :cond_2
    move v3, v6

    .line 388
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 394
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 397
    iget-object v4, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    if-nez v4, :cond_0

    .line 428
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 402
    iget v4, p0, Landroid/widget/PickerList;->mInitialPosOffset:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    .line 403
    iget v4, p0, Landroid/widget/PickerList;->mInitialPosOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    .line 404
    iget v4, p0, Landroid/widget/PickerList;->mInitialPosOffset:I

    iput v4, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    .line 406
    invoke-direct {p0, v6, v6}, Landroid/widget/PickerList;->fillListDown(II)V

    .line 408
    iget v4, p0, Landroid/widget/PickerList;->mLastItemPosition:I

    iget v5, p0, Landroid/widget/PickerList;->mFirstItemPosition:I

    sub-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 409
    .local v2, middleChildIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/PickerList;->getChildHeight(Landroid/view/View;)I

    move-result v1

    .line 410
    .local v1, childHeight:I
    iget v4, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iput v4, p0, Landroid/widget/PickerList;->mListTopOffset:I

    .line 411
    iget v4, p0, Landroid/widget/PickerList;->mListTopOffset:I

    neg-int v4, v4

    iput v4, p0, Landroid/widget/PickerList;->mListTop:I

    .line 412
    iget v4, p0, Landroid/widget/PickerList;->mListTopOffset:I

    neg-int v4, v4

    iput v4, p0, Landroid/widget/PickerList;->mListTopStart:I

    .line 419
    .end local v1           #childHeight:I
    .end local v2           #middleChildIndex:I
    :goto_1
    invoke-direct {p0}, Landroid/widget/PickerList;->positionItems()V

    .line 421
    iget v4, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    invoke-virtual {p0}, Landroid/widget/PickerList;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 422
    iget v4, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    invoke-virtual {p0, v4}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 424
    iput v7, p0, Landroid/widget/PickerList;->mIndexNextFocus:I

    .line 427
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PickerList;->invalidate()V

    goto :goto_0

    .line 414
    :cond_2
    iget v4, p0, Landroid/widget/PickerList;->mListTop:I

    iget v5, p0, Landroid/widget/PickerList;->mListTopOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v6}, Landroid/widget/PickerList;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/PickerList;->getChildTop(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 415
    .local v3, offset:I
    invoke-direct {p0, v3}, Landroid/widget/PickerList;->removeNonVisibleViews(I)V

    .line 416
    invoke-direct {p0, v3}, Landroid/widget/PickerList;->fillList(I)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 321
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->isPreparedForTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    const/4 v3, 0x0

    .line 359
    :goto_0
    return v3

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 356
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/widget/PickerList;->endTouch(Landroid/view/MotionEvent;F)V

    :cond_1
    :goto_1
    move v3, v5

    .line 359
    goto :goto_0

    .line 326
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->startTouch(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 330
    :pswitch_1
    iget v3, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v3, v5, :cond_2

    .line 331
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 333
    :cond_2
    iget v3, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v3, v4, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Landroid/widget/PickerList;->mTouchStartY:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/widget/PickerList;->scrollList(I)V

    goto :goto_1

    .line 339
    :pswitch_2
    const/4 v2, 0x0

    .line 340
    .local v2, velocity:F
    const/4 v0, 0x0

    .line 341
    .local v0, clickChild:Z
    iget v3, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v3, v5, :cond_4

    .line 342
    const/4 v0, 0x1

    .line 348
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v2}, Landroid/widget/PickerList;->endTouch(Landroid/view/MotionEvent;F)V

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Landroid/widget/PickerList;->getContainingChildIndex(II)I

    move-result v1

    .line 351
    .local v1, index:I
    invoke-direct {p0, v1}, Landroid/widget/PickerList;->clickChild(I)V

    goto :goto_1

    .line 343
    .end local v1           #index:I
    :cond_4
    iget v3, p0, Landroid/widget/PickerList;->mTouchState:I

    if-ne v3, v4, :cond_3

    .line 344
    iget-object v3, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 345
    iget-object v3, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 346
    iget-object v3, p0, Landroid/widget/PickerList;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    goto :goto_2

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowVisibilityChanged(I)V

    .line 277
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/PickerList;->mTouchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->setState(I)V

    .line 279
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->centerItem(I)Z

    .line 281
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 224
    iput-object p1, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/PickerList;->centerItem(I)Z

    .line 226
    iget-object v0, p0, Landroid/widget/PickerList;->mAdapter:Landroid/widget/Adapter;

    new-instance v1, Landroid/widget/PickerList$1;

    invoke-direct {v1, p0}, Landroid/widget/PickerList$1;-><init>(Landroid/widget/PickerList;)V

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 234
    return-void
.end method

.method public setDynamics(FFF)V
    .locals 5
    .parameter "frictionFactor"
    .parameter "snapToFactor"
    .parameter "velocityFactor"

    .prologue
    .line 266
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/widget/PickerList$PickerDynamics;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/PickerList$PickerDynamics;-><init>(Landroid/widget/PickerList;FFF)V

    iput-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    .line 268
    iget-object v0, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    iget-object v1, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    invoke-virtual {v1}, Landroid/widget/Dynamics;->getPosition()F

    move-result v1

    iget-object v2, p0, Landroid/widget/PickerList;->mDynamics:Landroid/widget/Dynamics;

    invoke-virtual {v2}, Landroid/widget/Dynamics;->getVelocity()F

    move-result v2

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Dynamics;->setState(FFJ)V

    .line 271
    :cond_0
    return-void
.end method

.method public setPickerListListener(Landroid/widget/PickerListListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1218
    iput-object p1, p0, Landroid/widget/PickerList;->mPickerListListener:Landroid/widget/PickerListListener;

    .line 1219
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 243
    iget v0, p0, Landroid/widget/PickerList;->mCurrentPosition:I

    if-eq p1, v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Landroid/widget/PickerList;->centerItem(I)Z

    .line 246
    :cond_0
    return-void
.end method
