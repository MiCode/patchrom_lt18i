.class Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDCardMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/SDCardMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDCardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/SDCardMonitor;


# direct methods
.method private constructor <init>(Lmiui/app/resourcebrowser/SDCardMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/resourcebrowser/SDCardMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/resourcebrowser/SDCardMonitor;Lmiui/app/resourcebrowser/SDCardMonitor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;-><init>(Lmiui/app/resourcebrowser/SDCardMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    iget-object v2, p0, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardReceiver;->this$0:Lmiui/app/resourcebrowser/SDCardMonitor;

    #getter for: Lmiui/app/resourcebrowser/SDCardMonitor;->mListeners:Ljava/util/HashSet;
    invoke-static {v2}, Lmiui/app/resourcebrowser/SDCardMonitor;->access$100(Lmiui/app/resourcebrowser/SDCardMonitor;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;

    .line 55
    .local v1, listener:Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    invoke-interface {v1, v2}, Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;->onStatusChanged(Z)V

    goto :goto_0

    .line 57
    .end local v1           #listener:Lmiui/app/resourcebrowser/SDCardMonitor$SDCardStatusListener;
    :cond_0
    return-void
.end method
