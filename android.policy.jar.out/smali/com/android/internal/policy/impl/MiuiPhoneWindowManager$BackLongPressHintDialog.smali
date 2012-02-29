.class Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;
.super Landroid/app/AlertDialog;
.source "MiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackLongPressHintDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;->this$0:Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    .line 190
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/high16 v2, 0x2

    .line 195
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager$BackLongPressHintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 200
    return-void
.end method
