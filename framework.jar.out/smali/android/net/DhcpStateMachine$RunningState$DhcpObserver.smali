.class Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;
.super Landroid/os/FileObserver;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DhcpStateMachine$RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpObserver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/DhcpStateMachine$RunningState;


# direct methods
.method public constructor <init>(Landroid/net/DhcpStateMachine$RunningState;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;->this$1:Landroid/net/DhcpStateMachine$RunningState;

    .line 321
    const-string v0, "/data/misc/dhcp"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 322
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "path"

    .prologue
    .line 324
    if-eqz p2, :cond_0

    const-string v0, ".lease"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/net/DhcpStateMachine$RunningState$DhcpObserver;->this$1:Landroid/net/DhcpStateMachine$RunningState;

    iget-object v0, v0, Landroid/net/DhcpStateMachine$RunningState;->this$0:Landroid/net/DhcpStateMachine;

    const v1, 0x30007

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/DhcpStateMachine;->sendMessageDelayed(IJ)V

    .line 331
    :cond_0
    return-void
.end method
