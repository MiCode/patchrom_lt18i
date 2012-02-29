.class public Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;
.super Lmiui/app/resourcebrowser/DownloadFileTask;
.source "ResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadRankingListTask"
.end annotation


# instance fields
.field private offset:I

.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 908
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    .line 909
    const/4 v0, 0x0

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->offset:I

    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->offset:I

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 908
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
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
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 921
    const/4 v1, 0x0

    .line 922
    .local v1, filePath:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 923
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    invoke-virtual {v3}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 926
    :cond_0
    if-nez v1, :cond_1

    .line 927
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iput-boolean v4, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mReachBottom:Z

    .line 928
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v4, 0x609005e

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 946
    :goto_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadSet:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 947
    return-void

    .line 930
    :cond_1
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mMetaData:Landroid/os/Bundle;

    invoke-static {v1, v3}, Lmiui/app/resourcebrowser/OnlineHelper;->readResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 931
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 932
    :cond_2
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iput-boolean v4, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mReachBottom:Z

    goto :goto_0

    .line 934
    :cond_3
    iget v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->offset:I

    if-nez v3, :cond_5

    .line 935
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v3, v2}, Lmiui/app/resourcebrowser/ResourceSet;->setAll(Ljava/util/List;)V

    .line 942
    :cond_4
    :goto_1
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 943
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iput-boolean v4, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    goto :goto_0

    .line 937
    :cond_5
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v3}, Lmiui/app/resourcebrowser/ResourceSet;->size()I

    move-result v0

    .line 938
    .local v0, count:I
    iget v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->offset:I

    if-ne v3, v0, :cond_4

    .line 939
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-virtual {v3, v2}, Lmiui/app/resourcebrowser/ResourceSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 916
    iput p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadRankingListTask;->offset:I

    .line 917
    return-void
.end method
