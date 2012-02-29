.class Lcom/android/server/WallpaperManagerService$2;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 7
    .parameter "event"
    .parameter "path"

    .prologue
    .line 144
    if-nez p2, :cond_0

    .line 163
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_TMP_DIR:Ljava/io/File;

    invoke-direct {v1, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v1, changedFile:Ljava/io/File;
    sget-object v5, Lcom/android/server/WallpaperManagerService;->WALLPAPER_FILE:Ljava/io/File;

    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 153
    .local v2, origId:J
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v5, v5, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, bm:Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 155
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    #calls: Lcom/android/server/WallpaperManagerService;->notifyCallbacksLocked()V
    invoke-static {v5}, Lcom/android/server/WallpaperManagerService;->access$000(Lcom/android/server/WallpaperManagerService;)V

    .line 162
    .end local v0           #bm:Landroid/app/backup/BackupManager;
    .end local v2           #origId:J
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v1           #changedFile:Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 159
    .restart local v1       #changedFile:Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v5, "WallpaperService"

    const-string v6, "Wallpaper file change failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
