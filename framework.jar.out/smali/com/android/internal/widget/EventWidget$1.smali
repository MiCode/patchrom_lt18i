.class Lcom/android/internal/widget/EventWidget$1;
.super Landroid/database/ContentObserver;
.source "EventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/EventWidget;->getContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/EventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/EventWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/widget/EventWidget$1;->this$0:Lcom/android/internal/widget/EventWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/EventWidget$1;->this$0:Lcom/android/internal/widget/EventWidget;

    #calls: Lcom/android/internal/widget/EventWidget;->updateFromContentProvider()V
    invoke-static {v0}, Lcom/android/internal/widget/EventWidget;->access$000(Lcom/android/internal/widget/EventWidget;)V

    .line 168
    return-void
.end method
