.class Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;
.super Landroid/os/AsyncTask;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetWifiStatusTask"
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
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/Status;Lcom/android/settings/deviceinfo/Status$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;
    .locals 4
    .parameter "params"

    .prologue
    .line 448
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 449
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 450
    .local v0, info:Landroid/net/wifi/WifiInfo;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 445
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/wifi/WifiInfo;)V
    .locals 4
    .parameter "wifiInfo"

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v3, "wifi_mac_address"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 456
    .local v1, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez p1, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 457
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    return-void

    .line 456
    .end local v0           #macAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 457
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->this$0:Lcom/android/settings/deviceinfo/Status;

    const v3, 0x7f080218

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 445
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status$SetWifiStatusTask;->onPostExecute(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method
