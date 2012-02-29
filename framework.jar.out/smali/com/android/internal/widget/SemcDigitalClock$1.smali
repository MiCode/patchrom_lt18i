.class Lcom/android/internal/widget/SemcDigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "SemcDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SemcDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SemcDigitalClock;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SemcDigitalClock;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/widget/SemcDigitalClock$1;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$1;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    #getter for: Lcom/android/internal/widget/SemcDigitalClock;->mLive:Z
    invoke-static {v0}, Lcom/android/internal/widget/SemcDigitalClock;->access$000(Lcom/android/internal/widget/SemcDigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$1;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    #setter for: Lcom/android/internal/widget/SemcDigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v0, v1}, Lcom/android/internal/widget/SemcDigitalClock;->access$102(Lcom/android/internal/widget/SemcDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$1;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    #getter for: Lcom/android/internal/widget/SemcDigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/widget/SemcDigitalClock;->access$300(Lcom/android/internal/widget/SemcDigitalClock;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/SemcDigitalClock$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/SemcDigitalClock$1$1;-><init>(Lcom/android/internal/widget/SemcDigitalClock$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
