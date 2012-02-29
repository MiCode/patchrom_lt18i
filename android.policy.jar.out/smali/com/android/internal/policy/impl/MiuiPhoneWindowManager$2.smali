.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;
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
    .line 239
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mHomePressed:Z

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->isEnableKeyguardTorch()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->setTorch(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Z)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$2;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->showRecentAppsDialog()V

    goto :goto_0
.end method
