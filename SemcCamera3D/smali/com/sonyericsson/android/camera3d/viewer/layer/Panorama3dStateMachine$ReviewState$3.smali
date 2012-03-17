.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;
.super Ljava/lang/Object;
.source "Panorama3dStateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->onUpdateContent(Lcom/sonyericsson/android/camera3d/viewer/SlideDirection;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

.field final synthetic val$right:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->val$right:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;Z)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 531
    return-void
.end method

.method public onStart(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mLayer:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$3;->val$right:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->startSlideAnimation(ZLandroid/view/animation/Animation$AnimationListener;)V

    .line 527
    return-void
.end method
