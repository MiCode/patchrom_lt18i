.class public Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
.super Lmiui/app/resourcebrowser/DownloadFileTask;
.source "OnlineResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/OnlineResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailDownloadTask"
.end annotation


# instance fields
.field private mDownloadPath:Ljava/lang/String;

.field final synthetic this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "urls"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    .line 152
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/DownloadFileTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->onPostExecute(Ljava/util/List;)V

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

    .line 157
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mDownloadedCount:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$300(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, previousCount:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    :cond_0
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mDownloadedCount:Ljava/util/HashMap;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$300(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$400(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$400(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadQueue:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$400(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 168
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    new-instance v3, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    iget-object v4, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    invoke-direct {v3, v4}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;-><init>(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)V

    #setter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
    invoke-static {v2, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$502(Lmiui/app/resourcebrowser/OnlineResourceAdapter;Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;)Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    .line 173
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$500(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/app/resourcebrowser/ResourceConstants;->THUMBNAIL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v4, v4, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->this$0:Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceAdapter;->mThumbnailDownloadTask:Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->access$500(Lmiui/app/resourcebrowser/OnlineResourceAdapter;)Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->mDownloadPath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lmiui/app/resourcebrowser/OnlineResourceAdapter$ThumbnailDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
