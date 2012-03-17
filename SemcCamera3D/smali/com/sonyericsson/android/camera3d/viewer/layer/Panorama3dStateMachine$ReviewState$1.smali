.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;
.super Ljava/lang/Object;
.source "Panorama3dStateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->performScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

.field final synthetic val$animating:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->val$animating:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 478
    const-string v0, "Panorama3dStateMachine"

    const-string v1, "onEnd:"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->getSessionData()Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AutoScrollingState;-><init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$StateData;)V

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->changeTo(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$500(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V

    .line 480
    return-void
.end method

.method public onStart(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 467
    const-string v2, "Panorama3dStateMachine"

    const-string v3, "onStart:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$State;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mReviewIcon:Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/ReviewIconView;->hide()V

    .line 469
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->fitVertical()V

    .line 470
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getScaledImageRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 471
    .local v1, imageRect:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v3, v3, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->getFrameRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v0, v2, v3

    .line 473
    .local v0, distance:F
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v2

    const/high16 v3, 0x3f00

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->moveXto(I)V

    .line 474
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->this$1:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;

    iget-object v2, v2, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->mPanoramaImage:Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;)Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$ReviewState$1;->val$animating:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine$AnimatingState;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/view/Panorama3dView;->commit(Landroid/view/animation/Animation$AnimationListener;)V

    .line 475
    return-void
.end method
