.class Lcom/android/internal/policy/impl/PatternUnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PatternUnlockScreen$5;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCarrier:Landroid/widget/TextView;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyAlone:Landroid/widget/Button;

.field private mEmergencyTogether:Landroid/widget/Button;

.field private mEnableFallback:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/ViewGroup;

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mInstructions:Ljava/lang/String;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNextAlarm:Ljava/lang/String;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mStatusSep:Landroid/widget/TextView;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 7
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 69
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 70
    iput v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 71
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 91
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 94
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 96
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 98
    iput-object v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 115
    const-wide/16 v2, -0x1b58

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 120
    new-instance v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 171
    iput-object p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    iput-object p4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 173
    iput-object p5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 174
    iput p6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    .line 175
    rem-int/lit8 v2, p6, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 184
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    .line 186
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 187
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 188
    const v2, 0x109003f

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    :goto_0
    const v2, 0x10201f9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    .line 194
    const v2, 0x102005a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDate:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400a9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDateFormatString:Ljava/lang/String;

    .line 197
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 199
    const v2, 0x10201f8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    .line 200
    const v2, 0x1020204

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    .line 201
    const v2, 0x10201f7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->resetStatusInfo()V

    .line 206
    const v2, 0x102020a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 208
    const v2, 0x1020205

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 209
    const v2, 0x1020207

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    .line 212
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    .line 218
    .local v0, emergencyClick:Landroid/view/View$OnClickListener;
    const v2, 0x1020206

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    .line 219
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v2, 0x1020209

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 223
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 226
    const v2, 0x1020208

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v3, 0x10402dd

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 228
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 241
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v3, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 251
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 253
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 254
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 255
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void

    .line 190
    .end local v0           #emergencyClick:Landroid/view/View$OnClickListener;
    :cond_1
    const v2, 0x109003e

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .restart local v0       #emergencyClick:Landroid/view/View$OnClickListener;
    :cond_2
    move v3, v4

    .line 245
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PatternUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    return-void
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PatternUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 596
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 621
    return-void
.end method

.method private refreshEmergencyButtonText()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEmergencyTogether:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 273
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    return-void
.end method

.method private resetStatusInfo()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    .line 287
    return-void
.end method

.method private setStatusDrawable(Landroid/widget/TextView;IIII)V
    .locals 0
    .parameter "view"
    .parameter "d1"
    .parameter "d2"
    .parameter "d3"
    .parameter "d4"

    .prologue
    .line 377
    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 380
    :cond_0
    return-void
.end method

.method private setStatusText(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 374
    :cond_0
    return-void
.end method

.method private setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "view"
    .parameter "text"

    .prologue
    .line 365
    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :cond_0
    return-void
.end method

.method private setStatusVisibility(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "view"
    .parameter "visibility"

    .prologue
    .line 359
    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    :cond_0
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 138
    sget-object v0, Lcom/android/internal/policy/impl/PatternUnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$PatternUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatusLines()V
    .locals 11

    .prologue
    const v5, 0x108001f

    const v10, 0x108001e

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    .line 292
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mInstructions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 356
    :goto_1
    return-void

    .line 299
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    goto :goto_0

    .line 305
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 307
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10402ce

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 316
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    move-object v3, p0

    move v5, v10

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10402cd

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10402d0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 324
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    const v5, 0x108002e

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    const-string v1, "|"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10402cf

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x64

    iget v6, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v5, 0x108002e

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 338
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_6

    .line 339
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    move-object v3, p0

    move v5, v10

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 344
    :goto_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    goto :goto_3

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x10402c8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusText(Landroid/widget/TextView;I)V

    .line 350
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    move-object v3, p0

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusDrawable(Landroid/widget/TextView;IIII)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-direct {p0, v0, v9}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setStatusVisibility(Landroid/widget/TextView;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 520
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 521
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 522
    iput-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 524
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 396
    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 399
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLastPokeTime:J

    .line 401
    :cond_0
    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 446
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 449
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 464
    :cond_0
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 467
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 480
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 625
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mShowingBatteryInfo:Z

    .line 410
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mPluggedIn:Z

    .line 411
    iput p3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mBatteryLevel:I

    .line 412
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateStatusLines()V

    .line 413
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->resetStatusInfo()V

    .line 488
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 490
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 493
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 498
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 499
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    .line 512
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshEmergencyButtonText()V

    .line 513
    return-void

    .line 493
    .end local v0           #deadline:J
    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    .line 505
    .restart local v0       #deadline:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 507
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1

    .line 509
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PatternUnlockScreen$FooterMode;)V

    goto :goto_1
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 430
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 436
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->refreshTimeAndDateDisplay()V

    .line 418
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 528
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 529
    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->onResume()V

    .line 533
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen;->mEnableFallback:Z

    .line 278
    return-void
.end method
