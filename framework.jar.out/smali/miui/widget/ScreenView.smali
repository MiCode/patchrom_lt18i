.class public Lmiui/widget/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/ScreenView$1;,
        Lmiui/widget/ScreenView$SavedState;,
        Lmiui/widget/ScreenView$ScaleDetectorListener;,
        Lmiui/widget/ScreenView$SliderTouchListener;,
        Lmiui/widget/ScreenView$SlideBar;,
        Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;
    }
.end annotation


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEFAULT_OVER_SHOOT_TENSION:F = 1.3f

.field private static final DEFAULT_SCREEN_SNAP_DURATION:I = 0xc8

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

#the value of this static final field might be set in the static constructor
.field protected static final INDICATOR_MEASURE_SPEC:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field protected static final INVALID_SCREEN:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x4

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final NANOTIME_DIV:F = 1.0E9f

.field public static final SCREEN_ALIGN_CENTER:I = 0x2

.field public static final SCREEN_ALIGN_CUSTOMIZED:I = 0x0

.field public static final SCREEN_ALIGN_LEFT:I = 0x1

.field public static final SCREEN_ALIGN_RIGHT:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC:I = 0x0

.field public static final SCREEN_TRANSITION_TYPE_CLASSIC_NO_OVER_SHOOT:I = 0x1

.field public static final SCREEN_TRANSITION_TYPE_CROSSFADE:I = 0x2

.field public static final SCREEN_TRANSITION_TYPE_CUBE:I = 0x4

.field public static final SCREEN_TRANSITION_TYPE_CUSTOM:I = 0x9

.field public static final SCREEN_TRANSITION_TYPE_FALLDOWN:I = 0x3

.field public static final SCREEN_TRANSITION_TYPE_LEFTPAGE:I = 0x5

.field public static final SCREEN_TRANSITION_TYPE_RIGHTPAGE:I = 0x6

.field public static final SCREEN_TRANSITION_TYPE_ROTATE:I = 0x8

.field public static final SCREEN_TRANSITION_TYPE_STACK:I = 0x7

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ScreenView"

.field protected static final TOUCH_STATE_PINCHING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final TOUCH_STATE_SLIDING:I = 0x3


# instance fields
.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Landroid/widget/ImageView;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field private mCamera:Landroid/graphics/Camera;

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Landroid/widget/LinearLayout;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lmiui/widget/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lmiui/widget/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 123
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 199
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 59
    const v0, 0x6020325

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 60
    const v0, 0x6020326

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 61
    const v0, 0x6020327

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 62
    const v0, 0x6020328

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 64
    const v0, 0x6020329

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 82
    iput v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 89
    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 92
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 108
    iput v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 113
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 119
    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 126
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 128
    const/16 v0, 0xc8

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 145
    iput v3, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 148
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 1281
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 200
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 59
    const v0, 0x6020325

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 60
    const v0, 0x6020326

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 61
    const v0, 0x6020327

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 62
    const v0, 0x6020328

    iput v0, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 64
    const v0, 0x6020329

    iput v0, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 82
    iput v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 89
    iput v2, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 92
    const v0, 0x3eaaaaab

    iput v0, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 108
    iput v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 113
    iput-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 119
    iput v2, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 126
    const/high16 v0, 0x3f00

    iput v0, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 128
    const/16 v0, 0xc8

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 145
    iput v3, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 148
    const v0, 0x3fa66666

    iput v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 1281
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    .line 222
    invoke-direct {p0}, Lmiui/widget/ScreenView;->initScreenView()V

    .line 223
    return-void
.end method

.method static synthetic access$100(Lmiui/widget/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$400(Lmiui/widget/ScreenView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    return-void
.end method

.method static synthetic access$500(Lmiui/widget/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 1204
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1205
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1206
    iget v1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1208
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 230
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setClipToPadding(Z)V

    .line 232
    new-instance v1, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lmiui/widget/ScreenView;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    .line 233
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 236
    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 237
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    .line 240
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lmiui/widget/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lmiui/widget/ScreenView$ScaleDetectorListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 241
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 853
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 854
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 856
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 859
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 860
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 862
    :cond_2
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 7
    .parameter "pointerId"

    .prologue
    const/4 v6, 0x1

    .line 964
    iget-object v1, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 965
    .local v1, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Lmiui/widget/ScreenView;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 966
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    float-to-int v2, v4

    .line 968
    .local v2, velocityX:I
    const/16 v4, 0x258

    if-le v2, v4, :cond_1

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v4, :cond_1

    .line 971
    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4, v2, v6}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 972
    :cond_1
    const/16 v4, -0x258

    if-ge v2, v4, :cond_2

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_2

    .line 975
    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4, v2, v6}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 977
    :cond_2
    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v4, :cond_0

    .line 978
    iget v4, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    iget-boolean v5, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v0, v4, v5

    .line 979
    .local v0, snapUnit:I
    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    shr-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int v3, v4, v5

    .line 980
    .local v3, whichScreen:I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v0           #snapUnit:I
    .end local v3           #whichScreen:I
    :cond_3
    move v5, v6

    .line 978
    goto :goto_1
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 556
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-gtz p1, :cond_1

    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    iget-object v0, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_2

    iget v1, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 566
    :cond_0
    return-void

    .line 557
    :cond_1
    iget v1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 561
    :cond_2
    iget v1, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 21
    .parameter "scrollX"

    .prologue
    .line 475
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v18

    if-lez v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->isLayoutRequested()Z

    move-result v18

    if-nez v18, :cond_1

    .line 476
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v8

    .line 478
    .local v8, indexOffset:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    move/from16 v18, v0

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 479
    add-int v18, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 480
    .local v9, indicator:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 482
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getWidth()I

    move-result v16

    .line 483
    .local v16, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/ScreenView;->getHeight()I

    move-result v15

    .line 484
    .local v15, screenHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 485
    .local v13, indicatorWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 487
    .local v10, indicatorHeight:I
    const/4 v11, 0x0

    .line 488
    .local v11, indicatorLeft:I
    const/4 v12, 0x0

    .line 490
    .local v12, indicatorTop:I
    iget v5, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 492
    .local v5, gravity:I
    const/16 v18, -0x1

    move v0, v5

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 493
    and-int/lit8 v6, v5, 0x7

    .line 494
    .local v6, horizontalGravity:I
    and-int/lit8 v17, v5, 0x70

    .line 496
    .local v17, verticalGravity:I
    packed-switch v6, :pswitch_data_0

    .line 508
    :pswitch_0
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 511
    :goto_1
    sparse-switch v17, :sswitch_data_0

    .line 523
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 527
    .end local v6           #horizontalGravity:I
    .end local v17           #verticalGravity:I
    :cond_0
    :goto_2
    add-int v18, p1, v11

    add-int v19, p1, v11

    add-int v19, v19, v13

    add-int v20, v12, v10

    move-object v0, v9

    move/from16 v1, v18

    move v2, v12

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 478
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 498
    .restart local v6       #horizontalGravity:I
    .restart local v17       #verticalGravity:I
    :pswitch_1
    iget v11, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 499
    goto :goto_1

    .line 501
    :pswitch_2
    sub-int v18, v16, v13

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 503
    goto :goto_1

    .line 505
    :pswitch_3
    sub-int v18, v16, v13

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    .line 506
    goto :goto_1

    .line 513
    :sswitch_0
    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 514
    goto :goto_2

    .line 516
    :sswitch_1
    sub-int v18, v15, v10

    div-int/lit8 v18, v18, 0x2

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 518
    goto :goto_2

    .line 520
    :sswitch_2
    sub-int v18, v15, v10

    move-object v0, v14

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v12, v18, v19

    .line 521
    goto :goto_2

    .line 534
    .end local v5           #gravity:I
    .end local v6           #horizontalGravity:I
    .end local v7           #i:I
    .end local v8           #indexOffset:I
    .end local v9           #indicator:Landroid/view/View;
    .end local v10           #indicatorHeight:I
    .end local v11           #indicatorLeft:I
    .end local v12           #indicatorTop:I
    .end local v13           #indicatorWidth:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v15           #screenHeight:I
    .end local v16           #screenWidth:I
    .end local v17           #verticalGravity:I
    :cond_1
    return-void

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 453
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 467
    :goto_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    iget v1, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    .line 468
    return-void

    .line 455
    :pswitch_0
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 458
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 461
    :pswitch_2
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 464
    :pswitch_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v4, 0x0

    .line 1212
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1213
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1214
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    if-ge v2, v0, :cond_0

    .line 1215
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1219
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1220
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_1

    add-int v2, p2, v1

    if-ge v2, v0, :cond_1

    .line 1221
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1224
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .parameter "scrollX"

    .prologue
    .line 538
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 539
    .local v0, screenCount:I
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 540
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v5}, Lmiui/widget/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 541
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 545
    .local v3, slidePointWidth:I
    iget v5, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 546
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v5, 0x0

    move v4, v5

    .line 551
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lmiui/widget/ScreenView$SlideBar;->setPosition(II)V

    .line 553
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 546
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int/2addr v5, v6

    move v4, v5

    goto :goto_0
.end method


# virtual methods
.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .parameter "indicator"
    .parameter "params"

    .prologue
    .line 1118
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1119
    const/4 v0, -0x1

    invoke-super {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1120
    return-void
.end method

.method public addIndicatorAt(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 2
    .parameter "indicator"
    .parameter "params"
    .parameter "index"

    .prologue
    .line 1123
    const/4 v0, -0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 1124
    if-ltz p3, :cond_0

    .line 1125
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 1128
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1129
    invoke-super {p0, p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1077
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1078
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 1079
    move p2, v0

    .line 1084
    :goto_0
    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    iget v3, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 1086
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1087
    iget-object v1, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lmiui/widget/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lmiui/widget/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    return-void

    .line 1082
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const v5, 0x4e6e6b28

    .line 593
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 595
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 596
    iget-object v3, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollY:I

    .line 597
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    .line 613
    :cond_0
    :goto_0
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 614
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateSlidePointPosition(I)V

    .line 615
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lmiui/widget/ScreenView;->updateArrowIndicatorResource(I)V

    .line 616
    return-void

    .line 598
    :cond_1
    iget v3, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    if-eq v3, v7, :cond_2

    .line 599
    const/4 v3, 0x0

    iget v4, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v5

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 600
    iput v7, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 601
    :cond_2
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 602
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 603
    .local v2, now:F
    iget v3, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lmiui/widget/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 604
    .local v1, e:F
    iget v3, p0, Lmiui/widget/ScreenView;->mTouchX:F

    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 605
    .local v0, dx:F
    iget v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lmiui/widget/ScreenView;->mScrollX:I

    .line 606
    iput v2, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 608
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 609
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 742
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 743
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-lez v0, :cond_1

    .line 744
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 753
    :goto_0
    return v0

    .line 747
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 748
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 749
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    move v0, v2

    .line 750
    goto :goto_0

    .line 753
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 987
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 988
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 12
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1285
    iget v8, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    if-eqz v8, :cond_0

    iget v8, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 1288
    :cond_0
    const/4 v8, 0x0

    .line 1369
    :goto_0
    return v8

    .line 1290
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v1, v8

    .line 1291
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v0, v8

    .line 1292
    .local v0, childH:F
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v4, v8, v9

    .line 1293
    .local v4, halfScreenW:F
    const/high16 v8, 0x4000

    div-float v3, v1, v8

    .line 1294
    .local v3, halfChildW:F
    const/high16 v8, 0x4000

    div-float v2, v0, v8

    .line 1295
    .local v2, halfChildH:F
    iget v8, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v3

    add-float v9, v4, v3

    div-float v5, v8, v9

    .line 1298
    .local v5, interpolation:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 1299
    .local v6, m:Landroid/graphics/Matrix;
    iget v8, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v8, :pswitch_data_0

    .line 1369
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 1301
    :pswitch_0
    const/4 v8, 0x0

    goto :goto_0

    .line 1303
    :pswitch_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1305
    :pswitch_2
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_2

    .line 1306
    const/4 v8, 0x0

    goto :goto_0

    .line 1308
    :cond_2
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3f333333

    mul-float/2addr v8, v9

    const v9, 0x3e99999a

    add-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1309
    sget v8, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1312
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    neg-float v9, v5

    const/high16 v10, 0x4234

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9, v3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1313
    sget v8, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 1316
    :pswitch_4
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_3

    .line 1317
    const/4 v8, 0x0

    goto :goto_0

    .line 1319
    :cond_3
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1320
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1321
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1322
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, -0x3d4c

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1323
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/4 v9, 0x0

    const/4 v10, 0x0

    neg-float v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1324
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1325
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1326
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1327
    const/high16 v8, 0x3f80

    const/high16 v9, 0x4000

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1328
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1331
    :pswitch_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1332
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1333
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    neg-float v9, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x4040

    div-float/2addr v9, v10

    neg-float v10, v3

    mul-float/2addr v10, v5

    invoke-virtual {v8, v9, v2, v10}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1334
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x41f0

    neg-float v10, v5

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1335
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1336
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1337
    mul-float v8, v1, v5

    invoke-virtual {v6, v8, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1338
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1341
    :pswitch_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1343
    :pswitch_7
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_4

    .line 1344
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1346
    :cond_4
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v5

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1347
    const v8, 0x3f19999a

    const v9, 0x3ecccccd

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v5

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    .line 1348
    .local v7, scale:F
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1349
    const/high16 v8, 0x3f80

    sub-float/2addr v8, v7

    mul-float/2addr v8, v1

    const/high16 v9, 0x4040

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1350
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1353
    .end local v7           #scale:F
    :pswitch_8
    const/4 v8, 0x0

    cmpl-float v8, v5, v8

    if-nez v8, :cond_5

    .line 1354
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1356
    :cond_5
    const/high16 v8, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 1357
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->save()V

    .line 1358
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    mul-float v9, v1, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 1359
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    const/high16 v9, 0x4234

    mul-float/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1360
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1361
    iget-object v8, p0, Lmiui/widget/ScreenView;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8}, Landroid/graphics/Camera;->restore()V

    .line 1362
    neg-float v8, v3

    neg-float v9, v2

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1363
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1364
    sget v8, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 1367
    :pswitch_9
    invoke-virtual {p0, p1, p2, v5}, Lmiui/widget/ScreenView;->getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z

    move-result v8

    goto/16 :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected getChildStaticTransformationByScreen(Landroid/view/View;Landroid/view/animation/Transformation;F)Z
    .locals 1
    .parameter "child"
    .parameter "t"
    .parameter "interpolation"

    .prologue
    .line 1373
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .prologue
    .line 1035
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1036
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iput v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1038
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1066
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1067
    :cond_0
    const/4 v0, 0x0

    .line 1069
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenCount()I
    .locals 2

    .prologue
    .line 1026
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getChildCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    return v0
.end method

.method protected getTouchState()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 619
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 620
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->computeScroll()V

    .line 621
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 844
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 845
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 848
    :cond_1
    iget-boolean v2, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_4

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eq v2, v6, :cond_4

    :cond_2
    move v2, v5

    :goto_1
    return v2

    .line 799
    :pswitch_0
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 800
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    .line 801
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 802
    .local v0, dx:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 803
    .local v1, dy:F
    iget v2, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 805
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 812
    .end local v0           #dx:F
    .end local v1           #dy:F
    :pswitch_1
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->setAction(I)V

    .line 813
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 814
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 816
    iput-boolean v4, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    .line 817
    iput-boolean v4, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lmiui/widget/ScreenView;->mLastMotionY:F

    .line 823
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 824
    iput-boolean v5, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 832
    :cond_3
    iget-object v2, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 833
    invoke-virtual {p0, p1, v5}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 840
    :pswitch_2
    invoke-virtual {p0, p1, v4}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    move v2, v4

    .line 848
    goto :goto_1

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 700
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiui/widget/ScreenView;->setFrame(IIII)Z

    .line 702
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    add-int/2addr p2, v4

    .line 703
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    sub-int/2addr p4, v4

    .line 705
    iget v4, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Lmiui/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 708
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v2

    .line 709
    .local v2, count:I
    const/4 v1, 0x0

    .line 710
    .local v1, childLeft:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 711
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 712
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 713
    iget v4, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v5, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v7, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 718
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 710
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 722
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 723
    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 725
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 625
    iput p1, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    .line 626
    iput p2, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    .line 627
    const/4 v8, 0x0

    .line 628
    .local v8, maxHeight:I
    const/4 v9, 0x0

    .line 630
    .local v9, maxWidth:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v3

    .line 633
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v10, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    .line 634
    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 638
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 640
    .local v2, childWidthMeasureSpec:I
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 645
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 647
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 633
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v6, 0x0

    .line 652
    .local v6, maxChildHeight:I
    const/4 v7, 0x0

    .line 653
    .local v7, maxChildWidth:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 654
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 656
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 658
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 660
    .restart local v2       #childWidthMeasureSpec:I
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lmiui/widget/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 665
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 666
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 667
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 653
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 669
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 670
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 673
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 674
    iget v10, p0, Lmiui/widget/ScreenView;->mPaddingTop:I

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 676
    invoke-static {v9, p1}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v10

    invoke-static {v8, p2}, Lmiui/widget/ScreenView;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lmiui/widget/ScreenView;->setMeasuredDimension(II)V

    .line 680
    if-lez v3, :cond_2

    .line 681
    iput v7, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    .line 682
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lmiui/widget/ScreenView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    .line 683
    invoke-direct {p0}, Lmiui/widget/ScreenView;->updateScreenOffset()V

    .line 684
    iget v10, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setOverScrollRatio(F)V

    .line 685
    iget v10, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    .line 686
    const/4 v10, 0x1

    iget v11, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    .line 690
    :cond_2
    iget-boolean v10, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_3

    .line 691
    const/4 v10, 0x0

    iput-boolean v10, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    .line 692
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 693
    iget v10, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 694
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lmiui/widget/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 696
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1230
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1232
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1234
    :cond_0
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1407
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1410
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1459
    move-object v0, p1

    check-cast v0, Lmiui/widget/ScreenView$SavedState;

    move-object v1, v0

    .line 1460
    .local v1, savedState:Lmiui/widget/ScreenView$SavedState;
    invoke-virtual {v1}, Lmiui/widget/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1461
    iget v2, v1, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1462
    iget v2, v1, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1464
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1227
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1452
    new-instance v0, Lmiui/widget/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/widget/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1453
    .local v0, state:Lmiui/widget/ScreenView$SavedState;
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lmiui/widget/ScreenView$SavedState;->currentScreen:I

    .line 1454
    return-object v0
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 2
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 929
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 930
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v0, v0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 931
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 932
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 933
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 938
    :goto_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 939
    const/4 v0, 0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 940
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 950
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 951
    .local v1, x:F
    iget v2, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v2, v1

    .line 952
    .local v0, deltaX:F
    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 954
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 955
    iget v2, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 960
    :goto_0
    iget-object v2, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 961
    return-void

    .line 957
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 1
    .parameter "ev"
    .parameter "pointerId"

    .prologue
    .line 943
    invoke-direct {p0, p2}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 944
    iget-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 946
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 947
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 866
    iget-boolean v5, p0, Lmiui/widget/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v5, :cond_0

    move v5, v7

    .line 925
    :goto_0
    return v5

    .line 868
    :cond_0
    iget-boolean v5, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    if-eqz v5, :cond_1

    .line 869
    invoke-direct {p0, p1}, Lmiui/widget/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 872
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 924
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v7, p0, Lmiui/widget/ScreenView;->mTouchIntercepted:Z

    move v5, v7

    .line 925
    goto :goto_0

    .line 877
    :pswitch_1
    iget v5, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v5, :cond_3

    .line 878
    invoke-virtual {p0, p1, v7}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 881
    :cond_3
    iget v5, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_2

    .line 883
    iget v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 884
    .local v3, pointerIndex:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 885
    invoke-virtual {p0, p1, v7}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 886
    iget v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 888
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 889
    .local v4, x:F
    iget v5, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    sub-float v0, v5, v4

    .line 890
    .local v0, deltaX:F
    iput v4, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 892
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_5

    .line 893
    iget v5, p0, Lmiui/widget/ScreenView;->mTouchX:F

    add-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0, v5, v8}, Lmiui/widget/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 895
    :cond_5
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 901
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v5, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v5, v7, :cond_6

    .line 902
    iget v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v5}, Lmiui/widget/ScreenView;->snapByVelocity(I)V

    .line 904
    :cond_6
    invoke-virtual {p0, p1, v8}, Lmiui/widget/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 907
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x8

    .line 909
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 910
    .local v2, pointerId:I
    iget v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    if-ne v2, v5, :cond_2

    .line 914
    if-nez v3, :cond_7

    move v1, v7

    .line 915
    .local v1, newPointerIndex:I
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iput v5, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 916
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 917
    iget-object v5, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 918
    iget-object v5, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .end local v1           #newPointerIndex:I
    :cond_7
    move v1, v8

    .line 914
    goto :goto_2

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1159
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->removeScreensInLayout(II)V

    .line 1160
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 1161
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1162
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1114
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1115
    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "indicator"

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1134
    .local v0, index:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1135
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "The view passed through the parameter must be indicator."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1138
    :cond_0
    iget v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mIndicatorCount:I

    .line 1139
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1140
    return-void
.end method

.method public removeScreen(I)V
    .locals 2
    .parameter "screenIndex"

    .prologue
    .line 1143
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1144
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The view specified by the index must be a screen."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne p1, v0, :cond_1

    .line 1148
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreen(I)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1152
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1155
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1156
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1165
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1168
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1169
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->removeViewsInLayout(II)V

    .line 1171
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 730
    .local v0, screen:I
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 731
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 732
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->snapToScreen(I)V

    .line 733
    const/4 v1, 0x1

    .line 737
    :goto_0
    return v1

    .line 735
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 737
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 584
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 585
    int-to-float v0, p1

    iput v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 586
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    .line 587
    iget v0, p0, Lmiui/widget/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 588
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    invoke-direct {p0, v0}, Lmiui/widget/ScreenView;->updateIndicatorPositions(I)V

    .line 589
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 575
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 576
    iget v0, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 578
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lmiui/widget/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->measure(II)V

    .line 579
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmiui/widget/ScreenView;->scrollTo(II)V

    .line 580
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 1186
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 1187
    return-void
.end method

.method public setArrowIndicatorMarginRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 249
    if-eqz p1, :cond_2

    .line 253
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 254
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x13

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 258
    .local v0, leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 259
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 262
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 266
    .local v1, rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    .line 267
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    iget v3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 275
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 276
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 284
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 272
    .restart local v0       #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .restart local v1       #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0

    .line 278
    .end local v0           #leftArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #rightArrowLayout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 281
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowLeft:Landroid/widget/ImageView;

    .line 282
    iput-object v3, p0, Lmiui/widget/ScreenView;->mArrowRight:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method public setArrowIndicatorResource(IIII)V
    .locals 0
    .parameter "leftOn"
    .parameter "leftOff"
    .parameter "rightOn"
    .parameter "rightOff"

    .prologue
    .line 291
    iput p1, p0, Lmiui/widget/ScreenView;->mArrowLeftOnResId:I

    .line 292
    iput p2, p0, Lmiui/widget/ScreenView;->mArrowLeftOffResId:I

    .line 293
    iput p3, p0, Lmiui/widget/ScreenView;->mArrowRightOnResId:I

    .line 294
    iput p4, p0, Lmiui/widget/ScreenView;->mArrowRightOffResId:I

    .line 295
    return-void
.end method

.method public setConfirmHorizontalScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 157
    iput p1, p0, Lmiui/widget/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 158
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setCurrentScreenInner(I)V

    .line 1052
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1054
    :cond_0
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->scrollToScreen(I)V

    .line 1055
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1057
    :cond_1
    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1060
    iget v0, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lmiui/widget/ScreenView;->updateSeekPoints(II)V

    .line 1061
    iput p1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    .line 1062
    const/4 v0, -0x1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1063
    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 416
    invoke-virtual {p0, p1}, Lmiui/widget/ScreenView;->setSlideBarVisibility(I)V

    .line 417
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1196
    iput-object p1, p0, Lmiui/widget/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1197
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    .line 1198
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1199
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1201
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 3
    .parameter "ratio"

    .prologue
    .line 569
    iput p1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    .line 570
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollLeftBound:I

    .line 571
    iget v0, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lmiui/widget/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mScrollRightBound:I

    .line 572
    return-void
.end method

.method public setOvershootTension(F)V
    .locals 1
    .parameter "tension"

    .prologue
    .line 150
    iput p1, p0, Lmiui/widget/ScreenView;->mOvershootTension:F

    .line 151
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    #setter for: Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->mTension:F
    invoke-static {v0, p1}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->access$002(Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;F)F

    .line 154
    :cond_0
    return-void
.end method

.method public setScreenAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 443
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 444
    return-void
.end method

.method public setScreenOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 447
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenOffset:I

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenAlignment:I

    .line 449
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->requestLayout()V

    .line 450
    return-void
.end method

.method public setScreenPadding(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "padding"

    .prologue
    const/4 v2, 0x0

    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The padding parameter can not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingTop:I

    .line 438
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lmiui/widget/ScreenView;->mScreenPaddingBottom:I

    .line 439
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0, v2, v1, v2}, Lmiui/widget/ScreenView;->setPadding(IIII)V

    .line 440
    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 161
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    .line 162
    return-void
.end method

.method public setScreenTransitionType(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/16 v4, 0xb4

    const/4 v0, 0x1

    const/16 v3, 0xf0

    const v2, 0x3fa66666

    const/4 v1, 0x0

    .line 1237
    iput p1, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    .line 1238
    if-nez p1, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setStaticTransformationsEnabled(Z)V

    .line 1240
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenTransitionType:I

    packed-switch v0, :pswitch_data_0

    .line 1275
    :goto_1
    :pswitch_0
    return-void

    .line 1238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1242
    :pswitch_1
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1243
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1247
    :pswitch_2
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1248
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1251
    :pswitch_3
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1252
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1255
    :pswitch_4
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1256
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1259
    :pswitch_5
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1260
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1265
    :pswitch_6
    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1266
    invoke-virtual {p0, v4}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1269
    :pswitch_7
    invoke-virtual {p0, v2}, Lmiui/widget/ScreenView;->setOvershootTension(F)V

    .line 1270
    invoke-virtual {p0, v3}, Lmiui/widget/ScreenView;->setScreenSnapDuration(I)V

    goto :goto_1

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0
    .parameter "wholeScreen"

    .prologue
    .line 165
    iput-boolean p1, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    .line 166
    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 310
    if-eqz p1, :cond_2

    .line 311
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 312
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    .line 313
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 314
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    new-instance v1, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 315
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimationCacheEnabled(Z)V

    .line 316
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 323
    iput-object v2, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setSeekBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 420
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScreenSeekBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeekPointResource(I)V
    .locals 0
    .parameter "seekPointResId"

    .prologue
    .line 302
    iput p1, p0, Lmiui/widget/ScreenView;->mSeekPointResId:I

    .line 303
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter "params"

    .prologue
    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_2

    .line 399
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_1

    .line 400
    new-instance v0, Lmiui/widget/ScreenView$SlideBar;

    iget-object v1, p0, Lmiui/widget/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/widget/ScreenView$SlideBar;-><init>(Lmiui/widget/ScreenView;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    .line 401
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    new-instance v1, Lmiui/widget/ScreenView$SliderTouchListener;

    invoke-direct {v1, p0, v2}, Lmiui/widget/ScreenView$SliderTouchListener;-><init>(Lmiui/widget/ScreenView;Lmiui/widget/ScreenView$1;)V

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 403
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0, p1}, Lmiui/widget/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {p0, v0}, Lmiui/widget/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 410
    iput-object v2, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    goto :goto_0
.end method

.method public setSlideBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 427
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lmiui/widget/ScreenView;->mSlideBar:Lmiui/widget/ScreenView$SlideBar;

    invoke-virtual {v0, p1}, Lmiui/widget/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 761
    iput p2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    .line 763
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget v2, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 764
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 765
    const/4 v1, -0x1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 766
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 768
    iget-object v1, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 770
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/widget/ScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 794
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 763
    goto :goto_0

    .line 774
    :cond_2
    if-eqz p1, :cond_3

    .line 775
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    .line 779
    :cond_3
    iget-boolean v1, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 780
    iput-boolean v3, p0, Lmiui/widget/ScreenView;->mAllowLongPress:Z

    .line 784
    iget v1, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lmiui/widget/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 785
    .local v0, currentScreen:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 788
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_4
    iget v1, p0, Lmiui/widget/ScreenView;->mTouchState:I

    if-ne v1, v4, :cond_0

    .line 789
    iget v1, p0, Lmiui/widget/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/ScreenView;->mLastMotionX:F

    .line 790
    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lmiui/widget/ScreenView;->mTouchX:F

    .line 791
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lmiui/widget/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 991
    invoke-virtual {p0, p1, v0, v0}, Lmiui/widget/ScreenView;->snapToScreen(IIZ)V

    .line 992
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 8
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v2, 0x0

    .line 995
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 996
    iget-boolean v0, p0, Lmiui/widget/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 997
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    .line 1000
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v4, p0, Lmiui/widget/ScreenView;->mCurrentScreen:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1001
    .local v7, screenDelta:I
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1002
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1005
    :cond_1
    if-eqz p3, :cond_2

    .line 1006
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->setDistance(I)V

    .line 1011
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1012
    iget v0, p0, Lmiui/widget/ScreenView;->mNextScreen:I

    iget v1, p0, Lmiui/widget/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1013
    .local v6, newX:I
    iget v0, p0, Lmiui/widget/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1014
    .local v3, delta:I
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v7

    iget v1, p0, Lmiui/widget/ScreenView;->mVisibleRange:I

    div-int v5, v0, v1

    .line 1015
    .local v5, duration:I
    if-lez p2, :cond_3

    .line 1016
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1021
    :goto_1
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lmiui/widget/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1022
    invoke-virtual {p0}, Lmiui/widget/ScreenView;->invalidate()V

    .line 1023
    return-void

    .line 1008
    .end local v3           #delta:I
    .end local v5           #duration:I
    .end local v6           #newX:I
    :cond_2
    iget-object v0, p0, Lmiui/widget/ScreenView;->mScrollInterpolator:Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lmiui/widget/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 1019
    .restart local v3       #delta:I
    .restart local v5       #duration:I
    .restart local v6       #newX:I
    :cond_3
    iget v0, p0, Lmiui/widget/ScreenView;->mScreenSnapDuration:I

    add-int/2addr v5, v0

    goto :goto_1
.end method
