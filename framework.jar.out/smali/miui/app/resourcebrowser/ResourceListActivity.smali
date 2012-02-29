.class public abstract Lmiui/app/resourcebrowser/ResourceListActivity;
.super Landroid/app/Activity;
.source "ResourceListActivity.java"

# interfaces
.implements Lmiui/os/AsyncTaskObserver;
.implements Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;
.implements Lmiui/app/resourcebrowser/IntentConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lmiui/os/AsyncTaskObserver",
        "<",
        "Ljava/lang/Void;",
        "Lmiui/app/resourcebrowser/Resource;",
        "Ljava/util/List",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;>;",
        "Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;",
        "Lmiui/app/resourcebrowser/IntentConstants;"
    }
.end annotation


# instance fields
.field protected mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

.field protected mDisplayType:I

.field protected mDownloadManager:Landroid/app/DownloadManager;

.field protected mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

.field protected mListView:Landroid/widget/ListView;

.field protected mMetaData:Landroid/os/Bundle;

.field protected mProgressBar:Landroid/view/View;

.field protected mResourceSetCategory:I

.field protected mResourceSetCode:Ljava/lang/String;

.field protected mResourceSetName:Ljava/lang/String;

.field protected mResourceSetPackage:Ljava/lang/String;

.field protected mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

.field protected mUsingPicker:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method protected abstract getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;
.end method

.method protected abstract getContentView()I
.end method

.method protected getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResourceDetailActivity()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v2, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 117
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->finish()V

    .line 121
    :cond_0
    return-void
.end method

.method public onCancelled()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getContentView()I

    move-result v3

    invoke-virtual {p0, v3}, Lmiui/app/resourcebrowser/ResourceListActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 57
    const-string v3, "META_DATA"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    .line 59
    :cond_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lmiui/app/resourcebrowser/ResourceListActivity;->pickMetaData(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->setupUI()V

    .line 66
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "android.intent.extra.ringtone.TYPE"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, ringtoneType:I
    if-ltz v2, :cond_2

    .line 68
    invoke-static {p0, v2}, Lmiui/app/resourcebrowser/ResourceHelper;->setMusicVolumeType(Landroid/app/Activity;I)V

    .line 71
    :cond_2
    const-string v3, "download"

    invoke-virtual {p0, v3}, Lmiui/app/resourcebrowser/ResourceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDownloadManager:Landroid/app/DownloadManager;

    .line 72
    new-instance v3, Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

    invoke-direct {v3, p0}, Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;-><init>(Lmiui/app/resourcebrowser/ResourceListActivity;)V

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

    invoke-virtual {p0, v3, v0}, Lmiui/app/resourcebrowser/ResourceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-static {p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lmiui/app/resourcebrowser/SDCardMonitor;

    move-result-object v3

    iput-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    .line 78
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-virtual {v3, p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->addListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDownloadResourceReceiver:Lmiui/app/resourcebrowser/ResourceListActivity$DownloadResourceReceiver;

    invoke-virtual {p0, v0}, Lmiui/app/resourcebrowser/ResourceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mSDCardMonitor:Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-virtual {v0, p0}, Lmiui/app/resourcebrowser/SDCardMonitor;->removeListener(Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;)V

    .line 112
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->stopMusic()V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 96
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
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
    .line 214
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mProgressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    check-cast p1, [Lmiui/app/resourcebrowser/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceListActivity;->onProgressUpdate([Lmiui/app/resourcebrowser/Resource;)V

    return-void
.end method

.method public varargs onProgressUpdate([Lmiui/app/resourcebrowser/Resource;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 219
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v4, "com.miui.android.resourcebrowser.CURRENT_USING_PATH"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->setCurrentUsingPath(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->notifyDataSetChanged()V

    .line 86
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, folders:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 88
    aget-object v2, v0, v1

    invoke-static {v2}, Lmiui/app/resourcebrowser/ResourceHelper;->refreshFolderInfoCache(Ljava/lang/String;)Z

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 0
    .parameter "mount"

    .prologue
    .line 228
    invoke-static {p0}, Lmiui/app/resourcebrowser/ResourceHelper;->exit(Landroid/app/Activity;)V

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->onStop()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 102
    return-void
.end method

.method protected pickMetaData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "metaData"

    .prologue
    .line 124
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mResourceSetPackage:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mResourceSetCode:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mResourceSetName:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mResourceSetCategory:I

    .line 128
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDisplayType:I

    .line 129
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v1, "com.miui.android.resourcebrowser.USING_PICKER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mUsingPicker:Z

    .line 130
    return-void
.end method

.method protected setupUI()V
    .locals 3

    .prologue
    .line 133
    const v1, 0x60d002b

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mListView:Landroid/widget/ListView;

    .line 134
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, header:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getAdapter()Lmiui/app/resourcebrowser/ResourceAdapter;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    .line 139
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 141
    iget v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mDisplayType:I

    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->isCombineView(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lmiui/app/resourcebrowser/ResourceListActivity$1;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/ResourceListActivity$1;-><init>(Lmiui/app/resourcebrowser/ResourceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    :cond_1
    const v1, 0x60d002c

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mProgressBar:Landroid/view/View;

    .line 150
    return-void
.end method

.method public startDetailActivityForResource(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceListActivity;->getResourceDetailActivity()Landroid/util/Pair;

    move-result-object v0

    .line 159
    .local v0, activityClass:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    const-string v3, "com.miui.android.resourcebrowser.RESOURCE_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v2, "META_DATA"

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceListActivity;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lmiui/app/resourcebrowser/ResourceListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    return-void
.end method
