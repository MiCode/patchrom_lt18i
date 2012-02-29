.class public abstract Lmiui/widget/AsyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "AsyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;,
        Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,
        Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;,
        Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,
        Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field public static final BOTH:I = 0x3

.field public static final DOWNWARDS:I = 0x2

.field public static final NONE:I = 0x0

.field public static final UPWARDS:I = 0x1

.field private static mPartialDataCache:Lmiui/widget/DataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/widget/DataCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mAutoLoadDownwardsMore:Z

.field private mAutoLoadUpwardsMore:Z

.field private mDataPerLine:I

.field private mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDecorating:Z

.field private mLoadMoreFlag:I

.field private mLoadMoreUsingCache:Z

.field private mLoadPartialDataCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/widget/AsyncAdapter",
            "<TT;>.Async",
            "LoadPartialDataTask;"
        }
    .end annotation
.end field

.field private mLoadUsingCache:Z

.field private mPreloadOffset:I

.field protected mReachBottom:Z

.field protected mReachTop:Z

.field private mTaskLocker:[B

.field private mTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/os/ObservableAsyncTask",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/widget/AsyncAdapter;->mTaskLocker:[B

    .line 39
    iput-boolean v1, p0, Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z

    .line 52
    iput v1, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<TT;>;"
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/widget/AsyncAdapter;->mTaskLocker:[B

    .line 39
    iput-boolean v1, p0, Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z

    .line 52
    iput v1, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    .line 62
    iput-object p1, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 63
    iput-boolean v1, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    .line 64
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lmiui/widget/AsyncAdapter;Lmiui/os/ObservableAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter;->postExecuteTask(Lmiui/os/ObservableAsyncTask;)V

    return-void
.end method

.method static synthetic access$100(Lmiui/widget/AsyncAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    return v0
.end method

.method static synthetic access$200(Lmiui/widget/AsyncAdapter;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/widget/AsyncAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/widget/AsyncAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z

    return v0
.end method

.method static synthetic access$500()Lmiui/widget/DataCache;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lmiui/widget/AsyncAdapter;->mPartialDataCache:Lmiui/widget/DataCache;

    return-object v0
.end method

.method private postExecuteTask(Lmiui/os/ObservableAsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/ObservableAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, task:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<***>;"
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mTaskLocker:[B

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter;->mTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v0

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private preExecuteTask(Lmiui/os/ObservableAsyncTask;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/os/ObservableAsyncTask",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, task:Lmiui/os/ObservableAsyncTask;,"Lmiui/os/ObservableAsyncTask<***>;"
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mTaskLocker:[B

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter;->mTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    .line 151
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lmiui/widget/AsyncAdapter;->mTaskSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract bindContentView(Landroid/view/View;Ljava/util/List;I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<TT;>;I)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected abstract bindPartialContentView(Landroid/view/View;Ljava/lang/Object;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract getCacheKeys(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 76
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getDataCount()I

    move-result v0

    .line 77
    .local v0, total:I
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iget v2, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDataCount()I
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getDataPerLine()I
    .locals 1

    .prologue
    .line 110
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget v0, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget v0, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lmiui/widget/AsyncAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 90
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget v0, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lmiui/widget/AsyncAdapter;->getDataItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLoadDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<TT;>.Async",
            "LoadDataTask;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoadMoreDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<TT;>.Async",
            "LoadMoreDataTask;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoadPartialDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<TT;>.Async",
            "LoadPartialDataTask;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v6, 0x1

    .line 115
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getDataCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 142
    :goto_0
    return-object v4

    .line 119
    :cond_0
    iget v4, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    mul-int v2, p1, v4

    .line 120
    .local v2, index:I
    iget v4, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getDataCount()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 122
    .local v3, length:I
    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    if-ne v4, v6, :cond_1

    .line 123
    iget-object v4, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 132
    :goto_1
    sub-int v1, v3, v6

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 133
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Lmiui/widget/AsyncAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v4

    add-int v5, v2, v1

    invoke-virtual {p0, p2, v4, v5}, Lmiui/widget/AsyncAdapter;->loadPartialData(Landroid/view/View;Ljava/lang/Object;I)V

    .line 132
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 125
    .end local v1           #i:I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, bindData:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v3, :cond_2

    .line 127
    add-int v4, v2, v1

    invoke-virtual {p0, v4}, Lmiui/widget/AsyncAdapter;->getDataItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 129
    :cond_2
    invoke-virtual {p0, p2, v0, v2}, Lmiui/widget/AsyncAdapter;->bindContentView(Landroid/view/View;Ljava/util/List;I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 136
    .end local v0           #bindData:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_3
    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mReachTop:Z

    if-nez v4, :cond_5

    iget v4, p0, Lmiui/widget/AsyncAdapter;->mPreloadOffset:I

    if-ne p1, v4, :cond_5

    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mAutoLoadUpwardsMore:Z

    if-eqz v4, :cond_5

    .line 137
    iget v4, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreFlag:I

    iget-boolean v5, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreUsingCache:Z

    invoke-virtual {p0, v6, v4, v5}, Lmiui/widget/AsyncAdapter;->loadMoreData(ZIZ)V

    :cond_4
    :goto_4
    move-object v4, p2

    .line 142
    goto :goto_0

    .line 138
    :cond_5
    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mReachBottom:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v6

    iget v5, p0, Lmiui/widget/AsyncAdapter;->mPreloadOffset:I

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_4

    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mAutoLoadDownwardsMore:Z

    if-eqz v4, :cond_4

    .line 139
    const/4 v4, 0x0

    iget v5, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreFlag:I

    iget-boolean v6, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreUsingCache:Z

    invoke-virtual {p0, v4, v5, v6}, Lmiui/widget/AsyncAdapter;->loadMoreData(ZIZ)V

    goto :goto_4
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 68
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter;->mTaskSet:Ljava/util/Set;

    .line 69
    new-instance v0, Lmiui/widget/DataCache;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/DataCache;-><init>(IFZ)V

    sput-object v0, Lmiui/widget/AsyncAdapter;->mPartialDataCache:Lmiui/widget/DataCache;

    .line 70
    sget-object v0, Lmiui/widget/AsyncAdapter;->mPartialDataCache:Lmiui/widget/DataCache;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiui/widget/DataCache;->setMaximumCapacity(I)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataCount:Ljava/util/Map;

    .line 72
    return-void
.end method

.method protected isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "key"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;I)Z"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p2, data:Ljava/lang/Object;,"TT;"
    sget-object v0, Lmiui/widget/AsyncAdapter;->mPartialDataCache:Lmiui/widget/DataCache;

    invoke-virtual {v0, p1}, Lmiui/widget/DataCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected loadCacheData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadData()V
    .locals 2

    .prologue
    .line 175
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getLoadDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;

    move-result-object v0

    .line 176
    .local v0, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadDataTask;"
    if-nez v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v1, "loadData"

    invoke-virtual {v0, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->setId(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v0}, Lmiui/widget/AsyncAdapter;->preExecuteTask(Lmiui/os/ObservableAsyncTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadMoreData(ZIZ)V
    .locals 6
    .parameter "upwards"
    .parameter "flag"
    .parameter "usingCache"

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v5, 0x0

    .line 328
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getLoadMoreDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;

    move-result-object v3

    .line 329
    .local v3, task:Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;,"Lmiui/widget/AsyncAdapter<TT;>.AsyncLoadMoreDataTask;"
    if-nez v3, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;

    invoke-direct {v1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;-><init>()V

    .line 333
    .local v1, params:Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;
    iput-boolean p1, v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    .line 334
    iput p2, v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->flag:I

    .line 335
    iput p2, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreFlag:I

    .line 336
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getDataCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 337
    :cond_2
    iput v5, v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    .line 341
    :goto_1
    if-eqz p3, :cond_6

    .line 342
    invoke-virtual {p0, v1}, Lmiui/widget/AsyncAdapter;->loadCacheData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;

    move-result-object v2

    .line 343
    .local v2, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-eqz v2, :cond_5

    .line 344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 345
    iget-boolean v4, p0, Lmiui/widget/AsyncAdapter;->mDecorating:Z

    if-eqz v4, :cond_4

    .line 346
    iget-object v4, p0, Lmiui/widget/AsyncAdapter;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 344
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 339
    .end local v0           #i:I
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_3
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getDataCount()I

    move-result v4

    iput v4, v1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    goto :goto_1

    .line 348
    .restart local v0       #i:I
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_4
    iget-object v4, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 352
    .end local v0           #i:I
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->setClearData(Z)V

    .line 354
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_6
    invoke-virtual {v3, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->setLoadParams(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)V

    .line 355
    const-string v4, "loadMoreData"

    invoke-virtual {v3, v4}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->setId(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v3}, Lmiui/widget/AsyncAdapter;->preExecuteTask(Lmiui/os/ObservableAsyncTask;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected loadPartialData(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 8
    .parameter "view"
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p2, data:Ljava/lang/Object;,"TT;"
    const/4 v7, 0x0

    .line 440
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    invoke-virtual {v5}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->getLoadPartialDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    move-result-object v5

    iput-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    .line 442
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    if-nez v5, :cond_1

    .line 471
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    invoke-virtual {v5}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    sget-object v6, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v5, v6, :cond_2

    .line 448
    :try_start_0
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_2
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v3, partialData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p2}, Lmiui/widget/AsyncAdapter;->getCacheKeys(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 455
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 456
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 457
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p0, v1, p2, v0}, Lmiui/widget/AsyncAdapter;->isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 458
    sget-object v5, Lmiui/widget/AsyncAdapter;->mPartialDataCache:Lmiui/widget/DataCache;

    invoke-virtual {v5, v1}, Lmiui/widget/DataCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 460
    :cond_4
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataCount:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 461
    .local v4, previousCount:Ljava/lang/Integer;
    if-nez v4, :cond_5

    .line 462
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 464
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_3

    .line 465
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    invoke-virtual {v5, v1}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->addJob(Ljava/lang/Object;)V

    .line 466
    iget-object v5, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataCount:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 470
    .end local v1           #key:Ljava/lang/Object;
    .end local v4           #previousCount:Ljava/lang/Integer;
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v3}, Lmiui/widget/AsyncAdapter;->bindPartialContentView(Landroid/view/View;Ljava/lang/Object;ILjava/util/List;)V

    goto :goto_0

    .line 449
    .end local v0           #i:I
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3           #partialData:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 483
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 484
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lmiui/widget/AsyncAdapter;->mLoadPartialDataTask:Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;

    invoke-virtual {v0}, Lmiui/widget/AsyncAdapter$AsyncLoadPartialDataTask;->stop()V

    .line 487
    :cond_0
    return-void
.end method

.method protected postLoadData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    return-void
.end method

.method protected postLoadMoreData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<TT;>;"
    return-void
.end method

.method protected postLoadPartialData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    return-void
.end method

.method public setAutoLoadMoreStyle(I)V
    .locals 3
    .parameter "autoLoadMoreStyle"

    .prologue
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mAutoLoadUpwardsMore:Z

    .line 320
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lmiui/widget/AsyncAdapter;->mAutoLoadDownwardsMore:Z

    .line 321
    return-void

    :cond_0
    move v0, v1

    .line 319
    goto :goto_0

    :cond_1
    move v0, v1

    .line 320
    goto :goto_1
.end method

.method public setDataPerLine(I)V
    .locals 0
    .parameter "dataPerLine"

    .prologue
    .line 106
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iput p1, p0, Lmiui/widget/AsyncAdapter;->mDataPerLine:I

    .line 107
    return-void
.end method

.method public setDataSet(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    .local p1, dataSet:Ljava/util/List;,"Ljava/util/List<TT;>;"
    iput-object p1, p0, Lmiui/widget/AsyncAdapter;->mDataSet:Ljava/util/List;

    .line 163
    invoke-virtual {p0}, Lmiui/widget/AsyncAdapter;->notifyDataSetInvalidated()V

    .line 164
    return-void
.end method

.method public setLoadMoreUsingCache(Z)V
    .locals 0
    .parameter "usingCache"

    .prologue
    .line 324
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iput-boolean p1, p0, Lmiui/widget/AsyncAdapter;->mLoadMoreUsingCache:Z

    .line 325
    return-void
.end method

.method public setLoadUsingCache(Z)V
    .locals 0
    .parameter "usingCache"

    .prologue
    .line 171
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iput-boolean p1, p0, Lmiui/widget/AsyncAdapter;->mLoadUsingCache:Z

    .line 172
    return-void
.end method

.method public setPreloadOffset(I)V
    .locals 0
    .parameter "preloadOffset"

    .prologue
    .line 167
    .local p0, this:Lmiui/widget/AsyncAdapter;,"Lmiui/widget/AsyncAdapter<TT;>;"
    iput p1, p0, Lmiui/widget/AsyncAdapter;->mPreloadOffset:I

    .line 168
    return-void
.end method
