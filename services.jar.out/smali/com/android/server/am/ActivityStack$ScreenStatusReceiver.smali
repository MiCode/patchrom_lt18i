.class Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 4341
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 4345
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson.intent.action.stk.check_screen_idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4346
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    const-string v4, "SCREEN_STATUS_REQUEST"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z
    invoke-static {v3, v4}, Lcom/android/server/am/ActivityStack;->access$002(Lcom/android/server/am/ActivityStack;Z)Z

    .line 4347
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    const-string v4, "SCREEN_STATUS_AVAILABLE_REQUEST"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    #setter for: Lcom/android/server/am/ActivityStack;->mScreenStatusAvailableRequest:Z
    invoke-static {v3, v4}, Lcom/android/server/am/ActivityStack;->access$102(Lcom/android/server/am/ActivityStack;Z)Z

    .line 4349
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    #getter for: Lcom/android/server/am/ActivityStack;->mScreenStatusRequest:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityStack;->access$000(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4350
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 4351
    .local v2, top:I
    if-ltz v2, :cond_0

    .line 4352
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.intent.action.stk.idle_screen"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4353
    .local v0, StkIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4354
    .local v1, p:Lcom/android/server/am/ActivityRecord;
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4355
    const-string v3, "SCREEN_IDLE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4356
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    #calls: Lcom/android/server/am/ActivityStack;->screenStatusAvailable(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/am/ActivityStack;->access$200(Lcom/android/server/am/ActivityStack;Landroid/content/Intent;)V

    .line 4360
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4364
    .end local v0           #StkIntent:Landroid/content/Intent;
    .end local v1           #p:Lcom/android/server/am/ActivityRecord;
    .end local v2           #top:I
    :cond_0
    return-void

    .line 4358
    .restart local v0       #StkIntent:Landroid/content/Intent;
    .restart local v1       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v2       #top:I
    :cond_1
    const-string v3, "SCREEN_IDLE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
