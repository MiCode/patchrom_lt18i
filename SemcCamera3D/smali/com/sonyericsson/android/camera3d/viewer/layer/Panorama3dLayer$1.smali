.class Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;
.super Landroid/os/Handler;
.source "Panorama3dLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v3, :cond_1

    .line 461
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForLeftEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$000(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v0

    .line 462
    .local v0, left:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mImageHolderForRightEye:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$100(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;

    move-result-object v1

    .line 463
    .local v1, right:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 464
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v4

    invoke-virtual {v4, v2, v2, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(ZZZZ)V

    .line 478
    .end local v0           #left:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .end local v1           #right:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_1
    :goto_0
    return-void

    .line 471
    .restart local v0       #left:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    .restart local v1       #right:Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->mStateMachine:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;
    invoke-static {v4}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$200(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v5

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isStored()Z

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;

    #calls: Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->checkScrollable()Z
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;->access$300(Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dLayer;)Z

    move-result v7

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isBroken()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/ImageHolder;->isBroken()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/sonyericsson/android/camera3d/viewer/layer/Panorama3dStateMachine;->onUpdateContent(ZZZZ)V

    goto :goto_0
.end method
