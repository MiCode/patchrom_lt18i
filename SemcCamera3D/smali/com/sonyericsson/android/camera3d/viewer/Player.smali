.class public Lcom/sonyericsson/android/camera3d/viewer/Player;
.super Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;
.source "Player.java"


# static fields
.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String; = "Player"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Player;->getController()Lcom/sonyericsson/android/camera3d/viewer/AppController;

    move-result-object v0

    .line 49
    .local v0, controller:Lcom/sonyericsson/android/camera3d/viewer/AppController;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->hasLayer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/Player;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/Player;->mDataStore:Lcom/sonyericsson/android/camera3d/viewer/DataStore;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->play(I)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->play(I)V

    goto :goto_0
.end method

.method protected setupConfig(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Landroid/content/Intent;I)V
    .locals 12
    .parameter "dataStore"
    .parameter "intent"
    .parameter "photoStackNum"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Player;->getController()Lcom/sonyericsson/android/camera3d/viewer/AppController;

    move-result-object v0

    .line 65
    .local v0, controller:Lcom/sonyericsson/android/camera3d/viewer/AppController;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->closeLayers()V

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v4

    .line 70
    .local v4, mpoProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMpoReader()Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;

    move-result-object v5

    .line 72
    .local v5, mpoReader:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 73
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_8

    .line 74
    const-string v9, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 80
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->select(J)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v6

    .line 81
    .local v6, result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    if-eqz v6, :cond_3

    .line 82
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;->get(I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v3

    .line 83
    .local v3, mpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    if-eqz v3, :cond_2

    .line 84
    iget-object v9, v3, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;->mMpoType:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    invoke-static {v4, v9, v8, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    .end local v3           #mpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .end local v6           #result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->hasMpoInfoQuery()Z

    move-result v9

    if-nez v9, :cond_1

    .line 146
    sget-object v9, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    invoke-static {v4, v9, v8, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V

    .line 152
    :cond_1
    return-void

    .line 90
    .restart local v3       #mpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .restart local v6       #result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :cond_2
    :try_start_1
    const-string v9, "Player"

    const-string v10, "  failed to find the specified content.  cause:not exist"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 100
    .end local v3           #mpoInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    .end local v6           #result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v9, "Player"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  failed to find the specified content.  cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :cond_3
    :try_start_2
    const-string v9, "Player"

    const-string v10, "  failed to find the specified content.  cause:the query returns null"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 105
    .end local v6           #result:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v9, "Player"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  failed to find the specified content.  cause:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 116
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;->open(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    move-result-object v2

    .line 117
    .local v2, file:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
    if-eqz v2, :cond_6

    .line 118
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;->getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v7

    .line 119
    .local v7, type:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    sget-object v9, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-eq v7, v9, :cond_5

    .line 120
    invoke-static {v4, v7, v8, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V

    goto/16 :goto_0

    .line 126
    :cond_5
    const-string v9, "Player"

    const-string v10, "  the specified file is unknown mpo type."

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .end local v7           #type:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    :cond_6
    const-string v9, "Player"

    const-string v10, "  can\'t open the specified file."

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    .end local v2           #file:Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
    :cond_7
    const-string v9, "Player"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  the specified scheme is unknown. scheme:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :cond_8
    const-string v9, "Player"

    const-string v10, "  not specify uri by intent."

    invoke-static {v9, v10}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
