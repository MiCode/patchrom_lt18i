.class public Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
.super Ljava/lang/Object;
.source "Panorama3dStateMachine.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$1;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ScrollingOnOutput3dState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ManualScrollingState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ZoomingState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;
    }
.end annotation


# static fields
.field private static final GUIDE_MESSAGE_ID:I = 0x7f0c00a0

.field private static final GUIDE_MESSAGE_ID_NO_HDMI:I = 0x7f0c00c8

.field private static final TAG:Ljava/lang/String; = "Panorama3dStateMachine"


# instance fields
.field private final mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

.field private mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

.field private final mDragDetector:Landroid/view/GestureDetector;

.field private final mGestureDetector:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

.field private final mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

.field private final mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

.field private final mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Z)V
    .locals 3
    .parameter "layer"
    .parameter "isHdmiBinded"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 101
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setActionListener(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;)V

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    const v2, 0x7f0c00a0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 113
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;-><init>(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureDetectTarget;Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetector$ReviewGestureListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mGestureDetector:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    .line 114
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mDragDetector:Landroid/view/GestureDetector;

    .line 115
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    const v2, 0x7f0c00c8

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mAutoScrollView:Lcom/sonyericsson/android/camera3d/viewer/view/ScrollableImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mGestureDetector:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewGestureDetectorWithPinchZoom;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mDragDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->shutdown()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    .line 406
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->startup()V

    .line 410
    :cond_1
    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Z)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    .locals 4
    .parameter "layer"
    .parameter "isHdmiBinded"

    .prologue
    .line 118
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;Z)V

    .line 119
    .local v1, state:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$1;)V

    .line 120
    .local v0, data:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;
    new-instance v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    iput-object v2, v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    .line 121
    return-object v1
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->getZoomRatio()F

    move-result v0

    return v0
.end method

.method public isPhotoReview()Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoReview()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 197
    return-void
.end method

.method public onCloseDialog()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onCloseDialog()V

    .line 169
    return-void
.end method

.method public onDelete(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->performDelete()V

    .line 264
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onEndZoomMode()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onEndZoomMode()V

    .line 193
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->resetFading()V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 248
    return-void
.end method

.method public onMove(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onMove(II)V

    .line 221
    return-void
.end method

.method public onNext()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->performNext()V

    .line 225
    return-void
.end method

.method public onPlay(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->performScroll()V

    .line 268
    return-void
.end method

.method public onPrevious()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->performPrevious()V

    .line 229
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onMove(II)V

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onShare(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->performShare()V

    .line 272
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 256
    return-void
.end method

.method public onSingleTapUp()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onSingleTapUp()Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onSingleTapUp()Z

    move-result v0

    return v0
.end method

.method public onStartZoomMode()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onStartZoomMode()V

    .line 189
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->resetFading()V

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZZZ)V
    .locals 2
    .parameter "direction"
    .parameter "avalableLeft"
    .parameter "avalableRight"
    .parameter "scrollable"
    .parameter "broken"

    .prologue
    .line 159
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$1;)V

    .line 160
    .local v0, data:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;
    iput-boolean p2, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableLeft:Z

    .line 161
    iput-boolean p3, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mAvalableRight:Z

    .line 162
    iput-boolean p4, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsScrollable:Z

    .line 163
    iput-boolean p5, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    .line 164
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v1, p1, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 165
    return-void
.end method

.method public onUpdateContent(ZZZZ)V
    .locals 6
    .parameter "avalableLeftImage"
    .parameter "avalableRightImage"
    .parameter "scrollable"
    .parameter "broken"

    .prologue
    .line 145
    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZZZ)V

    .line 151
    return-void
.end method

.method public onZoom(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onZoom(F)V

    .line 217
    return-void
.end method

.method public onZoom(FII)V
    .locals 1
    .parameter "ratio"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->onZoom(FII)V

    .line 213
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->shutdown()V

    .line 138
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->startup()V

    .line 131
    return-void
.end method
