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
.field private final mContext:Landroid/content/Context;

.field private mState:Lcom/sonyericsson/customizedsettings/PersistentState;

.field private mTagVersion:I

.field final synthetic this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    .line 112
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method private enableWifi()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 223
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 224
    return-void
.end method

.method private handleCustomizedSettings()Z
    .locals 13

    .prologue
    .line 137
    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    .local v1, ctx:Landroid/content/Context;
    const/4 v6, 0x0

    .line 140
    .local v6, isSysSetOk:Z
    const/4 v5, 0x0

    .line 142
    .local v5, isSecSetOk:Z
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    .line 143
    new-instance v8, Lcom/sonyericsson/customizedsettings/SettingsParser;

    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    invoke-virtual {v10}, Lcom/sonyericsson/customizedsettings/PersistentState;->getTagVersion()I

    move-result v10

    invoke-direct {v8, v1, v10}, Lcom/sonyericsson/customizedsettings/SettingsParser;-><init>(Landroid/content/Context;I)V

    .line 144
    .local v8, sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    const v10, 0x7f030002

    invoke-virtual {v8, v10}, Lcom/sonyericsson/customizedsettings/SettingsParser;->getSettingsToRead(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 146
    .local v9, systemSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    invoke-virtual {v8}, Lcom/sonyericsson/customizedsettings/SettingsParser;->getReadTagVersion()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    .line 147
    const/high16 v10, 0x7f03

    invoke-static {v9, v10, v1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 149
    .local v3, defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .line 150
    .local v2, customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    :cond_0
    :goto_0
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/util/ArrayList;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 161
    .end local v2           #customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8           #sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    .end local v9           #systemSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_3

    .line 162
    new-instance v8, Lcom/sonyericsson/customizedsettings/SettingsParser;

    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    invoke-virtual {v10}, Lcom/sonyericsson/customizedsettings/PersistentState;->getTagVersion()I

    move-result v10

    invoke-direct {v8, v1, v10}, Lcom/sonyericsson/customizedsettings/SettingsParser;-><init>(Landroid/content/Context;I)V

    .line 163
    .restart local v8       #sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    const v10, 0x7f030001

    invoke-virtual {v8, v10}, Lcom/sonyericsson/customizedsettings/SettingsParser;->getSettingsToRead(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 165
    .local v7, secureSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    invoke-virtual {v8}, Lcom/sonyericsson/customizedsettings/SettingsParser;->getReadTagVersion()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    .line 167
    const/high16 v10, 0x7f03

    invoke-static {v7, v10, v1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsFromXml(Ljava/util/ArrayList;ILandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 169
    .restart local v3       #defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .line 170
    .restart local v2       #customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 172
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->parseSettingsWithUri(Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 178
    :cond_2
    :goto_1
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/util/ArrayList;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->combineSettings([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 181
    .end local v2           #customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7           #secureSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    :cond_3
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 182
    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$200()Ljava/util/ArrayList;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->SYSTEM:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    invoke-static {v10, v11, v12, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$400(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v6

    .line 186
    :goto_2
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 187
    iget-object v10, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300()Ljava/util/ArrayList;

    move-result-object v11

    sget-object v12, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;->SECURE:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;

    #calls: Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setValuesIntoSystem(Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z
    invoke-static {v10, v11, v12, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$400(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/util/ArrayList;Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$Setting_Provider;Landroid/content/ContentResolver;)Z

    move-result v5

    .line 188
    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$300()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->postExecuteSettings(Ljava/util/ArrayList;)V

    .line 196
    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->setCustomInputArrays(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 198
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    const/4 v10, 0x1

    :goto_4
    return v10

    .line 153
    .restart local v2       #customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v3       #defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8       #sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    .restart local v9       #systemSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 155
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "CustomizedSettings"

    const-string v11, "Parser Exception "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 173
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #systemSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #secureSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 175
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v10, "CustomizedSettings"

    const-string v11, "Parser Exception "

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 184
    .end local v2           #customSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v3           #defaultSettings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #secureSettingsToRead:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #sp:Lcom/sonyericsson/customizedsettings/SettingsParser;
    :cond_4
    const/4 v6, 0x1

    goto :goto_2

    .line 190
    :cond_5
    const/4 v5, 0x1

    goto :goto_3

    .line 198
    :cond_6
    const/4 v10, 0x0

    goto :goto_4
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

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 208
    .local v1, nElements:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 209
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 210
    .local v2, setting:Landroid/content/ContentValues;
    const-string v4, "wifi_on"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const-string v4, "value"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 212
    .local v3, value:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->enableWifi()V

    .line 208
    .end local v3           #value:Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
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

    .line 219
    return-void
.end method

.method private sendBackupBroadcastIntent()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.settings.BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "arg"

    .prologue
    .line 118
    new-instance v3, Lcom/sonyericsson/customizedsettings/PersistentState;

    iget-object v4, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonyericsson/customizedsettings/PersistentState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    .line 119
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-static {}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$000()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->getCustomizationVersion(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->access$100(Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;Ljava/lang/String;)I

    move-result v0

    .line 120
    .local v0, cmzVersion:I
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    invoke-virtual {v3}, Lcom/sonyericsson/customizedsettings/PersistentState;->getCustomizationVersion()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    invoke-virtual {v3}, Lcom/sonyericsson/customizedsettings/PersistentState;->getCustomizationVersion()I

    move-result v2

    .line 122
    .local v2, prevCmzVersion:I
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    invoke-virtual {v3}, Lcom/sonyericsson/customizedsettings/PersistentState;->getTagVersion()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    .line 123
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->handleCustomizedSettings()Z

    move-result v1

    .line 124
    .local v1, isOk:Z
    if-eqz v1, :cond_0

    .line 125
    iget-object v3, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mState:Lcom/sonyericsson/customizedsettings/PersistentState;

    iget v4, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->mTagVersion:I

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/customizedsettings/PersistentState;->setState(II)V

    .line 127
    :cond_0
    if-gtz v2, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->sendBackupBroadcastIntent()V

    .line 133
    .end local v1           #isOk:Z
    .end local v2           #prevCmzVersion:I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService$ReadDefaultValueTask;->this$0:Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;

    invoke-virtual {v0}, Lcom/sonyericsson/customizedsettings/CustomizedSettingsService;->stopSelf()V

    .line 235
    return-void
.end method
