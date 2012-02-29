.class public Lmiui/app/resourcebrowser/ZipResourceFolder;
.super Lmiui/app/resourcebrowser/ResourceFolder;
.source "ZipResourceFolder.java"


# instance fields
.field private mZipResourceInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/ZipResourceCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method protected addItem(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->addItem(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;
    .locals 8
    .parameter "filePath"

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/resourcebrowser/ZipResourceCache;

    .line 57
    .local v2, zipResourceCache:Lmiui/app/resourcebrowser/ZipResourceCache;
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, p1, v2}, Lmiui/app/resourcebrowser/ZipResourceFolder;->createZipResource(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;)Lmiui/app/resourcebrowser/ZipResourceInfo;

    move-result-object v0

    .line 58
    .local v0, info:Lmiui/app/resourcebrowser/ZipResourceInfo;
    if-nez v0, :cond_0

    move-object v3, v7

    .line 70
    :goto_0
    return-object v3

    .line 61
    :cond_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->getCache()Lmiui/app/resourcebrowser/ZipResourceCache;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->clearCache()V

    .line 64
    new-instance v1, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v1}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 65
    .local v1, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->getInformation()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {v1}, Lmiui/app/resourcebrowser/Resource;->getPlatformVersion()I

    move-result v3

    iget-object v4, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.PLATFORM_VERSION_START"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v6, "com.miui.android.resourcebrowser.PLATFORM_VERSION_END"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lmiui/app/resourcebrowser/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v7

    .line 68
    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 70
    goto :goto_0
.end method

.method protected createZipResource(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;)Lmiui/app/resourcebrowser/ZipResourceInfo;
    .locals 1
    .parameter "context"
    .parameter "filePath"
    .parameter "zipCache"

    .prologue
    .line 75
    invoke-static {p2}, Lmiui/app/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, v0}, Lmiui/app/resourcebrowser/ZipResourceInfo;->createZipResourceInfo(Landroid/content/Context;Ljava/lang/String;Lmiui/app/resourcebrowser/ZipResourceCache;[Ljava/lang/Object;)Lmiui/app/resourcebrowser/ZipResourceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public dataChanged()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceHelper;->getFolderInfoCache(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    move-result-object v0

    .line 89
    .local v0, folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    if-eqz v0, :cond_3

    .line 90
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, path:Ljava/lang/String;
    iget-object v3, v0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 101
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return v3

    .line 95
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, v0, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .restart local v2       #path:Ljava/lang/String;
    iget-object v3, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lmiui/app/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 97
    goto :goto_0

    .line 101
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V

    .line 84
    return-void
.end method

.method protected readDataFromStream(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "objStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->readDataFromStream(Ljava/io/ObjectInputStream;)V

    .line 34
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    .line 35
    return-void
.end method

.method protected removeItem(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->removeItem(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceFolder;->reset()V

    .line 40
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    return-void
.end method

.method protected writeDataToStream(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceFolder;->writeDataToStream(Ljava/io/ObjectOutputStream;)V

    .line 27
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipResourceFolder;->mZipResourceInfoCache:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
