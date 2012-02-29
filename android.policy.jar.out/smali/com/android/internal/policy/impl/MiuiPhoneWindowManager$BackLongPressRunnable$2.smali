.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->showHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "back_key_long_press_timeout"

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$2;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    #getter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zDialogResult:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->access$000(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    mul-int/lit16 v2, v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    return-void

    .line 177
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
