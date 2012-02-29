.class public Lmiui/util/HapticFeedbackUtil;
.super Ljava/lang/Object;
.source "HapticFeedbackUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HapticFeedbackUtil"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyboardTapVibePattern:[J

.field private mLongPressVibePattern:[J

.field private mSafeModeDisabledVibePattern:[J

.field private mSafeModeEnabledVibePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mVirtualKeyUpVibePattern:[J

.field private mVirtualKeyVibePattern:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    .line 46
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60b0003

    invoke-static {v0, v1}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSafeModeDisabledVibePattern:[J

    .line 48
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x60b0004

    invoke-static {v0, v1}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mSafeModeEnabledVibePattern:[J

    .line 50
    invoke-virtual {p0}, Lmiui/util/HapticFeedbackUtil;->updateSettings()V

    .line 51
    return-void
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 127
    .local v0, ar:[I
    if-nez v0, :cond_0

    .line 128
    const/4 v3, 0x0

    .line 134
    :goto_0
    return-object v3

    .line 130
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 131
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 132
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 134
    goto :goto_0
.end method

.method private loadHaptic(Ljava/lang/String;I)[J
    .locals 2
    .parameter "key"
    .parameter "defaultRes"

    .prologue
    .line 116
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, hapString:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Lmiui/util/HapticFeedbackUtil;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lmiui/util/HapticFeedbackUtil;->stringToLongArray(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_0
.end method

.method private stringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "inpString"

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 139
    const/4 v4, 0x1

    new-array v2, v4, [J

    .line 140
    .local v2, returnByte:[J
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v2, v4

    .line 150
    :cond_0
    return-object v2

    .line 143
    .end local v2           #returnByte:[J
    :cond_1
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, splitStr:[Ljava/lang/String;
    array-length v1, v3

    .line 145
    .local v1, los:I
    new-array v2, v1, [J

    .line 147
    .restart local v2       #returnByte:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 148
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public performHapticFeedback(IZ)Z
    .locals 6
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 67
    .local v0, hapticsDisabled:Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    move v2, v4

    .line 112
    :goto_1
    return v2

    .end local v0           #hapticsDisabled:Z
    :cond_0
    move v0, v4

    .line 65
    goto :goto_0

    .line 71
    .restart local v0       #hapticsDisabled:Z
    :cond_1
    const/4 v1, 0x0

    .line 72
    .local v1, pattern:[J
    sparse-switch p1, :sswitch_data_0

    move v2, v4

    .line 92
    goto :goto_1

    .line 74
    :sswitch_0
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 95
    :goto_2
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    .line 96
    :cond_2
    const-string v2, "HapticFeedbackUtil"

    const-string/jumbo v3, "vibrate: null or empty pattern"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 97
    goto :goto_1

    .line 77
    :sswitch_1
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 78
    goto :goto_2

    .line 80
    :sswitch_2
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 81
    goto :goto_2

    .line 83
    :sswitch_3
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mSafeModeDisabledVibePattern:[J

    .line 84
    goto :goto_2

    .line 86
    :sswitch_4
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mSafeModeEnabledVibePattern:[J

    .line 87
    goto :goto_2

    .line 89
    :sswitch_5
    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 90
    goto :goto_2

    .line 110
    :cond_3
    iget-object v2, p0, Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    move v2, v5

    .line 112
    goto :goto_1

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x3 -> :sswitch_2
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_4
    .end sparse-switch
.end method

.method public updateSettings()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "haptic_long_array"

    const/high16 v1, 0x60b

    invoke-direct {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mLongPressVibePattern:[J

    .line 56
    const-string v0, "haptic_down_array"

    const v1, 0x60b0001

    invoke-direct {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyVibePattern:[J

    .line 58
    const-string v0, "haptic_tap_array"

    const v1, 0x60b0002

    invoke-direct {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mKeyboardTapVibePattern:[J

    .line 60
    const-string v0, "haptic_up_array"

    const v1, 0x60b0005

    invoke-direct {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->loadHaptic(Ljava/lang/String;I)[J

    move-result-object v0

    iput-object v0, p0, Lmiui/util/HapticFeedbackUtil;->mVirtualKeyUpVibePattern:[J

    .line 62
    return-void
.end method
