.class public Lmiui/util/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amendVibratePrefs(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->amendVibratePrefsByRingerMode(Landroid/content/Context;)V

    .line 157
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->amendVibratePrefsByVibrate(Landroid/content/Context;I)V

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->amendVibratePrefsByVibrate(Landroid/content/Context;I)V

    .line 159
    return-void
.end method

.method public static amendVibratePrefsByRingerMode(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const-string/jumbo v5, "vibrate_in_silent"

    .line 170
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 171
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 172
    .local v1, ringerMode:I
    if-nez v1, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    if-ne v1, v4, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v2, v5, v4}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static amendVibratePrefsByVibrate(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "vibrateType"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string/jumbo v7, "vibrate_in_silent"

    const-string/jumbo v5, "vibrate_in_normal"

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 195
    .local v0, am:Landroid/media/AudioManager;
    if-nez p1, :cond_1

    const-string/jumbo v3, "vibrate_ringer"

    move-object v2, v3

    .line 197
    .local v2, pref:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 195
    .end local v2           #pref:Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "vibrate_notification"

    move-object v2, v3

    goto :goto_0

    .line 199
    .restart local v2       #pref:Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "vibrate_in_normal"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 201
    :cond_2
    invoke-static {v1, v2, v6}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_1

    .line 205
    :pswitch_1
    const-string/jumbo v3, "vibrate_in_normal"

    invoke-static {v1, v5, v4}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 206
    invoke-static {v1, v2, v4}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_1

    .line 209
    :pswitch_2
    const-string/jumbo v3, "vibrate_in_silent"

    invoke-static {v1, v7, v4}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 210
    const-string/jumbo v3, "vibrate_in_normal"

    invoke-static {v1, v5, v6}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 211
    invoke-static {v1, v2, v4}, Lmiui/util/AudioManagerHelper;->updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isSilentEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 101
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVibrateEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 67
    .local v1, am:Landroid/media/AudioManager;
    const/4 v0, 0x0

    .line 68
    .local v0, allowVibrate:Z
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 83
    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v2, "vibrate_ringer"

    invoke-static {p0, v2}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "vibrate_notification"

    invoke-static {p0, v2}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "vibrate_mms"

    invoke-static {p0, v2}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v4

    :goto_1
    return v2

    .line 70
    :pswitch_0
    const/4 v0, 0x0

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v0, 0x1

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_in_normal"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    move v2, v5

    .line 83
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static setVibrateInternel(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 5
    .parameter "context"
    .parameter "pref"
    .parameter "vibrateType"
    .parameter "vibrateInNormal"
    .parameter "vibrateInSilent"

    .prologue
    const/4 v4, 0x0

    .line 141
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 143
    .local v0, am:Landroid/media/AudioManager;
    invoke-static {p0, p1}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 144
    .local v1, vibratePref:Z
    const/4 v2, 0x0

    .line 145
    .local v2, vibrateSetting:I
    if-eqz p3, :cond_2

    .line 146
    if-eqz v1, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 152
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 153
    return-void

    :cond_1
    move v2, v4

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    if-eqz p4, :cond_0

    .line 149
    if-eqz v1, :cond_3

    const/4 v3, 0x2

    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method public static shouldVibrateForPref(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 18
    const/4 v1, 0x0

    .line 20
    .local v1, ret:Z
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 21
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 37
    :goto_0
    return v1

    .line 23
    :pswitch_0
    const/4 v1, 0x0

    .line 24
    goto :goto_0

    .line 26
    :pswitch_1
    invoke-static {p0, p1}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 27
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_in_normal"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v2, v5

    .line 33
    .local v2, vibrateInNormal:Z
    :goto_1
    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lmiui/provider/ExtraSettings$System;->isVibratePrefOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    move v1, v3

    :goto_2
    goto :goto_0

    .end local v2           #vibrateInNormal:Z
    :cond_0
    move v2, v6

    .line 29
    goto :goto_1

    .restart local v2       #vibrateInNormal:Z
    :cond_1
    move v1, v6

    .line 33
    goto :goto_2

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toggleSilent(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isSilentEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v0}, Lmiui/util/AudioManagerHelper;->updateVibrateState(Landroid/content/Context;Z)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toggleVibrate(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 45
    .local v0, am:Landroid/media/AudioManager;
    invoke-static {p0}, Lmiui/util/AudioManagerHelper;->isVibrateEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v6

    .line 46
    .local v3, vibrate:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 47
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 48
    .local v2, silent:Z
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 59
    :goto_1
    invoke-static {p0, v2}, Lmiui/util/AudioManagerHelper;->updateVibrateState(Landroid/content/Context;Z)V

    .line 60
    return-void

    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #silent:Z
    .end local v3           #vibrate:Z
    :cond_0
    move v3, v5

    .line 45
    goto :goto_0

    .line 51
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #silent:Z
    .restart local v3       #vibrate:Z
    :pswitch_0
    const-string/jumbo v4, "vibrate_in_silent"

    if-eqz v3, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_1

    .line 55
    :pswitch_1
    const-string/jumbo v4, "vibrate_in_normal"

    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updatePrefIfChanged(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 217
    neg-int v0, p2

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 218
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 220
    :cond_0
    return-void
.end method

.method public static updateVibrateState(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "silent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 109
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 110
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, cr:Landroid/content/ContentResolver;
    const-string/jumbo v5, "vibrate_in_silent"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v4, v6

    .line 115
    .local v4, vibrateInSilent:Z
    :goto_0
    const-string/jumbo v5, "vibrate_in_normal"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v3, v6

    .line 120
    .local v3, vibrateInNormal:Z
    :goto_1
    const/4 v2, 0x2

    .line 121
    .local v2, ringerMode:I
    if-eqz p1, :cond_0

    .line 122
    if-eqz v4, :cond_3

    .line 123
    const/4 v2, 0x1

    .line 128
    :cond_0
    :goto_2
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 130
    const-string/jumbo v5, "vibrate_ringer"

    invoke-static {p0, v5, v7, v3, v4}, Lmiui/util/AudioManagerHelper;->setVibrateInternel(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 134
    const-string/jumbo v5, "vibrate_notification"

    invoke-static {p0, v5, v6, v3, v4}, Lmiui/util/AudioManagerHelper;->setVibrateInternel(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 137
    return-void

    .end local v2           #ringerMode:I
    .end local v3           #vibrateInNormal:Z
    .end local v4           #vibrateInSilent:Z
    :cond_1
    move v4, v7

    .line 111
    goto :goto_0

    .restart local v4       #vibrateInSilent:Z
    :cond_2
    move v3, v7

    .line 115
    goto :goto_1

    .line 125
    .restart local v2       #ringerMode:I
    .restart local v3       #vibrateInNormal:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
