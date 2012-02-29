.class public Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ResourceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadResourceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;


# direct methods
.method public constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 977
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 979
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 980
    .local v4, query:Landroid/app/DownloadManager$Query;
    const-string v6, "extra_download_id"

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 981
    .local v2, id:J
    cmp-long v6, v2, v9

    if-eqz v6, :cond_0

    .line 982
    const/4 v6, 0x1

    new-array v6, v6, [J

    aput-wide v2, v6, v8

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 983
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v6, v6, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v6, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 985
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 986
    invoke-static {v1}, Landroid/app/MiuiDownloadManager;->isDownloadSuccess(Landroid/database/Cursor;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 987
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v7, 0x6090061

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 998
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1002
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:J
    .end local v4           #query:Landroid/app/DownloadManager$Query;
    :cond_0
    return-void

    .line 990
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v2       #id:J
    .restart local v4       #query:Landroid/app/DownloadManager$Query;
    :cond_1
    const-string v6, "local_uri"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 992
    .local v5, storedPath:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    .line 993
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 994
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v6, v6, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mResourceSet:Lmiui/app/resourcebrowser/ResourceSet;

    invoke-static {v5, v6, v8}, Lmiui/app/resourcebrowser/ResourceHelper;->setResourceStatus(Ljava/lang/String;Lmiui/app/resourcebrowser/ResourceSet;I)V

    .line 996
    iget-object v6, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$DownloadResourceReceiver;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v6}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->setResourceStatus()V

    goto :goto_0
.end method
