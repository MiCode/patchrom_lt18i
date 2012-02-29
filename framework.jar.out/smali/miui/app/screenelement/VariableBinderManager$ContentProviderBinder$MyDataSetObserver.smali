.class Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;Lmiui/app/screenelement/VariableBinderManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;-><init>(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    #calls: Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->access$200(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V

    .line 272
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder$MyDataSetObserver;->this$0:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    #calls: Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->updateVariables()V
    invoke-static {v0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->access$200(Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;)V

    .line 277
    return-void
.end method
