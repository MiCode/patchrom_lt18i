.class public Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler$CatchingWorkerHandler;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen$QueryHandler;

    .line 1414
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 1415
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const-string v3, "LockScreen"

    const-string v2, "Exception on background worker thread"

    .line 1421
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler$WorkerHandler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1429
    :goto_0
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "LockScreen"

    const-string v1, "Exception on background worker thread"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1424
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 1425
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "LockScreen"

    const-string v1, "Exception on background worker thread"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1426
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v0

    .line 1427
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v1, "LockScreen"

    const-string v1, "Exception on background worker thread"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
