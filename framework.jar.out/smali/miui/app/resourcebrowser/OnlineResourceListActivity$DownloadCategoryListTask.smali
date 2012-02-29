.class public Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;
.super Lmiui/app/resourcebrowser/DownloadFileTask;
.source "OnlineResourceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/OnlineResourceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadCategoryListTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 261
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v0, 0x0

    .line 265
    .local v0, filePath:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v2, v2, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-static {v0, v2}, Lmiui/app/resourcebrowser/OnlineHelper;->readCategories(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    #calls: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setCategories(Ljava/util/List;)V
    invoke-static {v1, v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$600(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/util/List;)V

    .line 272
    :cond_1
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$DownloadCategoryListTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mDownloadSet:Ljava/util/Set;
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$700(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method
