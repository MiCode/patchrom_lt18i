.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;
.source "MultiAngleStateMachine.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingState"
.end annotation


# instance fields
.field final mToRight:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZ)V
    .locals 6
    .parameter
    .parameter "toRight"
    .parameter "loaded"
    .parameter "broken"

    .prologue
    const/4 v4, 0x0

    .line 435
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v5, v4

    .line 436
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    .line 437
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mToRight:Z

    .line 438
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 494
    const-string v0, "animationEnd"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 495
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 496
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 499
    const-string v0, "animationRepeat"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 490
    const-string v0, "animationStart"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 478
    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 473
    const-string v0, "touch"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V
    .locals 1
    .parameter "direction"
    .parameter "loaded"
    .parameter "broken"

    .prologue
    .line 484
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 485
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mIsLoaded:Z

    .line 486
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mIsBroken:Z

    .line 487
    return-void
.end method

.method public performDelete()V
    .locals 1

    .prologue
    .line 463
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public performNext()V
    .locals 1

    .prologue
    .line 453
    const-string v0, "next"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public performPrevious()V
    .locals 1

    .prologue
    .line 458
    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public performShare()V
    .locals 1

    .prologue
    .line 468
    const-string v0, "share"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 448
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public startup()V
    .locals 2

    .prologue
    .line 442
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->trace(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;->mToRight:Z

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->startSlideAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 444
    return-void
.end method
