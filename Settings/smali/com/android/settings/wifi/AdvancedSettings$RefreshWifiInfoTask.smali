.class Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;
.super Landroid/os/AsyncTask;
.source "AdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshWifiInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/AdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/AdvancedSettings;Lcom/android/settings/wifi/AdvancedSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;-><init>(Lcom/android/settings/wifi/AdvancedSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;
    .locals 4
    .parameter "params"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/AdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 346
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 347
    .local v0, info:Landroid/net/wifi/WifiInfo;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/wifi/WifiInfo;)V
    .locals 14
    .parameter "wifiInfo"

    .prologue
    const-wide/16 v8, 0x0

    const v13, 0x7f080218

    const-wide/16 v11, 0xff

    .line 352
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    const-string v7, "mac_address"

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 353
    .local v5, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez p1, :cond_2

    const/4 v6, 0x0

    move-object v3, v6

    .line 354
    .local v3, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    const-string v7, "current_ip_address"

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 358
    .local v4, wifiIpAddressPref:Landroid/preference/Preference;
    const/4 v2, 0x0

    .line 359
    .local v2, ipAddress:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 360
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    int-to-long v0, v6

    .line 361
    .local v0, addr:J
    cmp-long v6, v0, v8

    if-eqz v6, :cond_1

    .line 363
    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    const-wide v6, 0x100000000L

    add-long/2addr v0, v6

    .line 364
    :cond_0
    const-string v6, "%d.%d.%d.%d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-long v9, v0, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x8

    shr-long v9, v0, v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    shr-long v9, v0, v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const/16 v9, 0x18

    shr-long v9, v0, v9

    and-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .end local v0           #addr:J
    :cond_1
    if-nez v2, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    invoke-virtual {v6, v13}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    return-void

    .line 353
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #macAddress:Ljava/lang/String;
    .end local v4           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 354
    .restart local v3       #macAddress:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->this$0:Lcom/android/settings/wifi/AdvancedSettings;

    invoke-virtual {v6, v13}, Lcom/android/settings/wifi/AdvancedSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v4       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_4
    move-object v6, v2

    .line 368
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 342
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AdvancedSettings$RefreshWifiInfoTask;->onPostExecute(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
