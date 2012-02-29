.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x64

    const/4 v4, -0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    const-string v2, "level"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, level:I
    if-eq v1, v4, :cond_0

    .line 50
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$000(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    if-lt v1, v5, :cond_1

    move v3, v5

    :goto_0
    iput v3, v2, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    .line 51
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$200(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const/4 v3, 0x0

    const-string v4, "battery_level"

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$100(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget v5, v5, Lmiui/app/screenelement/ScreenContext;->mBatteryLevel:I

    int-to-double v5, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 52
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$300(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmiui/app/screenelement/ScreenContext;->mShouldUpdate:Z

    .line 93
    .end local v1           #level:I
    :cond_0
    :goto_1
    return-void

    .restart local v1       #level:I
    :cond_1
    move v3, v1

    .line 50
    goto :goto_0

    .line 54
    .end local v1           #level:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    move-object v0, p2

    .line 57
    .local v0, _intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 83
    .end local v0           #_intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mCalendar:Ljava/util/Calendar;

    .line 87
    :cond_4
    iget-object v2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$900(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$2;

    invoke-direct {v3, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$2;-><init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
