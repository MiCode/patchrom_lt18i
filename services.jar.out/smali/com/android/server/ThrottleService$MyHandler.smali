.class Lcom/android/server/ThrottleService$MyHandler;
.super Landroid/os/Handler;
.source "ThrottleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThrottleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThrottleService;


# direct methods
.method public constructor <init>(Lcom/android/server/ThrottleService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    .line 356
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    return-void
.end method

.method private calculatePeriodEnd(J)Ljava/util/Calendar;
    .locals 9
    .parameter "now"

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 679
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 680
    .local v1, end:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 681
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 682
    .local v0, day:I
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 683
    invoke-virtual {v1, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 684
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 685
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 686
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 687
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 688
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 689
    .local v2, month:I
    if-ne v2, v8, :cond_0

    .line 690
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 691
    const/4 v2, -0x1

    .line 693
    :cond_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 697
    .end local v2           #month:I
    :cond_1
    const-string v3, "persist.throttle.testing"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 699
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 700
    const/16 v3, 0xd

    const/16 v4, 0x258

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 702
    :cond_2
    return-object v1
.end method

.method private calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .parameter "end"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 705
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 706
    .local v1, start:Ljava/util/Calendar;
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 707
    .local v0, month:I
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 708
    const/16 v0, 0xc

    .line 709
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 711
    :cond_0
    sub-int v2, v0, v3

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 714
    const-string v2, "persist.throttle.testing"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #start:Ljava/util/Calendar;
    check-cast v1, Ljava/util/Calendar;

    .line 716
    .restart local v1       #start:Ljava/util/Calendar;
    const/16 v2, 0xd

    const/16 v3, -0x258

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 718
    :cond_1
    return-object v1
.end method

.method private checkThrottleAndPostNotification(J)V
    .locals 23
    .parameter "currentTotal"

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 570
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    cmp-long v19, p1, v19

    if-lez v19, :cond_3

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 573
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static/range {v20 .. v21}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 574
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    const-string v19, "ThrottleService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Threshold "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " exceeded!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v22

    invoke-interface/range {v19 .. v22}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804ba

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 585
    const v19, 0x10403ba

    const v20, 0x10403bb

    const v21, 0x10804ba

    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    .line 590
    new-instance v5, Landroid/content/Intent;

    const-string v19, "android.net.thrott.THROTTLE_ACTION"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    .local v5, broadcast:Landroid/content/Intent;
    const-string v19, "level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v20

    move-object v0, v5

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 574
    .end local v5           #broadcast:Landroid/content/Intent;
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 579
    :catch_0
    move-exception v19

    move-object/from16 v6, v19

    .line 580
    .local v6, e:Ljava/lang/Exception;
    const-string v19, "ThrottleService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "error setting Throttle: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 596
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ThrottleService$MyHandler;->clearThrottleAndNotification()V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_0

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodStart()J

    move-result-wide v13

    .line 610
    .local v13, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodEnd()J

    move-result-wide v7

    .line 611
    .local v7, end:J
    sub-long v11, v7, v13

    .line 612
    .local v11, periodLength:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 613
    .local v9, now:J
    sub-long v15, v9, v13

    .line 614
    .local v15, timeUsed:J
    const-wide/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v21 .. v21}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v21

    mul-long v19, v19, v21

    mul-long v19, v19, v15

    add-long v21, v15, v11

    div-long v17, v19, v21

    .line 615
    .local v17, warningThreshold:J
    cmp-long v19, p1, v17

    if-lez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v19

    const-wide/16 v21, 0x4

    div-long v19, v19, v21

    cmp-long v19, p1, v19

    if-lez v19, :cond_4

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2300(Lcom/android/server/ThrottleService;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/ThrottleService;->access$2302(Lcom/android/server/ThrottleService;Z)Z

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804ba

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 619
    const v19, 0x10403b8

    const v20, 0x10403b9

    const v21, 0x10804ba

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$MyHandler;->postNotification(IIII)V

    goto/16 :goto_0

    .line 625
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2300(Lcom/android/server/ThrottleService;)Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static/range {v19 .. v19}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v19

    const v20, 0x10804ba

    invoke-virtual/range {v19 .. v20}, Landroid/app/NotificationManager;->cancel(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static/range {v19 .. v20}, Lcom/android/server/ThrottleService;->access$2302(Lcom/android/server/ThrottleService;Z)Z

    goto/16 :goto_0
.end method

.method private declared-synchronized clearThrottleAndNotification()V
    .locals 6

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 663
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static {v3, v4}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 664
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :try_start_2
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 670
    :goto_0
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.thrott.THROTTLE_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 671
    .local v0, broadcast:Landroid/content/Intent;
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 673
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v2

    const v3, 0x10804ba

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 674
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mWarningNotificationSent:Z
    invoke-static {v2, v3}, Lcom/android/server/ThrottleService;->access$2302(Lcom/android/server/ThrottleService;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 676
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 664
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 661
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 667
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 668
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "ThrottleService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error clearing Throttle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private onIfaceUp()V
    .locals 5

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$100(Lcom/android/server/ThrottleService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 525
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static {v4}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 528
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ThrottleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error setting Throttle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onNtpAlarm()V
    .locals 5

    .prologue
    .line 534
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 535
    .local v0, client:Landroid/net/SntpClient;
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mCachedNtpGuard:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$1800(Lcom/android/server/ThrottleService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v3

    #setter for: Lcom/android/server/ThrottleService;->cachedNtp:J
    invoke-static {v2, v3, v4}, Lcom/android/server/ThrottleService;->access$1902(Lcom/android/server/ThrottleService;J)J

    .line 538
    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    #setter for: Lcom/android/server/ThrottleService;->cachedNtpTimestamp:J
    invoke-static {v2, v3, v4}, Lcom/android/server/ThrottleService;->access$2002(Lcom/android/server/ThrottleService;J)J

    .line 539
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static {v1, v2}, Lcom/android/server/ThrottleService;->access$2102(Lcom/android/server/ThrottleService;Z)Z

    .line 543
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    :cond_1
    :goto_0
    return-void

    .line 539
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->cachedNtpTimestamp:J
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$2000(Lcom/android/server/ThrottleService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I
    invoke-static {v3}, Lcom/android/server/ThrottleService;->access$1000(Lcom/android/server/ThrottleService;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static {v1, v2}, Lcom/android/server/ThrottleService;->access$2102(Lcom/android/server/ThrottleService;Z)Z

    goto :goto_0
.end method

.method private onPolicyChanged()V
    .locals 12

    .prologue
    .line 403
    const-string v8, "persist.throttle.testing"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 405
    .local v7, testing:Z
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 407
    .local v6, pollingPeriod:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_polling_sec"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$402(Lcom/android/server/ThrottleService;I)I

    .line 411
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-long v2, v8

    .line 413
    .local v2, defaultThreshold:J
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 415
    .local v4, defaultValue:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v8

    .line 416
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "throttle_threshold_bytes"

    invoke-static {v10, v11, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    #setter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 418
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "throttle_value_kbitsps"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    #setter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static {v9, v10}, Lcom/android/server/ThrottleService;->access$602(Lcom/android/server/ThrottleService;I)I

    .line 420
    if-eqz v7, :cond_0

    .line 421
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v10, 0x3c

    #setter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v9, v10}, Lcom/android/server/ThrottleService;->access$402(Lcom/android/server/ThrottleService;I)I

    .line 422
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const-wide/32 v10, 0x100000

    #setter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 424
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_reset_day"

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$702(Lcom/android/server/ThrottleService;I)I

    .line 428
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v8

    const/16 v9, 0x1c

    if-le v8, v9, :cond_2

    .line 430
    :cond_1
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 431
    .local v5, g:Ljava/util/Random;
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/16 v9, 0x1c

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    #setter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$702(Lcom/android/server/ThrottleService;I)I

    .line 432
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "throttle_reset_day"

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    .end local v5           #g:Ljava/util/Random;
    :cond_2
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    monitor-enter v8

    .line 436
    :try_start_1
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    .line 437
    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const-wide/16 v10, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v9, v10, v11}, Lcom/android/server/ThrottleService;->access$502(Lcom/android/server/ThrottleService;J)J

    .line 439
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0017

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 443
    .local v1, defaultNotificationType:I
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_notification_type"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$902(Lcom/android/server/ThrottleService;I)I

    .line 446
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    iget-object v9, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "throttle_max_ntp_cache_age_sec"

    const v11, 0x15180

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$1002(Lcom/android/server/ThrottleService;I)I

    .line 449
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    .line 450
    const-string v8, "ThrottleService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPolicyChanged testing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", period="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", threshold="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThrottleValue:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$600(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", resetDay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyResetDay:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$700(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", noteType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyNotificationsAllowedMask:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$900(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", maxNtpCacheAge="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mMaxNtpCacheAgeSec:I
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$1000(Lcom/android/server/ThrottleService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_4
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v9, -0x1

    #setter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static {v8, v9}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 459
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    .line 461
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    return-void

    .line 424
    .end local v0           #broadcast:Landroid/content/Intent;
    .end local v1           #defaultNotificationType:I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 439
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9
.end method

.method private onPollAlarm()V
    .locals 26

    .prologue
    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 469
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyPollPeriodSec:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$400(Lcom/android/server/ThrottleService;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v11, v13, v22

    .line 471
    .local v11, next:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #calls: Lcom/android/server/ThrottleService;->checkForAuthoritativeTime()V
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1100(Lcom/android/server/ThrottleService;)V

    .line 473
    const-wide/16 v7, 0x0

    .line 474
    .local v7, incRead:J
    const-wide/16 v9, 0x0

    .line 476
    .local v9, incWrite:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/os/INetworkManagementService;->getInterfaceRxCounter(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)J

    move-result-wide v24

    sub-long v7, v22, v24

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mNMService:Landroid/os/INetworkManagementService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1200(Lcom/android/server/ThrottleService;)Landroid/os/INetworkManagementService;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/os/INetworkManagementService;->getInterfaceTxCounter(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v24

    sub-long v9, v22, v24

    .line 480
    const-wide/16 v22, 0x0

    cmp-long v22, v7, v22

    if-ltz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v9, v22

    if-gez v22, :cond_1

    .line 481
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1300(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    add-long v7, v7, v22

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1400(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    add-long v9, v9, v22

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mLastRead:J
    invoke-static/range {v22 .. v24}, Lcom/android/server/ThrottleService;->access$1302(Lcom/android/server/ThrottleService;J)J

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    const-wide/16 v23, 0x0

    #setter for: Lcom/android/server/ThrottleService;->mLastWrite:J
    invoke-static/range {v22 .. v24}, Lcom/android/server/ThrottleService;->access$1402(Lcom/android/server/ThrottleService;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_1
    :goto_0
    const-string v22, "true"

    const-string v23, "gsm.operator.isroaming"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 492
    .local v19, roaming:Z
    if-nez v19, :cond_2

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide v1, v7

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/ThrottleService$DataRecorder;->addData(JJ)V

    .line 496
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v15

    .line 497
    .local v15, periodRx:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v17

    .line 498
    .local v17, periodTx:J
    add-long v20, v15, v17

    .line 499
    .local v20, total:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_3

    .line 500
    const-string v22, "ThrottleService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onPollAlarm - roaming ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", read ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", written ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", new total ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/ThrottleService;->access$1314(Lcom/android/server/ThrottleService;J)J

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/ThrottleService;->access$1414(Lcom/android/server/ThrottleService;J)J

    .line 506
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->checkThrottleAndPostNotification(J)V

    .line 508
    new-instance v5, Landroid/content/Intent;

    const-string v22, "android.net.thrott.POLL_ACTION"

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v5, broadcast:Landroid/content/Intent;
    const-string v22, "cycleRead"

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 510
    const-string v22, "cycleWrite"

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    const-string v22, "cycleStart"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ThrottleService;->getPeriodStartTime(Ljava/lang/String;)J

    move-result-wide v23

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 512
    const-string v22, "cycleEnd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mIface:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$800(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/ThrottleService;->getResetTime(Ljava/lang/String;)J

    move-result-wide v23

    move-object v0, v5

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v23 .. v23}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/ThrottleService;->mPendingPollIntent:Landroid/app/PendingIntent;
    invoke-static/range {v24 .. v24}, Lcom/android/server/ThrottleService;->access$1500(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-wide v2, v11

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 517
    return-void

    .line 486
    .end local v5           #broadcast:Landroid/content/Intent;
    .end local v15           #periodRx:J
    .end local v17           #periodTx:J
    .end local v19           #roaming:Z
    .end local v20           #total:J
    :catch_0
    move-exception v22

    move-object/from16 v6, v22

    .line 487
    .local v6, e:Landroid/os/RemoteException;
    const-string v22, "ThrottleService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got remoteException in onPollAlarm:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onRebootRecovery()V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/ThrottleService;->mThrottleIndex:I
    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$102(Lcom/android/server/ThrottleService;I)I

    .line 389
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v1, Lcom/android/server/ThrottleService$DataRecorder;

    iget-object v2, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ThrottleService$DataRecorder;-><init>(Landroid/content/Context;Lcom/android/server/ThrottleService;)V

    #setter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v0, v1}, Lcom/android/server/ThrottleService;->access$202(Lcom/android/server/ThrottleService;Lcom/android/server/ThrottleService$DataRecorder;)Lcom/android/server/ThrottleService$DataRecorder;

    .line 392
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 397
    iget-object v0, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ThrottleService;->access$000(Lcom/android/server/ThrottleService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 399
    return-void
.end method

.method private onResetAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 722
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPolicyThreshold:J
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$500(Lcom/android/server/ThrottleService;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 723
    const-string v6, "ThrottleService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResetAlarm - last period had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodRx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes read and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v8}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/ThrottleService$DataRecorder;->getPeriodTx(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " written"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #calls: Lcom/android/server/ThrottleService;->getBestTime()J
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2500(Lcom/android/server/ThrottleService;)J

    move-result-wide v1

    .line 729
    .local v1, now:J
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNtpActive:Z
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2100(Lcom/android/server/ThrottleService;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNtpServer:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1700(Lcom/android/server/ThrottleService;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 730
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodEnd(J)Ljava/util/Calendar;

    move-result-object v0

    .line 731
    .local v0, end:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Lcom/android/server/ThrottleService$MyHandler;->calculatePeriodStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    .line 733
    .local v5, start:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mRecorder:Lcom/android/server/ThrottleService$DataRecorder;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$200(Lcom/android/server/ThrottleService;)Lcom/android/server/ThrottleService$DataRecorder;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/server/ThrottleService$DataRecorder;->setNextPeriod(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 734
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    .line 737
    :cond_2
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2600(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 738
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v3, v6, v1

    .line 740
    .local v3, offset:J
    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$1600(Lcom/android/server/ThrottleService;)Landroid/app/AlarmManager;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v3

    iget-object v10, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mPendingResetIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/ThrottleService;->access$2600(Lcom/android/server/ThrottleService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 746
    .end local v0           #end:Ljava/util/Calendar;
    .end local v3           #offset:J
    .end local v5           #start:Ljava/util/Calendar;
    :cond_3
    return-void
.end method

.method private postNotification(IIII)V
    .locals 8
    .parameter "titleInt"
    .parameter "messageInt"
    .parameter "icon"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 637
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.DataUsage"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const/high16 v5, 0x4000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 640
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 642
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 643
    .local v3, r:Landroid/content/res/Resources;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 644
    .local v4, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 645
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    if-nez v5, :cond_0

    .line 646
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    #setter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5, v6}, Lcom/android/server/ThrottleService;->access$2402(Lcom/android/server/ThrottleService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 647
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 649
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p3, v5, Landroid/app/Notification;->icon:I

    .line 650
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 652
    :cond_0
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput p4, v5, Landroid/app/Notification;->flags:I

    .line 653
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 654
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$300(Lcom/android/server/ThrottleService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 656
    iget-object v5, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v5}, Lcom/android/server/ThrottleService;->access$2200(Lcom/android/server/ThrottleService;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v6}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/server/ThrottleService$MyHandler;->this$0:Lcom/android/server/ThrottleService;

    #getter for: Lcom/android/server/ThrottleService;->mThrottlingNotification:Landroid/app/Notification;
    invoke-static {v7}, Lcom/android/server/ThrottleService;->access$2400(Lcom/android/server/ThrottleService;)Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 657
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    return-void

    .line 363
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onRebootRecovery()V

    goto :goto_0

    .line 366
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPolicyChanged()V

    goto :goto_0

    .line 369
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onPollAlarm()V

    goto :goto_0

    .line 372
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onResetAlarm()V

    goto :goto_0

    .line 375
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onIfaceUp()V

    goto :goto_0

    .line 378
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/ThrottleService$MyHandler;->onNtpAlarm()V

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
