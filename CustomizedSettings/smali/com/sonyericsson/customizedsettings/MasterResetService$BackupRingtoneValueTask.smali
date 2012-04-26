.class Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;
.super Landroid/os/AsyncTask;
.source "MasterResetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/MasterResetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupRingtoneValueTask"
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
    .line 536
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private backupRingtone()V
    .locals 8

    .prologue
    .line 556
    new-instance v3, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v5, "DefaultValue.db"

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    .line 558
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    if-nez v3, :cond_0

    .line 573
    :goto_0
    return-void

    .line 562
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 565
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const v4, 0x7f030005

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->loadSettingNameList(I)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$300(Lcom/sonyericsson/customizedsettings/MasterResetService;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 566
    .local v1, ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    sget-object v4, Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->readDefaultValuesFromSettings(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;
    invoke-static {v3, v1, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$400(Lcom/sonyericsson/customizedsettings/MasterResetService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/MasterResetService$Settings_Provider;)Ljava/util/ArrayList;

    move-result-object v2

    .line 569
    .local v2, ringtoneSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    const-string v4, "DefaultRingtoneValue"

    #calls: Lcom/sonyericsson/customizedsettings/MasterResetService;->writeDefaultValuesDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v3, v0, v2, v4}, Lcom/sonyericsson/customizedsettings/MasterResetService;->access$500(Lcom/sonyericsson/customizedsettings/MasterResetService;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    goto :goto_0

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #ringtoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #ringtoneSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->mDatabaseHelper:Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sonyericsson/customizedsettings/MasterResetService$DatabaseHelper;->close()V

    throw v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 545
    const-class v1, Lcom/sonyericsson/customizedsettings/MasterResetService;

    monitor-enter v1

    .line 546
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->backupRingtone()V

    .line 547
    monitor-exit v1

    .line 552
    const/4 v0, 0x0

    return-object v0

    .line 547
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
    .line 536
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter

    .prologue
    .line 577
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 581
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/customizedsettings/MediaScannerReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 586
    const-string v0, "Master Reset"

    const-string v1, "Disable MediaScannerReceiver for customizedsettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/MasterResetService$BackupRingtoneValueTask;->this$0:Lcom/sonyericsson/customizedsettings/MasterResetService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/MasterResetService;->stopSelf()V

    .line 589
    return-void
.end method
