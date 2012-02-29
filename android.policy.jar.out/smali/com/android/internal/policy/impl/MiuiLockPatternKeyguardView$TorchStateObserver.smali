.class Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;
.super Landroid/database/ContentObserver;
.source "MiuiLockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TorchStateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    .line 196
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->updateTorchCover()V

    .line 211
    return-void
.end method

.method public regitster()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->onChange(Z)V

    .line 203
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView$TorchStateObserver;->this$0:Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 207
    return-void
.end method
