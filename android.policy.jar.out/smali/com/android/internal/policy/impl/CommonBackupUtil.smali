.class public Lcom/android/internal/policy/impl/CommonBackupUtil;
.super Ljava/lang/Object;
.source "CommonBackupUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CommonBackupUtil$1;,
        Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;
    }
.end annotation


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockPattern"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 0
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "keyguardCallback"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    iput-object p3, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CommonBackupUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CommonBackupUtil;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private showSelectionDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 64
    iget-object v6, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v7, 0x10400ca

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v7, 0x10400cb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v7, 0x10400cc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, answerYes:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    const v7, 0x10400cd

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, answerNo:Ljava/lang/String;
    new-instance v3, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/CommonBackupUtil$PopupListener;-><init>(Lcom/android/internal/policy/impl/CommonBackupUtil;Lcom/android/internal/policy/impl/CommonBackupUtil$1;)V

    .line 69
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 72
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 73
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 75
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method


# virtual methods
.method unlockAndFinishKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/CommonBackupUtil;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CommonBackupUtil;->showSelectionDialog()V

    .line 57
    return-void
.end method
