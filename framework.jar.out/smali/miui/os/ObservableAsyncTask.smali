.class public abstract Lmiui/os/ObservableAsyncTask;
.super Landroid/os/AsyncTask;
.source "ObservableAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    .line 18
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/os/ObservableAsyncTask;->mId:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public addObserver(Lmiui/os/AsyncTaskObserver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 83
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    instance-of v0, p1, Lmiui/os/ObservableAsyncTask;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mId:Ljava/lang/String;

    check-cast p1, Lmiui/os/ObservableAsyncTask;

    .end local p1
    invoke-virtual {p1}, Lmiui/os/ObservableAsyncTask;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 4

    .prologue
    .line 65
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 66
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 67
    :try_start_0
    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .line 68
    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1}, Lmiui/os/AsyncTaskObserver;->onCancelled()V

    goto :goto_0

    .line 70
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 46
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .line 48
    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1, p1}, Lmiui/os/AsyncTaskObserver;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 35
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 36
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .line 38
    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1}, Lmiui/os/AsyncTaskObserver;->onPreExecute()V

    goto :goto_0

    .line 40
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 56
    iget-object v2, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    monitor-enter v2

    .line 57
    :try_start_0
    iget-object v3, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/os/AsyncTaskObserver;

    .line 58
    .local v1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    invoke-interface {v1, p1}, Lmiui/os/AsyncTaskObserver;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-void
.end method

.method public removeObserver(Lmiui/os/AsyncTaskObserver;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/AsyncTaskObserver",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, observer:Lmiui/os/AsyncTaskObserver;,"Lmiui/os/AsyncTaskObserver<TParams;TProgress;TResult;>;"
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lmiui/os/ObservableAsyncTask;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 78
    .local p0, this:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lmiui/os/ObservableAsyncTask;->mId:Ljava/lang/String;

    .line 79
    return-void
.end method
