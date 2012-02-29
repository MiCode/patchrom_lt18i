.class Lcom/android/internal/telephony/RIL$IccHandler;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IccHandler"
.end annotation


# static fields
.field private static final EVENT_GET_ICC_CARD_STATUS_DONE:I = 0x1

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    .line 471
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 472
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-string v9, "Currently we don\'t handle SIMs of type: "

    const-string v8, "RILJ"

    .line 489
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 491
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 492
    .local v2, ar:Landroid/os/AsyncResult;
    iget-object v6, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 493
    const-string v6, "RILJ"

    const-string v6, "IccCardStatusDone shouldn\'t return exceptions!"

    iget-object v7, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 496
    :cond_1
    iget-object v5, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/IccCardStatus;

    .line 497
    .local v5, status:Lcom/android/internal/telephony/IccCardStatus;
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v6

    if-nez v6, :cond_3

    .line 499
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 501
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->isConsideredCDMAMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 502
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto :goto_0

    .line 510
    :cond_3
    const/4 v4, 0x0

    .line 511
    .local v4, index:I
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v6}, Lcom/android/internal/telephony/RIL;->isConsideredCDMAMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 512
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v4

    .line 518
    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 519
    .local v3, cardApp:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v0, v3, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 520
    .local v0, app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    iget-object v1, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 521
    .local v1, app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    sget-object v6, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplication$AppState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    .line 525
    :pswitch_1
    sget-object v6, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 534
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    .end local v0           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v1           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v3           #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v4

    goto :goto_1

    .line 528
    .restart local v0       #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .restart local v1       #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .restart local v3       #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 531
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 539
    :pswitch_4
    sget-object v6, Lcom/android/internal/telephony/RIL$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 548
    const-string v6, "RILJ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Currently we don\'t handle SIMs of type: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 545
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    goto/16 :goto_0

    .line 558
    .end local v0           #app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;
    .end local v1           #app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #cardApp:Lcom/android/internal/telephony/IccCardApplication;
    .end local v4           #index:I
    .end local v5           #status:Lcom/android/internal/telephony/IccCardStatus;
    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 521
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 525
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 539
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RIL;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 479
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/RIL;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$IccHandler;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL$IccHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->getIccCardStatus(Landroid/os/Message;)V

    .line 482
    return-void
.end method
