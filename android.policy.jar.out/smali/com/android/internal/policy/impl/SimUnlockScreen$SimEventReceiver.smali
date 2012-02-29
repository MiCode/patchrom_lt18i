.class Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEventReceiver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "attempts"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 190
    .local v0, attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #setter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mAttemptsRemaining:I
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$202(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I

    .line 191
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, lockedReason:Ljava/lang/String;
    if-eq v0, v4, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$1;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :cond_0
    if-nez v0, :cond_1

    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    const v3, 0x10400d0

    const v4, 0x10400d1

    #calls: Lcom/android/internal/policy/impl/SimUnlockScreen;->showAlertDialog(II)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;II)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    .end local v0           #attemptsRemaining:I
    .end local v1           #lockedReason:Ljava/lang/String;
    :cond_1
    return-void
.end method
