.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable$1;->this$1:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->zDialogResult:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;->access$002(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressRunnable;Z)Z

    .line 172
    return-void
.end method
