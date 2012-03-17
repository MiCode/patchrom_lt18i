.class Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;
.super Landroid/os/Handler;
.source "MultiAngleLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 376
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 378
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #setter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$002(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;Z)Z

    .line 380
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mImages:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    .line 381
    .local v0, i:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isCompleted()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$072(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;I)Z

    goto :goto_0

    .line 384
    .end local v0           #i:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsLoaded:Z
    invoke-static {v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Z

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->mIsBroken:Z
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleLayer;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/MultiAngleStateMachine;->onUpdateContent(ZZ)V

    .line 386
    :cond_1
    return-void
.end method
