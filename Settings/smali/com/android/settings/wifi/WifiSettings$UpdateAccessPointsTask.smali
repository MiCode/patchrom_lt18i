.class Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;
.super Landroid/os/AsyncTask;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAccessPointsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mEnableNetworks:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;Z)V
    .locals 0
    .parameter
    .parameter "enableNetworks"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 648
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->mEnableNetworks:Z

    .line 649
    return-void
.end method


# virtual methods
.method public callEnableNetworks()V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->mEnableNetworks:Z

    .line 654
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;
    .locals 2
    .parameter "params"

    .prologue
    .line 658
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;-><init>(Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 659
    .local v0, info:Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;->results:Ljava/util/List;

    .line 660
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;->configs:Ljava/util/List;

    .line 662
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p1, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;->results:Ljava/util/List;

    iget-object v2, p1, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;->configs:Ljava/util/List;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->access$1000(Lcom/android/settings/wifi/WifiSettings;Ljava/util/List;Ljava/util/List;)V

    .line 668
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->mEnableNetworks:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->enableNetworks()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$1100(Lcom/android/settings/wifi/WifiSettings;)V

    .line 671
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 642
    check-cast p1, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsTask;->onPostExecute(Lcom/android/settings/wifi/WifiSettings$UpdateAccessPointsInfoHolder;)V

    return-void
.end method
