.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
.super Landroid/os/AsyncTask;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 976
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .parameter "params"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMediaCS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->searchMedia()Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$1000(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;

    move-result-object v2

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$202(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMedia:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    .line 987
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 976
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$702(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    .line 1007
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$702(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    .line 995
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Running:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$602(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mListener:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$1100(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$PhotoStackLoaderListener;->onResume(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V

    .line 1002
    :goto_0
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mMainHandler:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$1200(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->retryReload()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 976
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
