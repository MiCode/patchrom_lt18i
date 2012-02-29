.class public Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;
.super Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;
.source "OnlineResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/OnlineResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncLoadMoreResourceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    invoke-direct {p0, p1}, Lmiui/widget/AsyncAdapter$AsyncLoadMoreDataTask;-><init>(Lmiui/widget/AsyncAdapter;)V

    return-void
.end method


# virtual methods
.method protected loadMoreData(Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;)Ljava/util/List;
    .locals 11
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
    const/4 v10, 0x0

    .line 70
    iget-boolean v6, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->upwards:Z

    if-eqz v6, :cond_0

    .line 71
    const/4 v6, 0x0

    .line 88
    :goto_0
    return-object v6

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 74
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    new-instance v4, Lmiui/app/resourcebrowser/DownloadFileTask;

    invoke-direct {v4}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    .line 75
    .local v4, task:Lmiui/app/resourcebrowser/DownloadFileTask;
    iget-object v6, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v6, v6, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v7, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, cacheFolder:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v7, v7, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lmiui/app/resourcebrowser/DownloadFileTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 77
    iget v6, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->cursor:I

    iget-object v7, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mCategoryCode:Ljava/lang/String;
    invoke-static {v7}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$000(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mKeyword:Ljava/lang/String;
    invoke-static {v8}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$100(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v9, v9, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-static {v6, v10, v7, v8, v9}, Lmiui/app/resourcebrowser/OnlineHelper;->getListURL(IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, url:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v10

    invoke-virtual {v4, v6}, Lmiui/app/resourcebrowser/DownloadFileTask;->doInForeground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 79
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    iget v6, p1, Lmiui/widget/AsyncAdapter$AsyncLoadMoreParams;->flag:I

    iget-object v7, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mLoadMoreFlag:I
    invoke-static {v7}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$200(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 82
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    invoke-virtual {v6}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_1
    if-eqz v1, :cond_2

    .line 85
    iget-object v6, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$AsyncLoadMoreResourceTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v6, v6, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-static {v1, v6}, Lmiui/app/resourcebrowser/OnlineHelper;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .end local v1           #filePath:Ljava/lang/String;
    :cond_2
    move-object v6, v2

    .line 88
    goto :goto_0
.end method
