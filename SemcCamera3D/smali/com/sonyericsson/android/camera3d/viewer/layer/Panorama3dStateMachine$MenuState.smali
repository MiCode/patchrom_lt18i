.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;
.source "Panorama3dStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
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

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 794
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    .line 777
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState$1;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    .line 795
    return-void
.end method

.method private clearTimer()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 791
    return-void
.end method

.method private restartTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 785
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 787
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 864
    const-string v3, "key"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 865
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->restartTimer()V

    .line 866
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 867
    .local v0, up:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    .line 868
    if-eqz v0, :cond_0

    .line 869
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 879
    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 866
    goto :goto_0

    .line 873
    .restart local v0       #up:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_3

    .line 874
    if-eqz v0, :cond_0

    .line 875
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v3, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 879
    goto :goto_1
.end method

.method public onSingleTapUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 857
    const-string v0, "singleTapUp"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 859
    return v4
.end method

.method onTimeout()V
    .locals 5

    .prologue
    .line 883
    const-string v0, "timeout"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 885
    return-void
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter "direction"
    .parameter "data"

    .prologue
    .line 847
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;->NONE:Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;->mIsBroken:Z

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->setSessionData(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 853
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    goto :goto_0
.end method

.method public performDelete()V
    .locals 5

    .prologue
    .line 822
    const-string v0, "performDelete"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 824
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->performDelete()V

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 826
    return-void
.end method

.method public performScroll()V
    .locals 5

    .prologue
    .line 830
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 833
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->performScroll()V

    .line 835
    :cond_0
    return-void
.end method

.method public performShare()V
    .locals 5

    .prologue
    .line 839
    const-string v0, "share"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 841
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->performShare()V

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 843
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setIconFocusable(Z)V

    .line 817
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->clearTimer()V

    .line 818
    return-void
.end method

.method public startup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 799
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->trace(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showIcons(Z)V

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->showMessage(Z)V

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->OUTPUT_2D:Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setOutputMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V

    .line 804
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setIconFocusable(Z)V

    .line 805
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setFunctionIconEnable(Z)V

    .line 806
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setPlayIconEnable(Z)V

    .line 807
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setMessageEnable(Z)V

    .line 808
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->setProgressEnable(Z)V

    .line 809
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->updateImage()V

    .line 810
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$MenuState;->restartTimer()V

    .line 811
    return-void
.end method
