.class Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;
.super Landroid/os/AsyncTask;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreDefaultValueTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

.field final synthetic this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/customizedsettings/MasterResetService;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "tableName"

    .prologue
    const/4 v8, 0x0

    .line 444
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 445
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 454
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v1

    .line 449
    :catch_0
    move-exception v1

    move-object v1, v8

    .line 454
    goto :goto_0
.end method

.method private resetPatternScreenLockSettings()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.selectedquestion"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    return-void
.end method

.method private restore()V
    .locals 9

    .prologue
    .line 389
    new-instance v4, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v6, "DefaultValue.db"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    .line 391
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    if-nez v4, :cond_0

    .line 430
    :goto_0
    return-void

    .line 396
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 397
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->isDefaultValuesBackuped(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v4, v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$000(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 400
    const-string v4, "DefaultSystemValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 401
    .local v3, systemCursor:Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 402
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v3, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_1
    const-string v4, "DefaultSecureValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 408
    .local v2, secureCursor:Landroid/database/Cursor;
    if-eqz v2, :cond_2

    .line 409
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v2, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V

    .line 410
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_2
    const-string v4, "DefaultRingtoneValue"

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->getCursorFromDatabase(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 415
    .local v1, ringtoneCursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 417
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v5, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesToSettings(Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    invoke-static {v4, v1, v5}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$100(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/Cursor;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    .end local v1           #ringtoneCursor:Landroid/database/Cursor;
    .end local v2           #secureCursor:Landroid/database/Cursor;
    .end local v3           #systemCursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    goto :goto_0

    .line 418
    .restart local v1       #ringtoneCursor:Landroid/database/Cursor;
    .restart local v2       #secureCursor:Landroid/database/Cursor;
    .restart local v3       #systemCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 423
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 428
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #ringtoneCursor:Landroid/database/Cursor;
    .end local v2           #secureCursor:Landroid/database/Cursor;
    .end local v3           #systemCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    throw v4

    .line 423
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #ringtoneCursor:Landroid/database/Cursor;
    .restart local v2       #secureCursor:Landroid/database/Cursor;
    .restart local v3       #systemCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private restoreDefaultApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v1}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$200()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 378
    const-class v1, Lcom/sonyericsson/customizedsettings/MasterResetService;

    monitor-enter v1

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->restore()V

    .line 380
    monitor-exit v1

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 367
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 436
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->restoreDefaultApn()V

    .line 437
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->resetPatternScreenLockSettings()V

    .line 438
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sonyericsson/customizedsettings/MasterResetChecker;->setResetDone(Z)V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$RestoreDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->stopSelf()V

    .line 440
    return-void
.end method
