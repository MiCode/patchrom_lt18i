.class Landroid/net/wifi/WifiStateTracker$DhcpObserver;
.super Landroid/os/FileObserver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DhcpObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 2546
    const-string v0, "/data/misc/dhcp"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 2547
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 2549
    if-eqz p2, :cond_0

    const-string v0, ".lease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2550
    const-string v0, "WifiStateTracker"

    const-string v1, "dhcpcd lease file updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2555
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker$DhcpObserver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-result-object v0

    const/16 v1, 0x11

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2559
    :cond_0
    return-void
.end method
