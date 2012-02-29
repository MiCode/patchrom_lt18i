.class Lcom/android/internal/policy/impl/LockScreenSemc;
.super Landroid/widget/LinearLayout;
.source "LockScreenSemc.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreenSemc$4;,
        Lcom/android/internal/policy/impl/LockScreenSemc$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final SKT_ECC_MENU:Ljava/lang/String; = "persist.cust.tel.skt-ecc-menu"

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mConfigurationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyMenu:Z

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardOpen:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarm:Ljava/lang/String;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSelector:Lcom/android/internal/widget/SlidingTabSemc;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mSliderHintsEnabled:Z

.field private mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 173
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    sget-object v1, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 77
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 80
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSliderHintsEnabled:Z

    .line 174
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 175
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 176
    iput-object p5, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 178
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->shouldEnableMenuKey()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->queryKeyboardOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mKeyboardOpen:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSliderHintsEnabled:Z

    .line 185
    const-string v1, "persist.cust.tel.skt-ecc-menu"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    .line 187
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mConfigurationOrientation:I

    .line 189
    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mConfigurationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 190
    const v1, 0x109003c

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    :goto_0
    const v1, 0x10201f9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    .line 196
    const v1, 0x102005a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDate:Landroid/widget/TextView;

    .line 197
    const v1, 0x10201f8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    .line 198
    const v1, 0x10201f7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    .line 200
    const v1, 0x10201ca

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    .line 201
    const v1, 0x1020200

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    .line 202
    const v1, 0x10201ff

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SlidingTabSemc;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/SlidingTabSemc;->setHoldAfterTrigger(ZZ)V

    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    const v2, 0x10402e6

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingTabSemc;->setLeftHintText(I)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    const v2, 0x10402c9

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/LockScreenSemc$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockScreenSemc$1;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setFocusable(Z)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setFocusableInTouchMode(Z)V

    .line 216
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->setDescendantFocusability(I)V

    .line 218
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 219
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->isSilentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    const v2, 0x10803c9

    const v3, 0x10803ca

    const v4, 0x10803c8

    const v5, 0x10803c7

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTabSemc;->setLeftTabResources(IIII)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/SlidingTabSemc;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTabSemc$OnTriggerListener;)V

    .line 234
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/LockScreenSemc;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 235
    return-void

    .line 192
    :cond_1
    const v1, 0x109003d

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreenSemc;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 707
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 714
    :goto_0
    return-object v0

    .line 709
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 711
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 712
    goto :goto_0

    .line 714
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;
    .locals 6
    .parameter "simState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 515
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v2, :cond_0

    move v1, v5

    .line 517
    .local v1, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 518
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 546
    :goto_1
    return-object v2

    .end local v1           #missingAndNotProvisioned:Z
    :cond_0
    move v1, v4

    .line 515
    goto :goto_0

    .line 521
    .restart local v1       #missingAndNotProvisioned:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    move v0, v5

    .line 524
    .local v0, isFlightModeOff:Z
    :goto_2
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 546
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .end local v0           #isFlightModeOff:Z
    :cond_2
    move v0, v4

    .line 521
    goto :goto_2

    .line 526
    .restart local v0       #isFlightModeOff:Z
    :pswitch_0
    if-eqz v0, :cond_3

    .line 528
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 531
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 534
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 536
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 538
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 540
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 542
    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->Normal:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 544
    :pswitch_6
    sget-object v2, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    goto :goto_1

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isSilentMode()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryKeyboardOpen()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 776
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 777
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshAlarmDisplay()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 432
    return-void
.end method

.method private refreshBatteryStringAndIcon(Z)V
    .locals 3
    .parameter "pluggedIn"

    .prologue
    const v2, 0x108001e

    .line 446
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    .line 463
    :goto_0
    return-void

    .line 451
    :cond_0
    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 457
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 276
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 279
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 282
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshBatteryStringAndIcon(Z)V

    .line 283
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshAlarmDisplay()V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mDateFormatString:Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshTimeAndDateDisplay()V

    .line 287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 288
    return-void
.end method

.method private setEmergencyVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 704
    :cond_0
    return-void
.end method

.method private setScreenLockedVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :cond_0
    return-void
.end method

.method private setSelectorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTabSemc;->setVisibility(I)V

    .line 692
    :cond_0
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 157
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 158
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 159
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 160
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 396
    if-eqz p1, :cond_2

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 403
    iput-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    .line 406
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 408
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenSemc$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/policy/impl/LockScreenSemc$2;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;Landroid/widget/TextView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    new-instance v0, Lcom/android/internal/policy/impl/LockScreenSemc$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/LockScreenSemc$3;-><init>(Lcom/android/internal/policy/impl/LockScreenSemc;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    :cond_2
    return-void
.end method

.method private updateCarrierText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 674
    :cond_0
    return-void
.end method

.method private updateCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    :cond_0
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V
    .locals 7
    .parameter "status"

    .prologue
    const v2, 0x10402d1

    const/4 v6, 0x4

    const/16 v5, 0x8

    const v4, 0x10402d4

    const/4 v3, 0x0

    .line 553
    sget-object v0, Lcom/android/internal/policy/impl/LockScreenSemc$4;->$SwitchMap$com$android$internal$policy$impl$LockScreenSemc$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 668
    :goto_0
    return-void

    .line 556
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 564
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 566
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 583
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_1

    .line 584
    const v0, 0x10402c7

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 588
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 589
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 590
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto :goto_0

    .line 581
    :cond_2
    const v0, 0x10402d5

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    goto :goto_1

    :cond_3
    move v0, v5

    .line 590
    goto :goto_2

    .line 594
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 601
    :goto_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_4

    .line 602
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_6

    move v0, v4

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 607
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_7

    move v0, v3

    :goto_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 608
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 609
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_8

    move v0, v3

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 602
    :cond_6
    const v0, 0x10402c7

    goto :goto_4

    :cond_7
    move v0, v6

    .line 607
    goto :goto_5

    :cond_8
    move v0, v5

    .line 609
    goto :goto_6

    .line 614
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 621
    :goto_7
    const v0, 0x10402d3

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 624
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 625
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 626
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_a

    move v0, v3

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 619
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    goto :goto_7

    :cond_a
    move v0, v5

    .line 626
    goto :goto_8

    .line 631
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 639
    :goto_9
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_b

    .line 640
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 644
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_d

    move v0, v3

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 645
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 646
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_e

    move v0, v3

    :goto_b
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 637
    :cond_c
    const v0, 0x10402d8

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    goto :goto_9

    :cond_d
    move v0, v6

    .line 644
    goto :goto_a

    :cond_e
    move v0, v5

    .line 646
    goto :goto_b

    .line 650
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(Ljava/lang/CharSequence;)V

    .line 658
    :goto_c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_f

    .line 659
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateScreenLockedText(I)V

    .line 663
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_11

    move v0, v3

    :goto_d
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setScreenLockedVisibility(I)V

    .line 664
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockScreenSemc;->setSelectorVisibility(I)V

    .line 665
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyMenu:Z

    if-eqz v0, :cond_12

    move v0, v3

    :goto_e
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->setEmergencyVisibility(I)V

    goto/16 :goto_0

    .line 656
    :cond_10
    const v0, 0x10402d6

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateCarrierText(I)V

    goto :goto_c

    :cond_11
    move v0, v6

    .line 663
    goto :goto_d

    :cond_12
    move v0, v5

    .line 665
    goto :goto_e

    .line 553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 244
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const v0, 0x10803d6

    .line 249
    .local v0, disabledId:I
    const v1, 0x10803d7

    .line 250
    .local v1, expandedId:I
    const v3, 0x10803cd

    .line 251
    .local v3, gotoId:I
    const v2, 0x10803d4

    .line 272
    .local v2, ghostId:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/android/internal/widget/SlidingTabSemc;->setRightTabResources(IIII)V

    .line 273
    return-void

    .line 254
    .end local v0           #disabledId:I
    .end local v1           #expandedId:I
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_0
    const v0, 0x10803ce

    .line 255
    .restart local v0       #disabledId:I
    const v1, 0x10803cf

    .line 256
    .restart local v1       #expandedId:I
    const v3, 0x10803cd

    .line 257
    .restart local v3       #gotoId:I
    const v2, 0x10803cc

    .restart local v2       #ghostId:I
    goto :goto_0

    .line 260
    .end local v0           #disabledId:I
    .end local v1           #expandedId:I
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_1
    const v0, 0x10803d2

    .line 261
    .restart local v0       #disabledId:I
    const v1, 0x10803d3

    .line 263
    .restart local v1       #expandedId:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 266
    const v3, 0x10803d5

    .line 270
    .restart local v3       #gotoId:I
    :goto_1
    const v2, 0x10803d0

    .restart local v2       #ghostId:I
    goto :goto_0

    .line 268
    .end local v2           #ghostId:I
    .end local v3           #gotoId:I
    :cond_2
    const v3, 0x10803d1

    .restart local v3       #gotoId:I
    goto :goto_1
.end method

.method private updateScreenLockedText(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 686
    :cond_0
    return-void
.end method

.method private updateStatusLines()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockScreenSemc$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 493
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 763
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 735
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateConfiguration()V

    .line 737
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 742
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 743
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateConfiguration()V

    .line 744
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 333
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSelector:Lcom/android/internal/widget/SlidingTabSemc;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_1

    const v1, 0x10402e7

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTabSemc;->setRightHintText(I)V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 339
    return-void

    .line 335
    :cond_1
    const v1, 0x10402e8

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 292
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 782
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mShowingBatteryInfo:Z

    .line 439
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mBatteryLevel:I

    .line 441
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshBatteryStringAndIcon(Z)V

    .line 442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 443
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 509
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 758
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 767
    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 768
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 769
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreenSemc;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    .line 721
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mStatus:Lcom/android/internal/policy/impl/LockScreenSemc$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateLayout(Lcom/android/internal/policy/impl/LockScreenSemc$Status;)V

    .line 722
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateStatusLines()V

    .line 723
    return-void
.end method

.method public onTap(Landroid/view/View;I)V
    .locals 9
    .parameter "v"
    .parameter "tapState"

    .prologue
    .line 345
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSliderHintsEnabled:Z

    if-eqz v7, :cond_1

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, hint:Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mConfigurationOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    move v1, v7

    .line 358
    .local v1, isLandscape:Z
    :goto_0
    if-nez v1, :cond_3

    .line 359
    const/4 v4, 0x1

    .line 360
    .local v4, unlockHandle:I
    const/4 v2, 0x2

    .line 361
    .local v2, muteHandle:I
    const v5, 0x10400e1

    .line 362
    .local v5, unlockHint:I
    const v3, 0x10400e2

    .line 363
    .local v3, muteHint:I
    const v6, 0x10400e3

    .line 372
    .local v6, unmuteHint:I
    :goto_1
    if-ne p2, v4, :cond_4

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 383
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v7, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 387
    .end local v0           #hint:Ljava/lang/String;
    .end local v1           #isLandscape:Z
    .end local v2           #muteHandle:I
    .end local v3           #muteHint:I
    .end local v4           #unlockHandle:I
    .end local v5           #unlockHint:I
    .end local v6           #unmuteHint:I
    :cond_1
    return-void

    .line 347
    .restart local v0       #hint:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    move v1, v7

    goto :goto_0

    .line 365
    .restart local v1       #isLandscape:Z
    :cond_3
    const/4 v4, 0x2

    .line 366
    .restart local v4       #unlockHandle:I
    const/4 v2, 0x1

    .line 367
    .restart local v2       #muteHandle:I
    const v5, 0x10400e4

    .line 368
    .restart local v5       #unlockHint:I
    const v3, 0x10400e5

    .line 369
    .restart local v3       #muteHint:I
    const v6, 0x10400e6

    .restart local v6       #unmuteHint:I
    goto :goto_1

    .line 374
    :cond_4
    if-ne p2, v2, :cond_0

    .line 375
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v7, :cond_5

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 378
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->refreshTimeAndDateDisplay()V

    .line 468
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 300
    if-ne p2, v3, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    if-ne p2, v2, :cond_0

    .line 304
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-nez v1, :cond_2

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    .line 305
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 320
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->updateRightTabResources()V

    .line 322
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mSilentMode:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104015a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 326
    .local v0, message:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/impl/LockScreenSemc;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0

    .end local v0           #message:Ljava/lang/String;
    :cond_2
    move v1, v4

    .line 304
    goto :goto_1

    .line 313
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 317
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 322
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104015b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3
.end method

.method updateConfiguration()V
    .locals 3

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 727
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mKeyboardOpen:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreenSemc;->queryKeyboardOpen()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mConfigurationOrientation:I

    if-eq v1, v2, :cond_1

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreenSemc;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 731
    :cond_1
    return-void
.end method
