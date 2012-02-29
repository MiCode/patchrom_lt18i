.class Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;
.super Landroid/os/AsyncTask;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleStateChangedTask"
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
.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter
    .parameter "state"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 178
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;
    .locals 2
    .parameter "params"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 188
    .local v0, info:Landroid/net/wifi/WifiInfo;
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->doInBackground([Ljava/lang/Void;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/wifi/WifiInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mCheckBox:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->access$400(Lcom/android/settings/wifi/WifiEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    #getter for: Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->isLocalLinkAddress(I)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 171
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->onPostExecute(Landroid/net/wifi/WifiInfo;)V

    return-void
.end method

.method public setState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$HandleStateChangedTask;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 183
    return-void
.end method
