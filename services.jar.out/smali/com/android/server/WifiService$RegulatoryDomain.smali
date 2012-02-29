.class Lcom/android/server/WifiService$RegulatoryDomain;
.super Ljava/lang/Object;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegulatoryDomain"
.end annotation


# static fields
.field public static final ACTION_HYSTERESIS_TIMER:Ljava/lang/String; = "android.intent.action.HYSTERESIS_TIMER"

.field private static final DEFAULT_CHANNEL_NUMBER:I = 0xb

.field private static final HIGH_CHANNEL_NUMBER:I = 0xd

.field private static final UPDATE_HYSTERESIS_ALARM:I = 0x0

.field private static final UPDATE_HYSTERESIS_TIME:I = 0x1b7740


# instance fields
.field private final mHighChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHighChannelsMccs:[Ljava/lang/String;

.field private final mHysteresisAlarmManager:Landroid/app/AlarmManager;

.field private final mHysteresisIntent:Landroid/app/PendingIntent;

.field private mHysteresisTimerStarted:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    .line 2622
    iput-object p1, p0, Lcom/android/server/WifiService$RegulatoryDomain;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2612
    iput-boolean v9, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisTimerStarted:Z

    .line 2615
    const/16 v6, 0x25

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "204"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    const-string v8, "206"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "208"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "212"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "214"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "216"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "218"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "219"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "220"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "222"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "225"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "228"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "230"

    aput-object v8, v6, v7

    const-string v7, "231"

    aput-object v7, v6, v10

    const/16 v7, 0xe

    const-string v8, "232"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "234"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "235"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "238"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "240"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "242"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "244"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "260"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "262"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "270"

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string v8, "272"

    aput-object v8, v6, v7

    const/16 v7, 0x19

    const-string v8, "274"

    aput-object v8, v6, v7

    const/16 v7, 0x1a

    const-string v8, "290"

    aput-object v8, v6, v7

    const/16 v7, 0x1b

    const-string v8, "295"

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    const-string v8, "340"

    aput-object v8, v6, v7

    const/16 v7, 0x1d

    const-string v8, "348"

    aput-object v8, v6, v7

    const/16 v7, 0x1e

    const-string v8, "362"

    aput-object v8, v6, v7

    const/16 v7, 0x1f

    const-string v8, "440"

    aput-object v8, v6, v7

    const/16 v7, 0x20

    const-string v8, "441"

    aput-object v8, v6, v7

    const/16 v7, 0x21

    const-string v8, "450"

    aput-object v8, v6, v7

    const/16 v7, 0x22

    const-string v8, "547"

    aput-object v8, v6, v7

    const/16 v7, 0x23

    const-string v8, "604"

    aput-object v8, v6, v7

    const/16 v7, 0x24

    const-string v8, "742"

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHighChannelsMccs:[Ljava/lang/String;

    .line 2623
    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2625
    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iput-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    .line 2627
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.HYSTERESIS_TIMER"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2628
    .local v2, hysteresisIntent:Landroid/content/Intent;
    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisIntent:Landroid/app/PendingIntent;

    .line 2630
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHighChannelMap:Ljava/util/HashMap;

    .line 2632
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    .line 2633
    .local v1, highChannel:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHighChannelsMccs:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 2634
    .local v5, mcc:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHighChannelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2636
    .end local v5           #mcc:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getMccChannels()I
    .locals 6

    .prologue
    const-string v5, "WifiService"

    .line 2702
    const/16 v0, 0xb

    .line 2703
    .local v0, channels:I
    iget-object v3, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/WifiService;->access$4100()[I

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2704
    iget-object v3, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2705
    .local v2, plmn:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 2706
    :cond_0
    const-string v3, "WifiService"

    const-string v3, "Could not get PLMN!"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    .end local v2           #plmn:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 2708
    .restart local v2       #plmn:Ljava/lang/String;
    :cond_2
    const-string v3, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PLMN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2710
    .local v1, mcc:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2711
    iget-object v3, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHighChannelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0xd

    move v0, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v3, 0xb

    move v0, v3

    goto :goto_1
.end method

.method private isValidChannel(I)Z
    .locals 5
    .parameter "channel"

    .prologue
    .line 2731
    const/4 v2, 0x0

    .line 2732
    .local v2, isValid:Z
    invoke-static {}, Lcom/android/server/WifiService;->access$4100()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    .line 2733
    .local v4, validChan:I
    if-ne v4, p1, :cond_1

    .line 2734
    const/4 v2, 0x1

    .line 2738
    .end local v4           #validChan:I
    :cond_0
    return v2

    .line 2732
    .restart local v4       #validChan:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private sendChannelMessage(IZ)Z
    .locals 5
    .parameter "channels"
    .parameter "persist"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2720
    iget-object v0, p0, Lcom/android/server/WifiService$RegulatoryDomain;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2721
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of channels set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    invoke-direct {p0}, Lcom/android/server/WifiService$RegulatoryDomain;->stopHysteresisTimer()V

    .line 2723
    iget-object v0, p0, Lcom/android/server/WifiService$RegulatoryDomain;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$WifiHandler;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    move v0, v4

    .line 2727
    :goto_1
    return v0

    :cond_0
    move v2, v3

    .line 2723
    goto :goto_0

    :cond_1
    move v0, v3

    .line 2727
    goto :goto_1
.end method

.method private declared-synchronized startHysteresisTimer()V
    .locals 6

    .prologue
    .line 2742
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisTimerStarted:Z

    if-nez v2, :cond_0

    .line 2743
    iget-object v2, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2744
    const-string v2, "WifiService"

    const-string v3, "Starting hysteresis timer"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long v0, v2, v4

    .line 2746
    .local v0, timeout:J
    iget-object v2, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2747
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisTimerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2749
    .end local v0           #timeout:J
    :cond_0
    monitor-exit p0

    return-void

    .line 2742
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized stopHysteresisTimer()V
    .locals 2

    .prologue
    .line 2752
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2753
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiService$RegulatoryDomain;->mHysteresisTimerStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2754
    monitor-exit p0

    return-void

    .line 2752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method setChannels(IZ)Z
    .locals 1
    .parameter "channels"
    .parameter "persist"

    .prologue
    .line 2690
    invoke-direct {p0, p1}, Lcom/android/server/WifiService$RegulatoryDomain;->isValidChannel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService$RegulatoryDomain;->getMccChannels()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 2691
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/WifiService$RegulatoryDomain;->sendChannelMessage(IZ)Z

    move-result v0

    .line 2693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 2675
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/WifiService$RegulatoryDomain;->sendChannelMessage(IZ)Z

    .line 2676
    return-void
.end method

.method updateChannels(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 2654
    iget-object v2, p0, Lcom/android/server/WifiService$RegulatoryDomain;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getNumAllowedChannels()I

    move-result v0

    .line 2655
    .local v0, configuredChannels:I
    invoke-direct {p0}, Lcom/android/server/WifiService$RegulatoryDomain;->getMccChannels()I

    move-result v1

    .line 2657
    .local v1, mccChannels:I
    if-le v1, v0, :cond_0

    .line 2658
    invoke-direct {p0, v1, v3}, Lcom/android/server/WifiService$RegulatoryDomain;->sendChannelMessage(IZ)Z

    .line 2668
    :goto_0
    return-void

    .line 2659
    :cond_0
    if-ge v1, v0, :cond_2

    .line 2660
    if-eqz p1, :cond_1

    .line 2661
    invoke-direct {p0, v1, v3}, Lcom/android/server/WifiService$RegulatoryDomain;->sendChannelMessage(IZ)Z

    goto :goto_0

    .line 2663
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService$RegulatoryDomain;->startHysteresisTimer()V

    goto :goto_0

    .line 2666
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService$RegulatoryDomain;->stopHysteresisTimer()V

    goto :goto_0
.end method
