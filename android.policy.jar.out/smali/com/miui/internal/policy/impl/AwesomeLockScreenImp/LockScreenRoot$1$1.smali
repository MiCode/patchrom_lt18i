.class Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;
.super Ljava/lang/Object;
.source "LockScreenRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

.field final synthetic val$_intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iput-object p2, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->val$_intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const-string v11, "LockScreenRoot"

    const-string v10, ","

    .line 59
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->val$_intent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.update_application_message"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, msg:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    iget-object v6, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->val$_intent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.update_application_flatten_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->translateName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$400(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 63
    const-string v5, "LockScreenRoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognozed update: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, val:I
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$500(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mVariables:Lmiui/app/screenelement/Variables;

    const/4 v6, 0x0

    int-to-double v7, v4

    invoke-virtual {v5, v6, v2, v7, v8}, Lmiui/app/screenelement/Variables;->put(Ljava/lang/String;Ljava/lang/String;D)V

    .line 69
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$600(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_enable_notification"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mContext:Lmiui/app/screenelement/ScreenContext;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$700(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lmiui/app/screenelement/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/app/screenelement/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pref_key_enable_wake_up_screen"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    move v3, v9

    .line 74
    .local v3, smsNotify:Z
    :goto_1
    const-string v5, "sms_unread_count"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    .line 75
    iget-object v5, p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1$1;->this$1:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;

    iget-object v5, v5, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$1;->this$0:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    #getter for: Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->mUnlockerCallback:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;
    invoke-static {v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->access$800(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;

    move-result-object v5

    const/16 v6, 0x61a8

    invoke-interface {v5, v6}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$UnlockerCallback;->pokeWakelock(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v3           #smsNotify:Z
    .end local v4           #val:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 78
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "LockScreenRoot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unrecognozed message, not a number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 69
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #val:I
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    goto :goto_1
.end method
