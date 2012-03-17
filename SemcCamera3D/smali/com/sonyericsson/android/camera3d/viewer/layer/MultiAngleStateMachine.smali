.class public Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
.super Ljava/lang/Object;
.source "MultiAngleStateMachine.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$1;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;,
        Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;
    }
.end annotation


# static fields
.field private static final GUIDE_MESSAGE_ID:I = 0x7f0c009f

.field private static final LOADING_MESSAGE_ID:I = 0x7f0c00c2

.field private static final TAG:Ljava/lang/String; = "MultiAngleStateMachine"


# instance fields
.field private mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

.field private final mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 64
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mImageView:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setActionListener(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView$ReviewIconActionListener;)V

    .line 67
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    return-object v0
.end method

.method public static create(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    .locals 6
    .parameter "layer"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V

    .line 76
    .local v1, state:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    iput-object v0, v1, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    .line 77
    return-object v1
.end method


# virtual methods
.method public changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->shutdown()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->startup()V

    .line 234
    :cond_1
    return-void
.end method

.method public onCloseDialog()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onCloseDialog()V

    .line 100
    return-void
.end method

.method public onDelete(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->performDelete()V

    .line 158
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 128
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->performPrevious()V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 135
    :goto_1
    return v0

    .line 130
    :cond_1
    cmpg-float v0, p3, v2

    if-gez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->performNext()V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->resetFading()V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 139
    return-void
.end method

.method public onPlay(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 0
    .parameter "sender"

    .prologue
    .line 154
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public onShare(Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;)V
    .locals 1
    .parameter "sender"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->performShare()V

    .line 162
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 146
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->resetFading()V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V
    .locals 1
    .parameter "direction"
    .parameter "completed"
    .parameter "broken"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V

    .line 97
    return-void
.end method

.method public onUpdateContent(ZZ)V
    .locals 2
    .parameter "completed"
    .parameter "broken"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V

    .line 94
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->shutdown()V

    .line 91
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mCurrentState:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;->startup()V

    .line 85
    return-void
.end method
