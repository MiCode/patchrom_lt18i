.class Lcom/sonyericsson/android/camera3d/viewer/AppController$1;
.super Ljava/lang/Object;
.source "AppController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/AppController;->close(Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

.field final synthetic val$finishIfEmpty:Z

.field final synthetic val$remove:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/AppController;Lcom/sonyericsson/android/camera3d/viewer/AppLayer;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->val$remove:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->val$finishIfEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->access$100(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/AppController;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->access$000(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->val$remove:Lcom/sonyericsson/android/camera3d/viewer/AppLayer;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->close(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Lcom/sonyericsson/android/camera3d/viewer/AppLayer;)V

    .line 215
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->val$finishIfEmpty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/AppController;->mLayers:Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->access$100(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppLayerStack;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/AppController;->mOnFinishListener:Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->access$200(Lcom/sonyericsson/android/camera3d/viewer/AppController;)Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/AppController$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/AppController;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/AppController$OnFinishListener;->onFinish(Lcom/sonyericsson/android/camera3d/viewer/AppController;)V

    .line 218
    :cond_0
    return-void
.end method
