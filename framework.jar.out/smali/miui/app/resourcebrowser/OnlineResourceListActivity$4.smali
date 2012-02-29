.class Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;
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
    .line 156
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mOpenText:Ljava/lang/String;
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$500(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$4;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchToggle:Landroid/widget/TextView;
    invoke-static {v2}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$400(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->updateSearchToggleState(Z)V

    .line 160
    return-void
.end method
