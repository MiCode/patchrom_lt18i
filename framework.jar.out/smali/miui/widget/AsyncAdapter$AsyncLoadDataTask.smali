.class public abstract Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
.super Lmiui/os/ObservableAsyncTask;
.source "AsyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/AsyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AsyncLoadDataTask"
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
.field private mFirstTimeLoad:Z

.field private mResultDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTempDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mVisitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiui/widget/AsyncAdapter;


# direct methods
.method public constructor <init>(Lmiui/widget/AsyncAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 205
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    iput-object p1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-direct {p0}, Lmiui/os/ObservableAsyncTask;-><init>()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mResultDataSet:Ljava/util/List;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    return-void
.end method

.method private realNeedExecuteTask()Z
    .locals 2

    .prologue
    .line 220
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 221
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-interface {v1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;->dataChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 225
    :goto_1
    return v1

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addVisitor(Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    .local p1, visitor:Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;,"Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<TT;>;"
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 205
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
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
    .line 289
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    iget-object v3, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 291
    iget-object v3, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mVisitors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-interface {v3, p0}, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;->loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    .line 296
    .local v1, index:I
    :goto_1
    invoke-virtual {p0, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->loadData(I)[Ljava/lang/Object;

    move-result-object v2

    .line 297
    .local v2, partialDataSet:[Ljava/lang/Object;,"[TT;"
    if-eqz v2, :cond_1

    .line 298
    iget-object v3, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mResultDataSet:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {p0, v2}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->publishProgress([Ljava/lang/Object;)V

    .line 300
    array-length v3, v2

    add-int/2addr v1, v3

    .line 304
    goto :goto_1

    .line 306
    .end local v1           #index:I
    .end local v2           #partialDataSet:[Ljava/lang/Object;,"[TT;"
    :cond_1
    iget-object v3, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mResultDataSet:Ljava/util/List;

    return-object v3
.end method

.method protected abstract loadData(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

.method public varargs onLoadData([Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    .local p1, partialDataSet:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mResultDataSet:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->publishProgress([Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 205
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onPostExecute(Ljava/util/List;)V

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
    .line 270
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$400(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    if-nez v1, :cond_2

    .line 271
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 274
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 278
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    :cond_1
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v1}, Lmiui/widget/AsyncAdapter;->notifyDataSetChanged()V

    .line 282
    :cond_2
    invoke-super {p0, p1}, Lmiui/os/ObservableAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 283
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #calls: Lmiui/widget/AsyncAdapter;->postExecuteTask(Lmiui/os/ObservableAsyncTask;)V
    invoke-static {v1, p0}, Lmiui/widget/AsyncAdapter;->access$000(Lmiui/widget/AsyncAdapter;Lmiui/os/ObservableAsyncTask;)V

    .line 284
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v1, p1}, Lmiui/widget/AsyncAdapter;->postLoadData(Ljava/util/List;)V

    .line 285
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->realNeedExecuteTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->cancel(Z)Z

    .line 232
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #calls: Lmiui/widget/AsyncAdapter;->postExecuteTask(Lmiui/os/ObservableAsyncTask;)V
    invoke-static {v0, p0}, Lmiui/widget/AsyncAdapter;->access$000(Lmiui/widget/AsyncAdapter;Lmiui/os/ObservableAsyncTask;)V

    .line 247
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    .line 237
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$400(Lmiui/widget/AsyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    if-eqz v0, :cond_6

    .line 238
    :cond_1
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 246
    :goto_2
    invoke-super {p0}, Lmiui/os/ObservableAsyncTask;->onPreExecute()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 236
    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    .line 241
    :cond_5
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v0}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 244
    :cond_6
    iget-object v0, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    .local p1, values:[Ljava/lang/Object;,"[TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 252
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$400(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    if-eqz v1, :cond_2

    .line 253
    :cond_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDecorating:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$100(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 251
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_2
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mTempDataSet:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    :cond_3
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    #getter for: Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z
    invoke-static {v1}, Lmiui/widget/AsyncAdapter;->access$400(Lmiui/widget/AsyncAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->mFirstTimeLoad:Z

    if-eqz v1, :cond_5

    .line 263
    :cond_4
    iget-object v1, p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->this$0:Lmiui/widget/AsyncAdapter;

    invoke-virtual {v1}, Lmiui/widget/AsyncAdapter;->notifyDataSetChanged()V

    .line 265
    :cond_5
    invoke-super {p0, p1}, Lmiui/os/ObservableAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 266
    return-void
.end method
