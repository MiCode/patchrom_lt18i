.class Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;
.super Landroid/os/AsyncTask;
.source "CustomizedSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadDefaultValueTask"
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
.field final synthetic this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 237
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 238
    return-void
.end method

.method private postExecuteSettings(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, settings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x1

    .line 221
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 222
    .local v1, nElements:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 223
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 224
    .local v2, setting:Landroid/content/ContentValues;
    const-string v4, "wifi_on"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 226
    .local v3, value:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->enableWifi()V

    .line 222
    .end local v3           #value:Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v2           #setting:Landroid/content/ContentValues;
    :cond_1
    new-instance v4, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;

    invoke-direct {v4}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;-><init>()V

    new-array v5, v6, [Landroid/content/Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v7}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/sonyericsson/customizedsettings/WifiAPConfigAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method private sendBackupBroadcastIntent()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.settings.BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter

    .prologue
    const/high16 v10, 0x7f03

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 147
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    const v0, 0x7f030002

    invoke-static {v0, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getSettingsToRead(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 150
    invoke-static {v0, v10, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 153
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$100()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 155
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    new-array v6, v9, [Ljava/util/ArrayList;

    aput-object v5, v6, v8

    aput-object v0, v6, v2

    invoke-static {v6}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 164
    :cond_0
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    const v0, 0x7f030001

    invoke-static {v0, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getSettingsToRead(ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    invoke-static {v0, v10, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 170
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$100()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 172
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$100()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 178
    :goto_1
    new-array v5, v9, [Ljava/util/ArrayList;

    aput-object v4, v5, v8

    aput-object v0, v5, v2

    invoke-static {v5}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 181
    :cond_1
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    invoke-static {v0, v4, v5, v3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 184
    :goto_2
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 185
    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    invoke-static {v4, v5, v6, v3}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v3

    .line 186
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->postExecuteSettings(Ljava/util/ArrayList;)V

    .line 189
    :goto_3
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    const-string v3, "BOOTUP"

    invoke-virtual {v0, v3, v8}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const-string v3, "ALREADYBOOTUP"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 197
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sonyericsson/customizedsettings/BootUpReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v3, v9, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 202
    const-string v0, "CustomizedSettings"

    const-string v2, "Disable Boot-completed listener for customizedsettings"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    invoke-static {v1, v1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setCustomInputArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->sendBackupBroadcastIntent()V

    .line 212
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    const-string v6, "CustomizedSettings"

    const-string v7, "Parser Exception "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    .line 173
    :catch_1
    move-exception v0

    .line 175
    const-string v5, "CustomizedSettings"

    const-string v6, "Parser Exception "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->stopSelf()V

    .line 249
    return-void
.end method
