.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;
.super Landroid/os/AsyncTask;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRequeryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 374
    if-eqz p2, :cond_0

    .line 375
    iput-object p2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;

    .line 379
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 388
    :cond_0
    monitor-exit v1

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;->onCancel()V

    .line 401
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$RequeryListener;->onRequeryComplete()V

    .line 395
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncRequeryTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mRequeryTaskQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$300(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method
