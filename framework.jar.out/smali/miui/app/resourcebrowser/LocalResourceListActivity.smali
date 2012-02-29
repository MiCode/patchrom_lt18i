.class public Lmiui/app/resourcebrowser/LocalResourceListActivity;
.super Lmiui/app/resourcebrowser/ResourceListActivity;
.source "LocalResourceListActivity.java"

# interfaces
.implements Lmiui/os/AsyncTaskObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/app/resourcebrowser/ResourceListActivity;",
        "Lmiui/os/AsyncTaskObserver",
        "<",
        "Ljava/lang/Void;",
        "Lmiui/app/resourcebrowser/Resource;",
        "Ljava/util/List",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lmiui/app/resourcebrowser/LocalResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_SUBPACKAGE"

    const-string v2, ".local"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lmiui/app/resourcebrowser/LocalResourceAdapter;

    iget-object v1, p0, Lmiui/app/resourcebrowser/LocalResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1}, Lmiui/app/resourcebrowser/LocalResourceAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 34
    const v0, 0x6030010

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 17
    invoke-super {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget-object v0, Lmiui/app/resourcebrowser/ResourceConstants;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceHelper;->addNoMedia(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lmiui/app/resourcebrowser/ResourceConstants;->MIUI_PATH:Ljava/lang/String;

    sget-object v1, Lmiui/app/resourcebrowser/ResourceConstants;->MIUI_EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const/4 v0, 0x0

    const-string v1, "rm -r %s_data_sdcard_*"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lmiui/app/resourcebrowser/ResourceConstants;->PREVIEW_PATH:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v5, v0, v1, v2}, Lmiui/util/CommandLineUtils;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    .line 24
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->onResume()V

    .line 29
    iget-object v0, p0, Lmiui/app/resourcebrowser/LocalResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->loadData()V

    .line 30
    return-void
.end method
