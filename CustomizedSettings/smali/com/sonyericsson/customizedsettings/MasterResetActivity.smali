.class public Lcom/sonyericsson/customizedsettings/MasterResetActivity;
.super Landroid/app/Activity;
.source "MasterResetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->setAirplaneModeOff()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->startRebootActivity()V

    return-void
.end method

.method private setAirplaneModeOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method private startRebootActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    const-string v1, "interval"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v4, "android.permission.MASTER_CLEAR"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string v4, "Master Reset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission Denial: can\'t invoke masterClear from pid="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "uid="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4}, Ljava/lang/SecurityException;-><init>()V

    throw v4

    .line 53
    :cond_0
    const/high16 v4, 0x7f02

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->setContentView(I)V

    .line 55
    const v4, 0x7f060002

    invoke-virtual {p0, v4}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    .line 56
    .local v8, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v8, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 57
    const/16 v4, 0x64

    invoke-virtual {v8, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 58
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/ProgressBar;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v6

    .line 61
    .local v6, data:Ljava/lang/Object;
    if-eqz v6, :cond_1

    check-cast v6, Ljava/lang/Integer;

    .end local v6           #data:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 62
    .local v7, progress:I
    :cond_1
    new-instance v1, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;

    invoke-direct {v1, v8, v7}, Lcom/sonyericsson/customizedsettings/ProgressUpdateTask;-><init>(Landroid/widget/ProgressBar;I)V

    .line 68
    .local v1, timerTask:Ljava/util/TimerTask;
    const-wide/16 v2, 0x64

    .line 70
    .local v2, updateTime:J
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .local v0, timer:Ljava/util/Timer;
    move-wide v4, v2

    .line 72
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 75
    new-instance v4, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/customizedsettings/MasterResetActivity$1;-><init>(Lcom/sonyericsson/customizedsettings/MasterResetActivity;)V

    const-wide/16 v9, 0x2710

    invoke-virtual {v0, v4, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 95
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 104
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/sonyericsson/customizedsettings/MasterResetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 105
    .local v0, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method
