.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;
.source "MultiAngleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReviewState"
.end annotation


# instance fields
.field mIsBroken:Z

.field mIsLoaded:Z

.field final mVisibleIcons:Z

.field final mVisibleMessage:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V
    .locals 1
    .parameter
    .parameter "loaded"
    .parameter "broken"
    .parameter "showIcons"
    .parameter "showMessage"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$1;)V

    .line 251
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    .line 252
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    .line 253
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mVisibleIcons:Z

    .line 254
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mVisibleMessage:Z

    .line 255
    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 324
    const-string v0, "closeDialog"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 325
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 326
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 356
    const-string v3, "key"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 358
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_3

    .line 359
    if-eqz v0, :cond_0

    .line 360
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZ)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 392
    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 357
    goto :goto_0

    .line 363
    .restart local v0       #up:Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 364
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    goto :goto_1

    .line 369
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_5

    .line 370
    if-eqz v0, :cond_0

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 372
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$MenuState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZ)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 375
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    goto :goto_1

    .line 380
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_6

    .line 381
    if-eqz v0, :cond_7

    .line 382
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performPrevious()V

    goto :goto_1

    .line 386
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_7

    .line 387
    if-eqz v0, :cond_0

    .line 388
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performNext()V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 392
    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 397
    const-string v0, "singleTapUp"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->getIconsVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 404
    :goto_0
    return v1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    goto :goto_0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;ZZ)V
    .locals 7
    .parameter "direction"
    .parameter "completed"
    .parameter "broken"

    .prologue
    const/4 v4, 0x0

    .line 307
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$1;->$SwitchMap$com$sonyericsson$android$camera3d$viewer$SlideDirection:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 318
    iget-object v6, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move v2, p2

    move v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZZ)V

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    .line 320
    :goto_0
    return-void

    .line 310
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    invoke-direct {v1, v2, v4, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZ)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$SlidingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;ZZZ)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$State;)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performDelete()V
    .locals 1

    .prologue
    .line 342
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performDelete()V

    .line 345
    return-void
.end method

.method public performNext()V
    .locals 1

    .prologue
    .line 330
    const-string v0, "next"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performNext()V

    .line 332
    return-void
.end method

.method public performPrevious()V
    .locals 1

    .prologue
    .line 336
    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performPrevious()V

    .line 338
    return-void
.end method

.method public performShare()V
    .locals 1

    .prologue
    .line 349
    const-string v0, "share"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->performShare()V

    .line 352
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 301
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->stopTilting()V

    .line 303
    return-void
.end method

.method public startup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->trace(Ljava/lang/String;)V

    .line 260
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mVisibleIcons:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 263
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mVisibleMessage:Z

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->resetFading()V

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setIconFocusable(Z)V

    .line 268
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->stopTilting()V

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showCorruptedImage()V

    .line 297
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getImageCount()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->startTilting(II)V

    .line 280
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    const v1, 0x7f0c009f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 284
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showTiltingImage()V

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->getMediator()Lcom/sonyericsson/android/camera3d/viewer/Mediator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera3d/viewer/Mediator;->stopTilting()V

    .line 290
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessage(I)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->showReviewImage()V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 422
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", loaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", broken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine$ReviewState;->mIsBroken:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trace(Ljava/lang/String;)V
    .locals 0
    .parameter "eventName"

    .prologue
    .line 417
    return-void
.end method
