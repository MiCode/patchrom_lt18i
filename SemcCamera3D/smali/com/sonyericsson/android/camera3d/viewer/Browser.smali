.class public Lcom/sonyericsson/android/camera3d/viewer/Browser;
.super Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;
.source "Browser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Browser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onResume()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/sonyericsson/android/camera3d/viewer/ViewerActivity;->onResume()V

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->getController()Lcom/sonyericsson/android/camera3d/viewer/AppController;

    move-result-object v0

    .line 42
    .local v0, controller:Lcom/sonyericsson/android/camera3d/viewer/AppController;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->hasLayer()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->browse()V

    .line 47
    :cond_0
    return-void
.end method

.method protected setupConfig(Lcom/sonyericsson/android/camera3d/viewer/DataStore;Landroid/content/Intent;I)V
    .locals 9
    .parameter "dataStore"
    .parameter "intent"
    .parameter "photoStackNum"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getProvider()Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v3

    .line 54
    .local v3, mpoProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->getMode()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    move-result-object v5

    .line 57
    .local v5, prevMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    const-string v6, "com.sonyericsson.android.camera3d.extra.browsingMode"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, extraData:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 64
    .local v2, info:Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 65
    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "mode"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    const-string v6, "Browser"

    const-string v7, "######   not specified mode by intent."

    invoke-static {v6, v7}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    const/4 v4, 0x0

    .line 76
    .local v4, nextMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    if-eqz v1, :cond_2

    .line 77
    const-string v6, "MULTI_ANGLE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 78
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->MULTIANGLE:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 95
    :cond_2
    :goto_1
    if-ne v5, v4, :cond_5

    .line 118
    :goto_2
    return-void

    .line 80
    :cond_3
    const-string v6, "PANORAMA_3D"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_1

    .line 86
    :cond_4
    sget-object v4, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->PANORAMA3D:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->getController()Lcom/sonyericsson/android/camera3d/viewer/AppController;

    move-result-object v0

    .line 102
    .local v0, controller:Lcom/sonyericsson/android/camera3d/viewer/AppController;
    if-eqz v0, :cond_6

    .line 103
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/AppController;->closeLayers()V

    .line 106
    :cond_6
    if-eqz v4, :cond_7

    sget-object v6, Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;->UNKNOWN:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    if-eq v4, v6, :cond_7

    .line 109
    invoke-static {v3, v4, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sonyericsson/android/camera3d/viewer/DataStore;->setMpoInfoQuery(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;)V

    .line 111
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->storePreviousMode(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V

    goto :goto_2

    .line 116
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/viewer/Browser;->restorePreviousMode(Lcom/sonyericsson/android/camera3d/viewer/DataStore;)V

    goto :goto_2

    .line 68
    .end local v0           #controller:Lcom/sonyericsson/android/camera3d/viewer/AppController;
    .end local v4           #nextMode:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    :catch_0
    move-exception v6

    goto :goto_0
.end method
