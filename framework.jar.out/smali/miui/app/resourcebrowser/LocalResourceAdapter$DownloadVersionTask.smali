.class public Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;
.super Lmiui/app/resourcebrowser/DownloadFileTask;
.source "LocalResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/LocalResourceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadVersionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/LocalResourceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;

    invoke-direct {p0}, Lmiui/app/resourcebrowser/DownloadFileTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 148
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->onPostExecute(Ljava/util/List;)V

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
    .line 151
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/DownloadFileTask$DownloadFileEntry;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, filePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;

    iget-object v2, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->this$0:Lmiui/app/resourcebrowser/LocalResourceAdapter;

    iget-object v2, v2, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    #calls: Lmiui/app/resourcebrowser/LocalResourceAdapter;->checkVersionStatus(Ljava/util/List;)V
    invoke-static {v1, v2}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->access$000(Lmiui/app/resourcebrowser/LocalResourceAdapter;Ljava/util/List;)V

    .line 157
    .end local v0           #filePath:Ljava/lang/String;
    :cond_0
    return-void
.end method
