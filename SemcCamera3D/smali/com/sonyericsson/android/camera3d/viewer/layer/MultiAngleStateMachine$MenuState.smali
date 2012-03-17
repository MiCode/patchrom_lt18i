.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;
.source "MultiAngleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuState"
.end annotation


# static fields
.field private static final TIMER_INTERVAL:I = 0x1388

.field private static final TIMER_MESSAGE:I = 0x1


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZ)V
    .locals 6
    .parameter
    .parameter "loaded"
    .parameter "broken"

    .prologue
    const/4 v4, 0x1

    .line 527
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 528
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    .line 511
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    .line 529
    return-void
.end method

.method private clearTimer()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    return-void
.end method

.method private restartTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 600
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->restartTimer()V

    .line 601
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    move v6, v4

    .line 602
    .local v6, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    .line 603
    if-eqz v6, :cond_0

    .line 604
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v7, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 614
    :cond_0
    :goto_1
    return v4

    .end local v6           #up:Z
    :cond_1
    move v6, v0

    .line 601
    goto :goto_0

    .line 608
    .restart local v6       #up:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_3

    .line 609
    if-eqz v6, :cond_0

    .line 610
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v7, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    goto :goto_1

    :cond_3
    move v4, v0

    .line 614
    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    .line 619
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 620
    return v4
.end method

.method onTimeout()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 624
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 625
    return-void
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V
    .locals 1
    .parameter "direction"
    .parameter "completed"
    .parameter "broken"

    .prologue
    .line 576
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    if-ne p1, v0, :cond_0

    if-nez p3, :cond_0

    .line 577
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    .line 578
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    invoke-super {p0, p1, v0, p3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V

    goto :goto_0
.end method

.method public performDelete()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performDelete()V

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 588
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 589
    return-void
.end method

.method public performShare()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performShare()V

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 595
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 596
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->clearTimer()V

    .line 572
    return-void
.end method

.method public startup()V
    .locals 5

    .prologue
    const v4, 0x7f0c009f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 534
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setIconFocusable(Z)V

    .line 536
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsBroken:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->stopTilting()V

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 540
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showCorruptedImage()V

    .line 566
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->restartTimer()V

    .line 567
    return-void

    .line 546
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->mIsLoaded:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getImageCount()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->startTilting(II)V

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 550
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showTiltingImage()V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->stopTilting()V

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showReviewImage()V

    goto/16 :goto_0
.end method
