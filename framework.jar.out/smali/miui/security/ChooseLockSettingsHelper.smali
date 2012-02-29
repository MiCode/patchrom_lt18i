.class public Lmiui/security/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final CONFIRM_PRIVACY:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.confirm_privacy"

.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field private static final NO_REQUEST_FOR_ACTIVITY_RESULT:I = -0x400


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    return-void
.end method

.method private confirmPassword(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 129
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1

    .line 131
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const/16 v1, -0x400

    if-ne p1, v1, :cond_1

    .line 134
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    .line 106
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 120
    :goto_0
    return v1

    .line 109
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 112
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 113
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/16 v1, -0x400

    if-ne p1, v1, :cond_1

    .line 115
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    .line 56
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, launched:Z
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 70
    goto :goto_0

    .line 61
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lmiui/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 62
    goto :goto_1

    .line 67
    :sswitch_1
    invoke-direct {p0, p1}, Lmiui/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_1

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
    .end sparse-switch
.end method

.method public launchConfirmationActivity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "message"
    .parameter "details"

    .prologue
    const/16 v2, -0x400

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, launched:Z
    iget-object v1, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
    :goto_0
    return v0

    .line 86
    :sswitch_0
    invoke-direct {p0, v2, p1, p2}, Lmiui/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 87
    goto :goto_0

    .line 92
    :sswitch_1
    invoke-direct {p0, v2}, Lmiui/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_0

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmiui/security/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
