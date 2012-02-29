.class public abstract Lmiui/app/resourcebrowser/ResourceFolder;
.super Ljava/lang/Object;
.source "ResourceFolder.java"

# interfaces
.implements Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;",
        "Lmiui/app/resourcebrowser/IntentConstants;"
    }
.end annotation


# instance fields
.field protected mCacheFileName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mFileFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstLoadData:Z

.field protected mFolderPath:Ljava/lang/String;

.field protected mMetaData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "metaData"
    .parameter "folderPath"

    .prologue
    const/16 v6, 0x5f

    const/16 v5, 0x2f

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFirstLoadData:Z

    .line 36
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mMetaData:Landroid/os/Bundle;

    .line 41
    iput-object p3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFolderPath:Ljava/lang/String;

    .line 42
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, cacheFolder:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, oldFileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 49
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mCacheFileName:Ljava/lang/String;

    .line 51
    .end local v0           #cacheFolder:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #oldFileName:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected addItem(Ljava/lang/String;)V
    .locals 0
    .parameter "filePath"

    .prologue
    .line 99
    return-void
.end method

.method protected buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 102
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, information:Landroid/os/Bundle;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, file:Ljava/io/File;
    const-string v3, "m_title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "filesize"

    iget-object v4, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lmiui/app/resourcebrowser/ResourceHelper;->getFormattedSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "m_lastupdate"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 108
    const-string v3, "local_path"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Lmiui/app/resourcebrowser/Resource;

    invoke-direct {v2}, Lmiui/app/resourcebrowser/Resource;-><init>()V

    .line 110
    .local v2, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v2, v1}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 111
    return-object v2
.end method

.method public dataChanged()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public loadData(Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;)V
    .locals 9
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
    .local p1, task:Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;,"Lmiui/widget/AsyncAdapter<Lmiui/app/resourcebrowser/Resource;>.AsyncLoadDataTask;"
    const/4 v8, 0x0

    .line 121
    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v7, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFirstLoadData:Z

    if-eqz v7, :cond_2

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFolder;->readCache()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :goto_1
    iput-boolean v8, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFirstLoadData:Z

    .line 136
    :cond_2
    const/4 v0, 0x0

    .line 137
    .local v0, dirty:Z
    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v7}, Lmiui/app/resourcebrowser/ResourceHelper;->getFolderInfoCache(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    move-result-object v2

    .line 138
    .local v2, folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    if-eqz v2, :cond_7

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v4, v2}, Lmiui/app/resourcebrowser/ResourceFolder;->sortResource(Ljava/util/List;Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;)V

    .line 141
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 142
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 143
    .local v5, path:Ljava/lang/String;
    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 144
    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceFolder;->addItem(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :cond_3
    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceFolder;->buildResource(Ljava/lang/String;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v6

    .line 148
    .local v6, resource:Lmiui/app/resourcebrowser/Resource;
    if-eqz v6, :cond_4

    .line 149
    const/4 v7, 0x1

    new-array v7, v7, [Lmiui/app/resourcebrowser/Resource;

    aput-object v6, v7, v8

    invoke-virtual {p1, v7}, Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;->onLoadData([Ljava/lang/Object;)V

    .line 141
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    .end local v0           #dirty:Z
    .end local v2           #folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #resource:Lmiui/app/resourcebrowser/Resource;
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFolder;->reset()V

    goto :goto_1

    .line 129
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFolder;->reset()V

    goto :goto_1

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dirty:Z
    .restart local v2       #folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 154
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 155
    .restart local v5       #path:Ljava/lang/String;
    iget-object v7, v2, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 156
    invoke-virtual {p0, v5}, Lmiui/app/resourcebrowser/ResourceFolder;->removeItem(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    .line 153
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 162
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #path:Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_0

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceFolder;->saveCache()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 165
    :catch_2
    move-exception v1

    .line 166
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected readCache()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mCacheFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x0

    .line 80
    .local v1, objStream:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x4000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v1           #objStream:Ljava/io/ObjectInputStream;
    .local v2, objStream:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/ResourceFolder;->readDataFromStream(Ljava/io/ObjectInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 87
    :cond_0
    return-void

    .line 83
    .end local v2           #objStream:Ljava/io/ObjectInputStream;
    .restart local v1       #objStream:Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    throw v3

    .line 83
    .end local v1           #objStream:Ljava/io/ObjectInputStream;
    .restart local v2       #objStream:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #objStream:Ljava/io/ObjectInputStream;
    .restart local v1       #objStream:Ljava/io/ObjectInputStream;
    goto :goto_0
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
    .line 59
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    .line 60
    return-void
.end method

.method protected removeItem(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath"

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    return-void
.end method

.method protected saveCache()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mCacheFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, objStream:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1           #objStream:Ljava/io/ObjectOutputStream;
    .local v2, objStream:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Lmiui/app/resourcebrowser/ResourceFolder;->writeDataToStream(Ljava/io/ObjectOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 74
    :cond_0
    return-void

    .line 70
    .end local v2           #objStream:Ljava/io/ObjectOutputStream;
    .restart local v1       #objStream:Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v3

    :goto_0
    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_1
    throw v3

    .line 70
    .end local v1           #objStream:Ljava/io/ObjectOutputStream;
    .restart local v2       #objStream:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #objStream:Ljava/io/ObjectOutputStream;
    .restart local v1       #objStream:Ljava/io/ObjectOutputStream;
    goto :goto_0
.end method

.method protected sortResource(Ljava/util/List;Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;)V
    .locals 1
    .parameter
    .parameter "folderInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->isSystemResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFolderPath:Ljava/lang/String;

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->isDataResource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 188
    :goto_0
    return-void

    .line 175
    :cond_1
    new-instance v0, Lmiui/app/resourcebrowser/ResourceFolder$1;

    invoke-direct {v0, p0, p2}, Lmiui/app/resourcebrowser/ResourceFolder$1;-><init>(Lmiui/app/resourcebrowser/ResourceFolder;Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
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
    .line 54
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceFolder;->mFileFlags:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
