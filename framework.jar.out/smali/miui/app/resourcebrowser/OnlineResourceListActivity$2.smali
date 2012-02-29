.class Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;
.super Ljava/lang/Object;
.source "OnlineResourceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$100(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceCategory;->getCode()Ljava/lang/String;

    move-result-object v0

    #setter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryCode:Ljava/lang/String;
    invoke-static {v1, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$002(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    check-cast v0, Lmiui/app/resourcebrowser/OnlineResourceAdapter;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$2;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mCategoryCode:Ljava/lang/String;
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$000(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/OnlineResourceAdapter;->setCategoryCode(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
