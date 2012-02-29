.class final Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler$CatchingWorkerHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 192
    iput-object p1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    .line 193
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 194
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 189
    new-instance v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler$CatchingWorkerHandler;-><init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 198
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$QueryHandler;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    #calls: Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->access$100(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Landroid/database/Cursor;)V

    .line 199
    return-void
.end method
