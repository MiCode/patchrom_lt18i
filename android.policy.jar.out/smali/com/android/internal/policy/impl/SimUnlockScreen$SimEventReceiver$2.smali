.class Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$2;
.super Ljava/lang/Object;
.source "SimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver$2;->this$1:Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/SimUnlockScreen$SimEventReceiver;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 208
    return-void
.end method
