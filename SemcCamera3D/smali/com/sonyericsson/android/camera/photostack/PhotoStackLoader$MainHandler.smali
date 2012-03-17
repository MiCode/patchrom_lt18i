.class Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;
.super Landroid/os/Handler;
.source "PhotoStackLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# static fields
.field private static final MSG_REQUEST_RELOAD:I = 0x1

.field private static final RELOAD_RETRY_INTERVAL:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 936
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)V

    return-void
.end method


# virtual methods
.method public cancelReload()V
    .locals 2

    .prologue
    .line 950
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->removeMessages(I)V

    .line 951
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->cancel(Z)Z

    .line 954
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 958
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 959
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->isWaiting()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$800(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    new-instance v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$1;)V

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$702(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    .line 961
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    #getter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mReloadTask:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$700(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$AsyncReloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 964
    :cond_0
    return-void
.end method

.method public requestReload()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;->Waiting:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    #setter for: Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->mState:Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;->access$602(Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader;Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;)Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$State;

    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->sendEmptyMessage(I)Z

    .line 943
    return-void
.end method

.method public retryReload()V
    .locals 3

    .prologue
    .line 946
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStackLoader$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 947
    return-void
.end method
