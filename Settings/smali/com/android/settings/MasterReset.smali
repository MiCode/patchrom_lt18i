.class public Lcom/android/settings/MasterReset;
.super Landroid/app/Activity;
.source "MasterReset.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private final mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/android/settings/MasterReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$1;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/android/settings/MasterReset$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterReset$2;-><init>(Lcom/android/settings/MasterReset;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterReset;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/MasterReset;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterReset;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MasterReset;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->setContentView(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 117
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 127
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 134
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishFinalConfirmationState()V

    goto :goto_0

    .line 135
    :cond_1
    if-nez p2, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->finish()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInitialView:Landroid/view/View;

    .line 193
    iput-object v0, p0, Lcom/android/settings/MasterReset;->mFinalView:Landroid/view/View;

    .line 194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mInflater:Landroid/view/LayoutInflater;

    .line 195
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/MasterReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 197
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 198
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/android/settings/MasterReset;->establishInitialState()V

    .line 212
    :cond_0
    return-void
.end method

.method protected sendMasterResetBroadcastAndClearLock()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.settings.MASTERRESET"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->setAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/settings/MasterReset;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    const v2, 0x7f08001d

    invoke-virtual {p0, v2}, Lcom/android/settings/MasterReset;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 106
    .local v1, msgBox:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected setAirplaneModeOn()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "airplane_mode_on"

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 88
    :goto_0
    return v1

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterReset;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/MasterReset;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v3

    .line 85
    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    move v1, v4

    .line 88
    goto :goto_0
.end method
