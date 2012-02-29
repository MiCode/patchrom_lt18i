.class public Lmiui/app/resourcebrowser/OnlineResourceAdapter;
.super Lmiui/app/resourcebrowser/ResourceAdapter;
.source "OnlineResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;,
        Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;
    }
.end annotation


# instance fields
.field private mCategoryCode:Ljava/lang/String;

.field private mDownloadedCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyword:Ljava/lang/String;

.field private mLoadMoreFlag:I

.field private mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 21
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mDownloadedCount:Ljava/util/HashMap;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mCategoryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mKeyword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mLoadMoreFlag:I

    return v0
.end method

.method static synthetic access$300(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mDownloadedCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    return-object v0
.end method

.method static synthetic access$502(Lmiui/app/resourcebrowser/OnlineResourceAdapter;Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;)Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    return-object p1
.end method

.method private downloadThumbnail(Ljava/lang/String;)V
    .locals 4
    .parameter "onlinePath"

    .prologue
    .line 133
    if-eqz p1, :cond_2

    .line 134
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mDownloadedCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, previousCount:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 136
    :cond_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_2

    .line 138
    :cond_1
    new-instance v1, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;-><init>(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)V

    iput-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    .line 139
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/app/resourcebrowser/ResourceConstants;->THUMBNAIL_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    .end local v0           #previousCount:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private resetResources()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceSet;->clear()V

    .line 39
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->notifyDataSetInvalidated()V

    .line 40
    const/4 v0, 0x0

    iget v1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mLoadMoreFlag:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->loadMoreData(ZIZ)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getLoadMoreDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadMoreDataTask;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;

    invoke-direct {v0, p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;-><init>(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)V

    .line 62
    .local v0, task:Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;
    iget-object p0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mContext:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lmiui/os/AsyncTaskObserver;

    invoke-virtual {v0, p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->addObserver(Lmiui/os/AsyncTaskObserver;)V

    .line 63
    return-object v0
.end method

.method protected bridge synthetic isValidKey(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    check-cast p2, Lmiui/app/resourcebrowser/Resource;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/Resource;I)Z

    move-result v0

    return v0
.end method

.method protected isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/Resource;I)Z
    .locals 9
    .parameter "key"
    .parameter "data"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 117
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 118
    .local v2, localPath:Ljava/lang/String;
    invoke-virtual {p2, p3}, Lmiui/app/resourcebrowser/Resource;->getOnlineThumbnail(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, onlinePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-direct {p0, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->downloadThumbnail(Ljava/lang/String;)V

    move v4, v8

    .line 128
    :goto_0
    return v4

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2}, Lmiui/app/resourcebrowser/Resource;->getModifiedTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 125
    invoke-direct {p0, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->downloadThumbnail(Ljava/lang/String;)V

    move v4, v8

    .line 126
    goto :goto_0

    .line 128
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceAdapter;->isValidKey(Ljava/lang/Object;Lmiui/app/resourcebrowser/Resource;I)Z

    move-result v4

    goto :goto_0
.end method

.method protected loadCacheData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .locals 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-boolean v5, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    if-nez v5, :cond_0

    iget v5, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    if-eqz v5, :cond_1

    .line 95
    :cond_0
    const/4 v5, 0x0

    .line 105
    :goto_0
    return-object v5

    .line 97
    :cond_1
    const/4 v3, 0x0

    .line 98
    .local v3, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    iget v5, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    const/4 v6, 0x0

    iget-object v7, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mCategoryCode:Ljava/lang/String;

    iget-object v8, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mKeyword:Ljava/lang/String;

    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-static {v5, v6, v7, v8, v9}, Lmiui/app/resourcebrowser/OnlineHelper;->getListURL(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, url:Ljava/lang/String;
    iget-object v5, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, cacheFolder:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-static {v2, v5}, Lmiui/app/resourcebrowser/OnlineHelper;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v3

    :cond_2
    move-object v5, v3

    .line 105
    goto :goto_0
.end method

.method protected postLoadMoreData(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mContext:Landroid/app/Activity;

    const v1, 0x609005e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_0
    return-void
.end method

.method public setCategoryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "categoryCode"

    .prologue
    .line 49
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mCategoryCode:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->resetResources()V

    .line 51
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 44
    iput p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mLoadMoreFlag:I

    .line 45
    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->resetResources()V

    .line 46
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 54
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mKeyword:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->resetResources()V

    .line 56
    return-void
.end method
