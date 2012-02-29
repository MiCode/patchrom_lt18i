.class public Lmiui/os/DaemonAsyncTask;
.super Lmiui/os/ObservableAsyncTask;
.source "DaemonAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/os/DaemonAsyncTask$StackJobPool;,
        Lmiui/os/DaemonAsyncTask$JobPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Job:",
        "Ljava/lang/Object;",
        "JobResult:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/os/ObservableAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<TJob;TJobResult;>;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/os/DaemonAsyncTask$JobPool",
            "<TJob;>;"
        }
    .end annotation
.end field

.field private mLocker:[B

.field private mNeedStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    .line 22
    return-void
.end method


# virtual methods
.method public addJob(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJob;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, job:Ljava/lang/Object;,"TJob;"
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v0, p1}, Lmiui/os/DaemonAsyncTask$JobPool;->addJob(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/os/DaemonAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 49
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    :goto_0
    iget-boolean v3, p0, Lmiui/os/DaemonAsyncTask;->mNeedStop:Z

    if-nez v3, :cond_2

    .line 50
    const/4 v2, 0x0

    .line 51
    .local v2, job:Ljava/lang/Object;,"TJob;"
    iget-object v3, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v3}, Lmiui/os/DaemonAsyncTask$JobPool;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    invoke-interface {v3}, Lmiui/os/DaemonAsyncTask$JobPool;->getNextJob()Ljava/lang/Object;

    move-result-object v2

    .line 54
    .end local v2           #job:Ljava/lang/Object;,"TJob;"
    :cond_0
    if-nez v2, :cond_1

    .line 55
    iget-object v3, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v3

    .line 57
    :try_start_0
    iget-object v4, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 58
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 59
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 63
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0, v2}, Lmiui/os/DaemonAsyncTask;->doJob(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .local v1, entry:Landroid/util/Pair;,"Landroid/util/Pair<TJob;TJobResult;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lmiui/os/DaemonAsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v1           #entry:Landroid/util/Pair;,"Landroid/util/Pair<TJob;TJobResult;>;"
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method protected doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJob;)TJobResult;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, job:Ljava/lang/Object;,"TJob;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setJobPool(Lmiui/os/DaemonAsyncTask$JobPool;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/DaemonAsyncTask$JobPool",
            "<TJob;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    .local p1, jobs:Lmiui/os/DaemonAsyncTask$JobPool;,"Lmiui/os/DaemonAsyncTask$JobPool<TJob;>;"
    iput-object p1, p0, Lmiui/os/DaemonAsyncTask;->mJobPool:Lmiui/os/DaemonAsyncTask$JobPool;

    .line 30
    return-void
.end method

.method public setLocker([B)V
    .locals 0
    .parameter "locker"

    .prologue
    .line 25
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    iput-object p1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    .line 26
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 40
    .local p0, this:Lmiui/os/DaemonAsyncTask;,"Lmiui/os/DaemonAsyncTask<TJob;TJobResult;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/os/DaemonAsyncTask;->mNeedStop:Z

    .line 41
    iget-object v0, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lmiui/os/DaemonAsyncTask;->mLocker:[B

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
