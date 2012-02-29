.class public Landroid/app/MiuiDownloadManager;
.super Landroid/app/DownloadManager;
.source "MiuiDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MiuiDownloadManager$CursorTranslator;,
        Landroid/app/MiuiDownloadManager$Query;,
        Landroid/app/MiuiDownloadManager$Request;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_UPDATED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATED"

.field public static final ACTION_OPERATE_DOWNLOADSET_UPDATE_PROGRESS:Ljava/lang/String; = "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

.field private static final DOWNLOAD_UPDATE_RECEIVER_COMPONENT:Landroid/content/ComponentName; = null

.field public static final EXTRA_DOWNLOAD_CURRENT_BYTES:Ljava/lang/String; = "extra_download_current_bytes"

.field public static final EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "extra_download_status"

.field public static final EXTRA_DOWNLOAD_TOTAL_BYTES:Ljava/lang/String; = "extra_download_total_bytes"

.field public static final INTENT_EXTRA_APPLICATION_PACKAGENAME:Ljava/lang/String; = "intent_extra_application_packagename"

.field public static final INTENT_EXTRA_REGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_register_downloads_update_progress"

.field public static final INTENT_EXTRA_UNREGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_unregister_downloads_update_progress"

.field public static final PAUSED_BY_APP:I = 0x5


# instance fields
.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadUpdateReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/MiuiDownloadManager;->DOWNLOAD_UPDATE_RECEIVER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "packageName"

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Landroid/app/MiuiDownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 238
    return-void
.end method

.method public static isDownloadSuccess(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    .line 311
    move-object v0, p0

    check-cast v0, Landroid/app/MiuiDownloadManager$CursorTranslator;

    move-object v1, v0

    .line 312
    .local v1, cusorTranslator:Landroid/app/MiuiDownloadManager$CursorTranslator;
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Landroid/app/MiuiDownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/MiuiDownloadManager$CursorTranslator;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDownloading(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, ret:Z
    move-object v0, p0

    check-cast v0, Landroid/app/MiuiDownloadManager$CursorTranslator;

    move-object v1, v0

    .line 300
    .local v1, cusorTranslator:Landroid/app/MiuiDownloadManager$CursorTranslator;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/MiuiDownloadManager$CursorTranslator;->getInt(I)I

    move-result v3

    .line 301
    .local v3, status:I
    packed-switch v3, :pswitch_data_0

    .line 307
    :goto_0
    return v2

    .line 304
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static operateDownloadsNeedToUpdateProgress(Landroid/content/Context;[J[J)V
    .locals 2
    .parameter "context"
    .parameter "registerIds"
    .parameter "unregisterIds"

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPERATE_DOWNLOADSET_UPDATE_PROGRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/app/MiuiDownloadManager;->DOWNLOAD_UPDATE_RECEIVER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const-string v1, "intent_extra_register_downloads_update_progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 69
    const-string v1, "intent_extra_unregister_downloads_update_progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method


# virtual methods
.method public varargs pauseDownload([J)V
    .locals 7
    .parameter "ids"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v5, "status"

    .line 254
    new-instance v3, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v3}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 258
    .local v1, status:I
    if-eq v1, v4, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot pause non-running or non-pending download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 256
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    .end local v1           #status:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 267
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v2, values:Landroid/content/ContentValues;
    const-string/jumbo v3, "status"

    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v3, "control"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    iget-object v3, p0, Landroid/app/MiuiDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/MiuiDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/MiuiDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/MiuiDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 4
    .parameter "query"

    .prologue
    .line 242
    iget-object v1, p0, Landroid/app/MiuiDownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/MiuiDownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/MiuiDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    .local v0, underlyingCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 246
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/MiuiDownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/MiuiDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/MiuiDownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public varargs resumeDownload([J)V
    .locals 7
    .parameter "ids"

    .prologue
    const-string/jumbo v4, "status"

    .line 278
    new-instance v3, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v3}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 281
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 282
    .local v1, status:I
    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 283
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot resume non-paused download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v1           #status:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 280
    .restart local v1       #status:I
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v1           #status:I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 292
    .local v2, values:Landroid/content/ContentValues;
    const-string/jumbo v3, "status"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v3, "control"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    iget-object v3, p0, Landroid/app/MiuiDownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/MiuiDownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/MiuiDownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/MiuiDownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    return-void
.end method
