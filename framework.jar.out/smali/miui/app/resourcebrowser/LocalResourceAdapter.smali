.class public Lmiui/app/resourcebrowser/LocalResourceAdapter;
.super Lmiui/app/resourcebrowser/ResourceAdapter;
.source "LocalResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;,
        Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;
    }
.end annotation


# instance fields
.field private mVisitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "metaData"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mVisitors:Ljava/util/List;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lmiui/app/resourcebrowser/LocalResourceAdapter;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->checkVersionStatus(Ljava/util/List;)V

    return-void
.end method

.method private checkVersionStatus(Ljava/util/List;)V
    .locals 27
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
    .line 99
    .local p1, resources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, checkableResources:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 101
    .local v17, sb:Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 102
    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/app/resourcebrowser/Resource;

    .line 103
    .local v16, resource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual/range {v16 .. v16}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmiui/app/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 104
    .local v9, idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_0

    .line 105
    invoke-virtual/range {v16 .. v16}, Lmiui/app/resourcebrowser/Resource;->getInformation()Landroid/os/Bundle;

    move-result-object v10

    .line 106
    .local v10, info:Landroid/os/Bundle;
    const-string/jumbo v21, "x_id"

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, v21

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v21, "version"

    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/Resource;->setInformation(Landroid/os/Bundle;)V

    .line 110
    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v21, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    .end local v10           #info:Landroid/os/Bundle;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 115
    .end local v9           #idVersion:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16           #resource:Lmiui/app/resourcebrowser/Resource;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 146
    :cond_2
    :goto_1
    return-void

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    const-string v22, "com.miui.android.resourcebrowser.VERSION_URL"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v25

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lmiui/app/resourcebrowser/OnlineHelper;->getEncryptedURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 120
    .local v20, url:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lmiui/app/resourcebrowser/ResourceConstants;->VERSION_PATH:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mResourceSetCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, directory:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, filePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->readSpecifiedResources(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v18

    .line 125
    .local v18, specifiedResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    const/4 v8, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 126
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/resourcebrowser/Resource;

    .line 127
    .local v3, checkableResource:Lmiui/app/resourcebrowser/Resource;
    invoke-virtual {v3}, Lmiui/app/resourcebrowser/Resource;->getId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/app/resourcebrowser/Resource;

    .line 128
    .local v11, matchedResource:Lmiui/app/resourcebrowser/Resource;
    if-eqz v11, :cond_5

    .line 129
    invoke-virtual {v3}, Lmiui/app/resourcebrowser/Resource;->getVersion()I

    move-result v21

    invoke-virtual {v11}, Lmiui/app/resourcebrowser/Resource;->getVersion()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 130
    const/16 v21, 0x1

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/Resource;->setStatus(I)V

    .line 132
    :cond_4
    invoke-static {v11, v3}, Lmiui/app/resourcebrowser/ResourceHelper;->copyResourceInformation(Lmiui/app/resourcebrowser/Resource;Lmiui/app/resourcebrowser/Resource;)V

    .line 125
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 135
    .end local v3           #checkableResource:Lmiui/app/resourcebrowser/Resource;
    .end local v11           #matchedResource:Lmiui/app/resourcebrowser/Resource;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->notifyDataSetChanged()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 137
    .local v14, now:J
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 138
    .local v12, modifiedTime:J
    sub-long v21, v14, v12

    const-wide/32 v23, 0x927c0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_2

    .line 143
    .end local v12           #modifiedTime:J
    .end local v14           #now:J
    .end local v18           #specifiedResources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lmiui/app/resourcebrowser/Resource;>;"
    :cond_7
    new-instance v19, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;-><init>(Lmiui/app/resourcebrowser/LocalResourceAdapter;)V

    .line 144
    .local v19, task:Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->setTargetDirectory(Ljava/lang/String;)V

    .line 145
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v20, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/LocalResourceAdapter$DownloadVersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkResourceModifyTime()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected getFlagId(Lmiui/app/resourcebrowser/Resource;)I
    .locals 2
    .parameter "resourceItem"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceAdapter;->getFlagId(Lmiui/app/resourcebrowser/Resource;)I

    move-result v0

    .line 33
    .local v0, flag:I
    const v1, 0x6020234

    if-ne v0, v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :cond_0
    return v0
.end method

.method protected getLoadDataTask()Lmiui/widget/AsyncAdapter$AsyncLoadDataTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/widget/AsyncAdapter",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">.Async",
            "LoadDataTask;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;

    invoke-direct {v1, p0}, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;-><init>(Lmiui/app/resourcebrowser/LocalResourceAdapter;)V

    .line 43
    .local v1, task:Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;
    iget-object v3, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mContext:Landroid/app/Activity;

    check-cast v3, Lmiui/os/AsyncTaskObserver;

    invoke-virtual {v1, v3}, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;->addObserver(Lmiui/os/AsyncTaskObserver;)V

    .line 44
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getVisitors()Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, visitors:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/Resource;>;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 46
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    invoke-virtual {v1, p0}, Lmiui/app/resourcebrowser/LocalResourceAdapter$AsyncLoadResourceTask;->addVisitor(Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method

.method protected getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;
    .locals 3
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, result:Lmiui/app/resourcebrowser/ResourceFolder;
    iget v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mResourceSetCategory:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v0, Lmiui/app/resourcebrowser/ImageResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/ResourceFolder;
    iget-object v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/resourcebrowser/ImageResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 88
    .restart local v0       #result:Lmiui/app/resourcebrowser/ResourceFolder;
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mResourceSetCategory:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 84
    new-instance v0, Lmiui/app/resourcebrowser/AudioResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/ResourceFolder;
    iget-object v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/resourcebrowser/AudioResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .restart local v0       #result:Lmiui/app/resourcebrowser/ResourceFolder;
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lmiui/app/resourcebrowser/ZipResourceFolder;

    .end local v0           #result:Lmiui/app/resourcebrowser/ResourceFolder;
    iget-object v1, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2, p1}, Lmiui/app/resourcebrowser/ZipResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .restart local v0       #result:Lmiui/app/resourcebrowser/ResourceFolder;
    goto :goto_0
.end method

.method protected getVisitors()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mVisitors:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mVisitors:Ljava/util/List;

    .line 76
    :goto_0
    return-object v4

    .line 63
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v3, visitors:Ljava/util/List;,"Ljava/util/List<Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor<Lmiui/app/resourcebrowser/Resource;>;>;"
    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v5, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, folders:[Ljava/lang/String;
    iget v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mResourceSetCategory:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 66
    new-instance v0, Lmiui/app/resourcebrowser/AudioResourceFolder;

    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mContext:Landroid/app/Activity;

    iget-object v5, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Lmiui/app/resourcebrowser/AudioResourceFolder;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 67
    .local v0, folder:Lmiui/app/resourcebrowser/AudioResourceFolder;
    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v5, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/AudioResourceFolder;->enableMuteOption(Z)V

    .line 68
    iget-object v4, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/AudioResourceFolder;->enableDefaultOption(Z)V

    .line 69
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v0           #folder:Lmiui/app/resourcebrowser/AudioResourceFolder;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    .line 72
    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->getVisitor(Ljava/lang/String;)Lmiui/widget/AsyncAdapter$AsyncLoadDataVisitor;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_2
    iput-object v3, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mVisitors:Ljava/util/List;

    move-object v4, v3

    .line 76
    goto :goto_0
.end method

.method protected postLoadData(Ljava/util/List;)V
    .locals 2
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
    .line 93
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/LocalResourceAdapter;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;->checkVersionStatus(Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method
