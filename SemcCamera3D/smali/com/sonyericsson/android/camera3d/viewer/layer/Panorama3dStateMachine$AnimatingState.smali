.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;
.super Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;
.source "Panorama3dStateMachine.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatingState"
.end annotation


# instance fields
.field private mChangeTo3DInterrupted:Z

.field private mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mChangeTo3DInterrupted:Z

    .line 672
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    .line 673
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 750
    const-string v0, "animationEnd"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    if-eqz v0, :cond_0

    .line 752
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mChangeTo3DInterrupted:Z

    if-eqz v0, :cond_1

    .line 756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mChangeTo3DInterrupted:Z

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;->onEnd(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 765
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 746
    const-string v0, "animationStart"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public onChangeHdmiState(Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    .line 738
    const-string v0, "changeHdmiState"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mChangeTo3DInterrupted:Z

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$Output3dState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Lcom/sonyericsson/android/camera3d/viewer/Constants$OutputMode;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 743
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 726
    const-string v0, "key"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 721
    const-string v0, "touch"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
    .locals 1
    .parameter "direction"
    .parameter "data"

    .prologue
    .line 732
    const-string v0, "updateContent"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->setSessionData(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    .line 734
    return-void
.end method

.method public performDelete()V
    .locals 1

    .prologue
    .line 711
    const-string v0, "delete"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public performNext()V
    .locals 1

    .prologue
    .line 696
    const-string v0, "next"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public performPrevious()V
    .locals 1

    .prologue
    .line 701
    const-string v0, "previous"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public performScroll()V
    .locals 1

    .prologue
    .line 706
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public performShare()V
    .locals 1

    .prologue
    .line 716
    const-string v0, "share"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method setListener(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    .line 679
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 691
    const-string v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public startup()V
    .locals 1

    .prologue
    .line 683
    const-string v0, "startup"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->trace(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;->mListener:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;->onStart(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 687
    :cond_0
    return-void
.end method
