.class public Lcom/sonyericsson/android/camera/photostack/PhotoStackView;
.super Landroid/widget/RelativeLayout;
.source "PhotoStackView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;
.implements Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;,
        Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;
    }
.end annotation


# static fields
.field private static final INITIAL_VALUE_OF_OPEN_STATE:Z = false

.field private static final INVALIDATE_ID:I = -0x1

.field private static final PREFS_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera.photostack_sharedprefs"

.field private static final PREFS_OPEN_STATE_KEY:Ljava/lang/String; = "photostack_sharedprefs_open_state"

.field private static final TAG:Ljava/lang/String; = "PhotoStackView"

.field private static final VIBRATION_DURATION:I = 0x23


# instance fields
.field private mAnimationManager:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

.field private mCurrentDragX:I

.field private mDummyViewFinder:Landroid/view/View;

.field private mGestureDetector:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

.field private mIsDragLeft:Z

.field private mOverlapPositionArrayX:Landroid/content/res/TypedArray;

.field private mOverlapPositionArrayY:Landroid/content/res/TypedArray;

.field private mPhotoStackBase:Landroid/widget/RelativeLayout;

.field private mPhotoStackHeight:I

.field private mPhotoStackListener:Landroid/view/View$OnTouchListener;

.field private mPhotoStackMarginBottom:I

.field private mPhotoStackMarginRight:I

.field private mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

.field private mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

.field private mPhotoStackWitdh:I

.field private mPositionCurrent:Landroid/graphics/Point;

.field private mPositionLineUpLeft:Landroid/graphics/Point;

.field private mPositionLineUpRight:Landroid/graphics/Point;

.field private mPositionOverlapRight:Landroid/graphics/Point;

.field private mPositionPhotoStackBase:Landroid/graphics/Point;

.field private mPressedThumbnailId:I

.field private mRecentThumbnailCount:I

.field private mRotationDegree:[I

.field private mSensorOrientation:I

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field private mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

.field private mThumbnailFrameOutSpace:I

.field private mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

.field private mThumbnailSize:I

.field private mThumbnailSpace:I

.field private mThumbnailViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/camera/photostack/ThumbnailView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewFinderListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    .line 70
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    .line 72
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    .line 76
    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSensorOrientation:I

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackListener:Landroid/view/View$OnTouchListener;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ViewFinderListener;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    .line 81
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    .line 83
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    .line 84
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    .line 85
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionPhotoStackBase:Landroid/graphics/Point;

    .line 86
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    .line 87
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionCurrent:Landroid/graphics/Point;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    .line 100
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mRotationDegree:[I

    .line 101
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayX:Landroid/content/res/TypedArray;

    .line 102
    iput-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayY:Landroid/content/res/TypedArray;

    .line 104
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->IDLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 106
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mIsDragLeft:Z

    .line 116
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->readSharedPref()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;)Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mGestureDetector:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->changeThumbnailToMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private changeThumbnailToMenu(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "motion"

    .prologue
    const/4 v5, 0x0

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackWitdh:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailFrameOutSpace:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sub-int v3, v6, v7

    .line 824
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackHeight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginBottom:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailFrameOutSpace:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sub-int v4, v6, v7

    .line 830
    .local v4, y:I
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContainThumbnailView(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v2

    .line 831
    .local v2, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v2, :cond_0

    .line 832
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->indexOf(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I

    move-result v0

    .line 833
    .local v0, index:I
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getDisplayIndex(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)I

    move-result v1

    .line 834
    .local v1, menuPosition:I
    iget-object v6, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getThumbnailIndex()I

    move-result v6

    if-ne v1, v6, :cond_1

    .line 844
    .end local v0           #index:I
    .end local v1           #menuPosition:I
    :cond_0
    :goto_0
    return v5

    .line 837
    .restart local v0       #index:I
    .restart local v1       #menuPosition:I
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 838
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setPressed()V

    .line 839
    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    .line 840
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v5, v2, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;I)V

    .line 841
    iget-object v5, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->invalidate()V

    .line 842
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private clearPressed()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 811
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    if-eq v1, v2, :cond_0

    .line 812
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v0

    .line 813
    .local v0, thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->clearPressed()V

    .line 815
    iput v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    .line 818
    .end local v0           #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_0
    return-void
.end method

.method private existThumbnailImage(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Z
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 876
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x1

    .line 880
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContainThumbnailView(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, result:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 568
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v2

    .line 569
    .local v2, thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    move-object v1, v2

    .line 574
    .end local v2           #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_0
    return-object v1

    .line 567
    .restart local v2       #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getDisplayIndex(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)I
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->indexOf(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I

    move-result v0

    .line 382
    .local v0, index:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v1, v2, :cond_1

    .line 383
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 389
    :cond_0
    :goto_0
    return v0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 3
    .parameter "dst"
    .parameter "org"

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, result:I
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int v0, v1, v2

    .line 697
    return v0
.end method

.method private getNearPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .parameter "orgin"
    .parameter "goal"
    .parameter "p"

    .prologue
    .line 681
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 682
    .local v0, goalLength:I
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 684
    .local v1, orgLength:I
    if-le v0, v1, :cond_0

    .line 685
    move-object v2, p1

    .line 690
    .local v2, result:Landroid/graphics/Point;
    :goto_0
    return-object v2

    .line 687
    .end local v2           #result:Landroid/graphics/Point;
    :cond_0
    move-object v2, p2

    .restart local v2       #result:Landroid/graphics/Point;
    goto :goto_0
.end method

.method private getPositions()V
    .locals 10

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090025

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    .local v4, overlapRight:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090026

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 190
    .local v3, overlapBottom:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 192
    .local v2, lineUpLeft:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 194
    .local v1, lineUpBottom:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 197
    .local v5, widthRatio:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackHeight:I

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginBottom:I

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSize:I

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSpace:I

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f010002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mRecentThumbnailCount:I

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailFrameOutSpace:I

    .line 209
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackWitdh:I

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 212
    .local v6, wm:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 213
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    div-int/2addr v7, v5

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailFrameOutSpace:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginRight:I

    .line 216
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionPhotoStackBase:Landroid/graphics/Point;

    iput v4, v7, Landroid/graphics/Point;->x:I

    .line 217
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionPhotoStackBase:Landroid/graphics/Point;

    iput v3, v7, Landroid/graphics/Point;->y:I

    .line 219
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginRight:I

    add-int/2addr v8, v2

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 220
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 221
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginRight:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSize:I

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 222
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 224
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v8, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMarginRight:I

    add-int/2addr v8, v4

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 225
    iget-object v7, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iput v3, v7, Landroid/graphics/Point;->y:I

    .line 226
    return-void
.end method

.method private getThumbnail(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .locals 2
    .parameter "index"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

    invoke-interface {v1, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;->getThumbnailAt(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 349
    :cond_0
    return-object v0
.end method

.method private getThumbnailCount()I
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, count:I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;->getVisibleThumbnailCount()I

    move-result v0

    .line 358
    :cond_0
    return v0
.end method

.method private getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .locals 2
    .parameter "index"

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 336
    .restart local v0       #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_0
    return-object v0
.end method

.method private getThumbnailViewCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private indexOf(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I
    .locals 5
    .parameter "thumbnail"

    .prologue
    const/4 v2, -0x1

    .line 317
    if-nez p1, :cond_1

    move v0, v2

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 321
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v1

    .line 322
    .local v1, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 323
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 320
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_3
    move v0, v2

    .line 328
    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mRotationDegree:[I

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayX:Landroid/content/res/TypedArray;

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayY:Landroid/content/res/TypedArray;

    .line 134
    const v3, 0x7f0d0060

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    .line 135
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    const v3, 0x7f0d0066

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    .line 137
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setListener(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu$PhotoStackMenuListener;)V

    .line 144
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setVisibility(I)V

    .line 146
    const v3, 0x7f0d0046

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    .line 147
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mViewFinderListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getPositions()V

    .line 152
    new-instance v2, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackView;Lcom/sonyericsson/android/camera/photostack/PhotoStackView$1;)V

    .line 153
    .local v2, task:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;
    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$ReadSharedPreferenceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method private isBetween(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "orgin"
    .parameter "goal"
    .parameter "p"

    .prologue
    .line 662
    const/4 v2, 0x0

    .line 664
    .local v2, result:Z
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    .line 665
    .local v0, goalLength:I
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getLength(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v1

    .line 667
    .local v1, posLength:I
    sub-int v3, v0, v1

    mul-int/2addr v3, v1

    if-nez v3, :cond_1

    .line 668
    const/4 v2, 0x1

    .line 675
    :cond_0
    :goto_0
    return v2

    .line 669
    :cond_1
    mul-int v3, v0, v1

    if-lez v3, :cond_0

    .line 670
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 671
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 2
    .parameter "thumbview"

    .prologue
    .line 579
    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v0

    .line 581
    .local v0, thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;->onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 585
    .end local v0           #thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    :cond_0
    return-void
.end method

.method private readSharedPref()V
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, isOpen:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "photostack_sharedprefs_open_state"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 178
    :cond_0
    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->openTray()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->closeTray()V

    goto :goto_0
.end method

.method private setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v1, p1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 853
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v1, :cond_2

    .line 854
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onChangedPhotoStackState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 856
    :cond_2
    const/4 v0, 0x0

    .line 857
    .local v0, isOpen:Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v1, v2, :cond_3

    .line 858
    const/4 v0, 0x1

    .line 860
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 861
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "photostack_sharedprefs_open_state"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public cancelStoringAnimation()V
    .locals 3

    .prologue
    .line 892
    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 893
    .local v1, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->cancelStoringAnimation()V

    goto :goto_0

    .line 897
    .end local v1           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_1
    return-void
.end method

.method public cancelStoringAnimationAt(I)V
    .locals 4
    .parameter "requestId"

    .prologue
    .line 906
    iget-object v3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 907
    .local v2, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v2, :cond_0

    .line 908
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v1

    .line 909
    .local v1, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;->getRequestId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 911
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->cancelStoringAnimation()V

    .line 917
    .end local v1           #thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .end local v2           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_1
    return-void
.end method

.method public closeTray()V
    .locals 2

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 517
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mAnimationManager:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->cancelAnimation(Z)V

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->move(Landroid/graphics/Point;)V

    .line 520
    return-void
.end method

.method public completePreparationForDialogShowing()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->completePreparationForDialogShowing()V

    .line 873
    return-void
.end method

.method public getState()Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    return-object v0
.end method

.method public hideMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 418
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->hidePhotoStackDialog()V

    .line 421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;I)V

    .line 422
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setShareIntent(Landroid/content/Intent;)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setShareResolveInfo(Ljava/util/List;)V

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setVisibility(I)V

    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearFocus()V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onClosePhotoStackMenu()V

    .line 433
    :cond_0
    return-void
.end method

.method public move(Landroid/graphics/Point;)V
    .locals 14
    .parameter "position"

    .prologue
    .line 602
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    invoke-direct {p0, v10, v11, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->isBetween(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 603
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    invoke-direct {p0, v10, v11, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getNearPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 606
    :cond_0
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 607
    .local v6, thumbCount:I
    const/4 v1, 0x0

    .line 608
    .local v1, j:I
    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 609
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    .line 610
    .local v7, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 608
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 613
    :cond_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 614
    .local v3, p:Landroid/graphics/Point;
    iget v10, p1, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    mul-int/2addr v10, v1

    add-int/lit8 v11, v6, -0x1

    div-int/2addr v10, v11

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionPhotoStackBase:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    add-int/2addr v10, v11

    iput v10, v3, Landroid/graphics/Point;->x:I

    .line 616
    iget v10, p1, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v10, v11

    mul-int/2addr v10, v1

    add-int/lit8 v11, v6, -0x1

    div-int/2addr v10, v11

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionPhotoStackBase:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    add-int/2addr v10, v11

    iput v10, v3, Landroid/graphics/Point;->y:I

    .line 618
    const/4 v4, 0x0

    .line 619
    .local v4, percent:F
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 620
    const/high16 v10, 0x3f80

    iget v11, p1, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    iget-object v12, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget-object v13, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float v4, v10, v11

    .line 625
    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 626
    .local v2, offset:Landroid/graphics/Point;
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayX:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v8, v10

    .line 627
    .local v8, x:I
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mOverlapPositionArrayY:Landroid/content/res/TypedArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v9, v10

    .line 628
    .local v9, y:I
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mRotationDegree:[I

    aget v10, v10, v1

    int-to-float v10, v10

    mul-float/2addr v10, v4

    float-to-int v5, v10

    .line 629
    .local v5, rotationDegree:I
    iget v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSensorOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 630
    add-int/lit8 v5, v5, -0x5a

    .line 631
    iput v9, v2, Landroid/graphics/Point;->x:I

    .line 632
    neg-int v10, v8

    iput v10, v2, Landroid/graphics/Point;->y:I

    .line 637
    :goto_3
    invoke-virtual {p0, v7, v3, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->moveThumbnailView(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 639
    invoke-virtual {v7, v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setRotation(I)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 623
    .end local v2           #offset:Landroid/graphics/Point;
    .end local v5           #rotationDegree:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 634
    .restart local v2       #offset:Landroid/graphics/Point;
    .restart local v5       #rotationDegree:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_3
    iput v8, v2, Landroid/graphics/Point;->x:I

    .line 635
    iput v9, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 642
    .end local v2           #offset:Landroid/graphics/Point;
    .end local v3           #p:Landroid/graphics/Point;
    .end local v4           #percent:F
    .end local v5           #rotationDegree:I
    .end local v7           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_4
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionCurrent:Landroid/graphics/Point;

    .line 643
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->invalidate()V

    .line 644
    return-void
.end method

.method public moveThumbnailView(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "view"
    .parameter "margin"
    .parameter "offset"

    .prologue
    .line 650
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 651
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 653
    .local v0, baseSize:I
    iget v2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 654
    iget v2, p2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 655
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 656
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 657
    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setOffset(II)V

    .line 659
    return-void
.end method

.method public onAnimation(Landroid/graphics/Point;)V
    .locals 0
    .parameter "positon"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->move(Landroid/graphics/Point;)V

    .line 553
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v0, v1, :cond_0

    .line 559
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)I
    .locals 13
    .parameter "event"

    .prologue
    .line 467
    const/4 v6, 0x0

    .line 468
    .local v6, touchInfo:I
    const/4 v2, 0x1

    .line 470
    .local v2, isTouch:Z
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v11, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v11, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-eq v10, v11, :cond_0

    .line 473
    const/4 v2, 0x0

    .line 476
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 477
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v5

    .line 478
    .local v5, thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v5, v10, v11}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->existThumbnailImage(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 480
    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setPressed()V

    .line 482
    iput v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPressedThumbnailId:I

    .line 483
    const/4 v6, 0x3

    :goto_1
    move v7, v6

    .line 511
    .end local v5           #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .end local v6           #touchInfo:I
    .local v7, touchInfo:I
    :goto_2
    return v7

    .line 486
    .end local v7           #touchInfo:I
    .restart local v5       #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .restart local v6       #touchInfo:I
    :cond_1
    const/4 v6, 0x2

    goto :goto_1

    .line 476
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v5           #thumbview:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_3
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v11, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v10, v11, :cond_5

    .line 493
    iget v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackWitdh:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    sub-int v8, v10, v11

    .line 494
    .local v8, x:I
    iget v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackHeight:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    sub-int v9, v10, v11

    .line 495
    .local v9, y:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 496
    .local v3, position:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    .line 497
    .local v0, goal:Landroid/graphics/Point;
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v4

    .line 498
    .local v4, thumbnailCount:I
    if-nez v4, :cond_6

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    .line 506
    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    invoke-direct {p0, v10, v0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->isBetween(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 507
    const/4 v6, 0x3

    .end local v0           #goal:Landroid/graphics/Point;
    .end local v3           #position:Landroid/graphics/Point;
    .end local v4           #thumbnailCount:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_5
    move v7, v6

    .line 511
    .end local v6           #touchInfo:I
    .restart local v7       #touchInfo:I
    goto :goto_2

    .line 500
    .end local v7           #touchInfo:I
    .restart local v0       #goal:Landroid/graphics/Point;
    .restart local v3       #position:Landroid/graphics/Point;
    .restart local v4       #thumbnailCount:I
    .restart local v6       #touchInfo:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_6
    iget v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mRecentThumbnailCount:I

    if-ge v4, v10, :cond_4

    .line 501
    new-instance v0, Landroid/graphics/Point;

    .end local v0           #goal:Landroid/graphics/Point;
    iget-object v10, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSize:I

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    add-int/lit8 v11, v4, -0x1

    iget v12, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSpace:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0       #goal:Landroid/graphics/Point;
    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 123
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector$PhotoStackGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mGestureDetector:Lcom/sonyericsson/android/camera/photostack/PhotoStackGestureDetector;

    .line 124
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$PhotoStackAnimationListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mAnimationManager:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->init()V

    .line 126
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 127
    return-void
.end method

.method public onFlingTray(Landroid/view/MotionEvent;ZF)V
    .locals 4
    .parameter "event"
    .parameter "isOpening"
    .parameter "initialVelocity"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 536
    if-eqz p2, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    .line 538
    .local v0, endPoint:Landroid/graphics/Point;
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 544
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mAnimationManager:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionCurrent:Landroid/graphics/Point;

    neg-float v3, p3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->startAnimation(Landroid/graphics/Point;Landroid/graphics/Point;F)V

    .line 547
    return-void

    .line 540
    .end local v0           #endPoint:Landroid/graphics/Point;
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    .line 541
    .restart local v0       #endPoint:Landroid/graphics/Point;
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    goto :goto_0
.end method

.method public onHidePhotoStackDialog()V
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onHidePhotoStackDialog()V

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->requestFocus()Z

    .line 748
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 772
    sparse-switch p1, :sswitch_data_0

    .line 789
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 776
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    goto :goto_0

    .line 784
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 772
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 794
    sparse-switch p1, :sswitch_data_0

    .line 807
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 796
    :sswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    goto :goto_0

    .line 802
    :sswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 794
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMove(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v2, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    if-ne v1, v2, :cond_1

    .line 448
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 449
    new-instance v0, Landroid/graphics/Point;

    .end local v0           #p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 455
    .restart local v0       #p:Landroid/graphics/Point;
    :goto_0
    iget v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mCurrentDragX:I

    if-ge p1, v1, :cond_2

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mIsDragLeft:Z

    .line 460
    :goto_1
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mCurrentDragX:I

    .line 461
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->move(Landroid/graphics/Point;)V

    .line 462
    return-void

    .line 451
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 452
    new-instance v0, Landroid/graphics/Point;

    .end local v0           #p:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionOverlapRight:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0       #p:Landroid/graphics/Point;
    goto :goto_0

    .line 458
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mIsDragLeft:Z

    goto :goto_1
.end method

.method public onPerformDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;->onThumbnailDelete(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 711
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 712
    return-void
.end method

.method public onPerformShare(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;->onThumbnailShare(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 733
    return-void
.end method

.method public onPerformView(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->hideMenu()V

    .line 718
    return-void
.end method

.method public onRelease(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 439
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mIsDragLeft:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->onFlingTray(Landroid/view/MotionEvent;ZF)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mCurrentDragX:I

    .line 441
    return-void
.end method

.method public onSelectShareStart(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 3
    .parameter "thumbnail"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->getData()Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;->onThumbnailShareStart(Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 725
    :cond_0
    return-void
.end method

.method public onSelectThumbnail(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContainThumbnailView(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v0

    .line 372
    .local v0, thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->onThumbnailSelect(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 374
    const/4 v1, 0x1

    .line 377
    .end local v0           #thumb:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onShowMenu(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContainThumbnailView(II)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v1

    .line 397
    .local v1, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->existThumbnailImage(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 398
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onOpenPhotoStackMenu()V

    .line 401
    :cond_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getDisplayIndex(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)I

    move-result v0

    .line 402
    .local v0, index:I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v4, v1, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;I)V

    .line 403
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->requestFocus()Z

    .line 405
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackBase:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mDummyViewFinder:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 407
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 409
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x23

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 410
    const/4 v3, 0x1

    .line 413
    .end local v0           #index:I
    .end local v1           #thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :cond_1
    return v3
.end method

.method public onShowPhotoStackDialog()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;->onShowPhotoStackDialog()V

    .line 740
    :cond_0
    return-void
.end method

.method public openTray()V
    .locals 2

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->clearPressed()V

    .line 525
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->setState(Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mAnimationManager:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->cancelAnimation(Z)V

    .line 527
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionLineUpLeft:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->move(Landroid/graphics/Point;)V

    .line 528
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSharedPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 869
    :cond_0
    return-void
.end method

.method public setPhotoStackStateListener(Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;)V
    .locals 0
    .parameter "stateListener"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mStateListener:Lcom/sonyericsson/android/camera/photostack/PhotoStack$PhotoStackStateListener;

    .line 242
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 701
    iput p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mSensorOrientation:I

    .line 702
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackMenu:Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackMenu;->setSensorOrientation(I)V

    .line 703
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateLayout()V

    .line 704
    return-void
.end method

.method public setTarget(Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPhotoStackTarget:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$PhotoStackTarget;

    .line 231
    return-void
.end method

.method public setThumbnailSelectListener(Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mThumbnailSelectListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackView$OnThumbnailSelectListener;

    .line 236
    return-void
.end method

.method public updateLayout()V
    .locals 0

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->updateThumbnails()V

    .line 364
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->requestLayout()V

    .line 365
    return-void
.end method

.method public updateThumbnail(ILcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "position"
    .parameter "thumbnail"

    .prologue
    .line 272
    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailViewCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v0

    .line 275
    .local v0, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateThumbnail()V

    .line 282
    .end local v0           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_0
    return-void
.end method

.method public updateThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->indexOf(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)I

    move-result v0

    .line 252
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v1

    .line 255
    .local v1, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateThumbnail()V

    .line 262
    .end local v1           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_0
    return-void
.end method

.method public updateThumbnails()V
    .locals 5

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailCount()I

    move-result v2

    .line 292
    .local v2, thumbnailCount:I
    const/4 v0, 0x0

    .local v0, at:I
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailViewCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 294
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnail(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;

    move-result-object v1

    .line 295
    .local v1, thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->getThumbnailView(I)Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    move-result-object v3

    .line 296
    .local v3, view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    if-nez v3, :cond_0

    .line 292
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setThumbnail(Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;)V

    .line 304
    :cond_1
    if-ge v0, v2, :cond_2

    .line 305
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->setVisibility(I)V

    goto :goto_1

    .line 310
    .end local v1           #thumbnail:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$Thumbnail;
    .end local v3           #view:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->mPositionCurrent:Landroid/graphics/Point;

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStackView;->move(Landroid/graphics/Point;)V

    .line 311
    return-void
.end method
