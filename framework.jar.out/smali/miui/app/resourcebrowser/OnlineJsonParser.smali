.class public Lmiui/app/resourcebrowser/OnlineJsonParser;
.super Ljava/lang/Object;
.source "OnlineJsonParser.java"

# interfaces
.implements Lmiui/app/resourcebrowser/IntentConstants;


# static fields
.field protected static sDefaultParser:Lmiui/app/resourcebrowser/OnlineJsonParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lmiui/app/resourcebrowser/OnlineJsonParser;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/OnlineJsonParser;-><init>()V

    sput-object v0, Lmiui/app/resourcebrowser/OnlineJsonParser;->sDefaultParser:Lmiui/app/resourcebrowser/OnlineJsonParser;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getDefault()Lmiui/app/resourcebrowser/OnlineJsonParser;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lmiui/app/resourcebrowser/OnlineJsonParser;->sDefaultParser:Lmiui/app/resourcebrowser/OnlineJsonParser;

    return-object v0
.end method


# virtual methods
.method protected buildResourceInformation(Lorg/json/JSONObject;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 26
    .parameter "json"
    .parameter "fileHost"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v6, info:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 30
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 31
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 33
    .local v8, key:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;

    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v21

    goto :goto_0

    .line 39
    .end local v8           #key:Ljava/lang/String;
    :cond_0
    const-string v21, "fileHost"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v21, "m_lastupdate"

    const-string v22, "m_lastupdate"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    move-object v0, v6

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    const-string v21, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 43
    .local v18, resourceSetCode:Ljava/lang/String;
    const-string v21, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 45
    .local v17, resourceSetCategory:I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getDownloadURL(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, onlinePath:Ljava/lang/String;
    const-string v21, "online_path"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v21, "com.miui.android.resourcebrowser.DOWNLOAD_FOLDER"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, downloadFolder:Ljava/lang/String;
    invoke-static {v4, v6}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByResource(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, localPath:Ljava/lang/String;
    const-string v21, "local_path"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getPreviewURLs(Landroid/os/Bundle;ILandroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v13

    .line 53
    .local v13, onlinePreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "online_preview"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 56
    .local v16, previewCount:I
    new-instance v10, Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v10, localPreviews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 58
    .local v15, previewBasePath:Ljava/lang/String;
    const/4 v5, 0x0

    .end local p1
    .local v5, i:I
    :goto_1
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 59
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 61
    :cond_1
    const-string v21, "local_preview"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getThumbnailURLs(Landroid/os/Bundle;ILandroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v14

    .line 64
    .local v14, onlineThumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "online_thumbnail"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 66
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 67
    .local v20, thumbnailCount:I
    new-instance v11, Ljava/util/ArrayList;

    move-object v0, v11

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v11, localThumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lmiui/app/resourcebrowser/ResourceConstants;->THUMBNAIL_PATH:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 69
    .local v19, thumbnailBasePath:Ljava/lang/String;
    const/4 v5, 0x0

    .end local p0
    :goto_2
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 70
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/OnlineHelper;->getFilePathByURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 72
    :cond_2
    const-string v21, "local_thumbnail"

    move-object v0, v6

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    return-object v6
.end method

.method protected getDownloadURL(Landroid/os/Bundle;I)Ljava/lang/String;
    .locals 8
    .parameter "info"
    .parameter "resourceSetCategory"

    .prologue
    const-string v5, "extension"

    const-string v7, "."

    const-string/jumbo v6, "url"

    .line 78
    const-string v4, "fileHost"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, baseUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 80
    .local v2, resourceUrl:Ljava/lang/String;
    const-string v3, ""

    .line 81
    .local v3, suffix:Ljava/lang/String;
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 82
    const-string v4, "extension"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, extension:Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v5, "umts_sholes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    const-string v3, "_960_854"

    .line 86
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .end local v1           #extension:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 87
    :cond_1
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    .line 88
    const-string v4, "extension"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .restart local v1       #extension:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    goto :goto_0

    .line 91
    .end local v1           #extension:Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "url"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getImageURLs(Landroid/os/Bundle;ILandroid/os/Bundle;Z)Ljava/util/ArrayList;
    .locals 11
    .parameter "info"
    .parameter "resourceSetCategory"
    .parameter "metaData"
    .parameter "preview"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 105
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v10, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "fileHost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, baseUrl:Ljava/lang/String;
    const-string v0, "extension"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, extension:Ljava/lang/String;
    if-ne p2, v4, :cond_1

    .line 109
    if-eqz p4, :cond_0

    const-string v0, "_640_480"

    move-object v9, v0

    .line 111
    .local v9, suffix:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, relativeUrl:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v8           #relativeUrl:Ljava/lang/String;
    .end local v9           #suffix:Ljava/lang/String;
    :goto_1
    return-object v10

    .line 109
    :cond_0
    const-string v0, "_140_105"

    move-object v9, v0

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "%s%s/%s_"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v3, "preview"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "m_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    if-eqz p4, :cond_2

    .line 117
    const-string v3, "com.miui.android.resourcebrowser.PREVIEW_PREFIX"

    const-string v4, "com.miui.android.resourcebrowser.PREVIEW_PREFIX_INDICATOR"

    const-string v5, "big_"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getImageURLs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 120
    :cond_2
    const-string v3, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX"

    const-string v4, "com.miui.android.resourcebrowser.THUMBNAIL_PREFIX_INDICATOR"

    const-string/jumbo v5, "small_"

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getImageURLs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected getImageURLs(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 13
    .parameter "info"
    .parameter "baseUrl"
    .parameter "prefixKey"
    .parameter "prefixIndicatorKey"
    .parameter "suffix"
    .parameter "extension"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v9, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, prefixArray:[Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, prefixIndicatorArray:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v11, v7

    if-ge v4, v11, :cond_3

    .line 133
    aget-object v11, v7, v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, prefix:Ljava/lang/String;
    const/4 v2, 0x1

    .line 136
    .local v2, count:I
    if-eqz v8, :cond_0

    .line 137
    aget-object v11, v8, v4

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 140
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 146
    .end local v10           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v11, "clock"

    const-string v12, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    move-object/from16 v0, p7

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 147
    const-string p6, "png"

    .line 151
    :goto_2
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v2, :cond_2

    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 141
    .end local v5           #j:I
    .restart local v10       #value:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_1

    .line 149
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v10           #value:Ljava/lang/String;
    :cond_1
    const-string p6, "jpg"

    goto :goto_2

    .line 132
    .end local v2           #count:I
    .end local v6           #prefix:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_3
    return-object v9
.end method

.method protected getPreviewURLs(Landroid/os/Bundle;ILandroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "info"
    .parameter "resourceSetCategory"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getImageURLs(Landroid/os/Bundle;ILandroid/os/Bundle;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getThumbnailURLs(Landroid/os/Bundle;ILandroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1
    .parameter "info"
    .parameter "resourceSetCategory"
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/app/resourcebrowser/OnlineJsonParser;->getImageURLs(Landroid/os/Bundle;ILandroid/os/Bundle;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
