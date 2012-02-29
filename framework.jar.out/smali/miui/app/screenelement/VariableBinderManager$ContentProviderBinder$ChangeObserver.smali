.class Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 249
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 258
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$ChangeObserver;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    invoke-virtual {v0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->onContentChanged()V

    .line 259
    return-void
.end method
