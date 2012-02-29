.class Lmiui/app/screenelement/TimepanelScreenElement$1;
.super Landroid/content/BroadcastReceiver;
.source "TimepanelScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/TimepanelScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/TimepanelScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lmiui/app/screenelement/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/TimepanelScreenElement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/TimepanelScreenElement;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lmiui/app/screenelement/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 47
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/TimepanelScreenElement;

    #getter for: Lmiui/app/screenelement/TimepanelScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/app/screenelement/TimepanelScreenElement;->access$100(Lmiui/app/screenelement/TimepanelScreenElement;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/app/screenelement/TimepanelScreenElement$1$1;

    invoke-direct {v1, p0}, Lmiui/app/screenelement/TimepanelScreenElement$1$1;-><init>(Lmiui/app/screenelement/TimepanelScreenElement$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method
