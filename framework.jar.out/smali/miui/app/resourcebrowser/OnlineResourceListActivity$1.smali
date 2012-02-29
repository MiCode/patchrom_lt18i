.class Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;
.super Ljava/lang/Object;
.source "OnlineResourceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 104
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x60d0047

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->updateTabState(Z)V

    .line 108
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mAdapter:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/ResourceAdapter;->refreshDataSet()V

    .line 109
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 110
    return-void

    :cond_0
    move v1, v3

    .line 107
    goto :goto_0
.end method
