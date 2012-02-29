.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/os/LocalPowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "globalactions"

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mPowerKeyHandled:Z

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_disable_power_key_long_press"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v1, "globalactions"

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->showGlobalActionsDialog()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_style"

    invoke-static {}, Lmiui/provider/ExtraSettings$System;->getDefaultStatusBarStyle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v1, "globalactions"

    invoke-virtual {v0, v5}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->showGlobalActionsDialog()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.EXPAND_TOGGLE_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
