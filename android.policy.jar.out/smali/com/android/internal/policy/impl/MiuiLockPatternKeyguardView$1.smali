.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "MiuiLockPatternKeyguardView.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->createKeyguardScreenCallback()Lcom/miui/internal/policy/impl/KeyguardScreenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

.field final synthetic val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    return-void
.end method

.method private checkCameraIntent()V
    .locals 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 137
    .local v0, packageName:Ljava/lang/String;
    :goto_1
    const-string v1, "com.miui.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_GALAXYS2:Z

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 136
    .end local v0           #packageName:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 1
    .parameter "isForgotten"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    .line 50
    return-void
.end method

.method public goToLockScreen()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 55
    return-void
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->getUpdateMonitor()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 60
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->keyguardDone(Z)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 105
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public keyguardDoneDrawing()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDoneDrawing()V

    .line 116
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 121
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 126
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 85
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 90
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 95
    return-void
.end method

.method public setPendingIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->mPendingIntent:Landroid/content/Intent;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->checkCameraIntent()V

    .line 132
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$1;->val$callback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 100
    return-void
.end method
