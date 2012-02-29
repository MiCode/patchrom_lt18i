.class Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SemcDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SemcDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SemcDigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SemcDigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    #calls: Lcom/android/internal/widget/SemcDigitalClock;->setDateFormat()V
    invoke-static {v0}, Lcom/android/internal/widget/SemcDigitalClock;->access$400(Lcom/android/internal/widget/SemcDigitalClock;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    #calls: Lcom/android/internal/widget/SemcDigitalClock;->updateTime()V
    invoke-static {v0}, Lcom/android/internal/widget/SemcDigitalClock;->access$200(Lcom/android/internal/widget/SemcDigitalClock;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/SemcDigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/SemcDigitalClock;

    #calls: Lcom/android/internal/widget/SemcDigitalClock;->setDate()V
    invoke-static {v0}, Lcom/android/internal/widget/SemcDigitalClock;->access$500(Lcom/android/internal/widget/SemcDigitalClock;)V

    .line 130
    return-void
.end method
