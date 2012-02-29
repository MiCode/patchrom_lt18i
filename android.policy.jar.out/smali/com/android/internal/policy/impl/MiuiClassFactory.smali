.class public Lcom/android/internal/policy/impl/MiuiClassFactory;
.super Ljava/lang/Object;
.source "MiuiClassFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 1
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    .line 12
    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    return-object v0
.end method

.method public static createPhoneWindowManager()Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/MiuiPhoneWindowManager;-><init>()V

    return-object v0
.end method
