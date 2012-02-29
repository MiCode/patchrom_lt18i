.class public abstract Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;
.super Lmiui/os/ObservableAsyncTask;
.source "AsyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AsyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AsyncLoadMoreDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/os/ObservableAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "TT;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private mClearData:Z

.field private mLoadParams:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

.field final synthetic this$0:Lmiui/widget/AsyncAdapter;


# direct methods
.method public constructor <init>(Lmiui/widget/AsyncAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    iput-object p1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 382
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mLoadParams:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

    if-nez v1, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 432
    :goto_0
    return-object v1

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 426
    .local v0, dataSet:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mLoadParams:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

    invoke-virtual {p0, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->loadMoreData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mLoadParams:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

    iget-boolean v1, v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    if-eqz v1, :cond_3

    .line 428
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v1, Lmiui/widget/AsyncAdapter;->mReachTop:Z

    :goto_2
    move-object v1, v0

    .line 432
    goto :goto_0

    :cond_2
    move v2, v3

    .line 428
    goto :goto_1

    .line 430
    :cond_3
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v4

    :goto_3
    iput-boolean v2, v1, Lmiui/widget/AsyncAdapter;->mReachBottom:Z

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_3
.end method

.method protected abstract loadMoreData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 382
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-boolean v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mClearData:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 399
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 405
    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 406
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 407
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 406
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 410
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v1}, Lmiui/widget/AsyncAdapter;->notifyDataSetChanged()V

    .line 415
    invoke-super {p0, p1}, Lmiui/os/ObservableAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 416
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #calls: Lmiui/widget/AsyncAdapter;->postExecuteTask(Lmiui/os/ObservableAsyncTask;)V
    invoke-static {v1, p0}, Lmiui/widget/AsyncAdapter;->access$000(Lmiui/widget/AsyncAdapter;Lmiui/os/ObservableAsyncTask;)V

    .line 417
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v1, p1}, Lmiui/widget/AsyncAdapter;->postLoadMoreData(Ljava/util/List;)V

    .line 418
    return-void
.end method

.method public setClearData(Z)V
    .locals 0
    .parameter "clearData"

    .prologue
    .line 393
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    iput-boolean p1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mClearData:Z

    .line 394
    return-void
.end method

.method public setLoadParams(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)V
    .locals 0
    .parameter "loadParams"

    .prologue
    .line 389
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    iput-object p1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->mLoadParams:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

    .line 390
    return-void
.end method
