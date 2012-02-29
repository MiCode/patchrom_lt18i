.class Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;
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
    .line 145
    iput-object p1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 148
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #getter for: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->mSearchInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$200(Lmiui/app/resourcebrowser/OnlineResourceListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, keyword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lmiui/app/resourcebrowser/OnlineResourceListActivity$3;->this$0:Lmiui/app/resourcebrowser/OnlineResourceListActivity;

    #calls: Lmiui/app/resourcebrowser/OnlineResourceListActivity;->setKeyword(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lmiui/app/resourcebrowser/OnlineResourceListActivity;->access$300(Lmiui/app/resourcebrowser/OnlineResourceListActivity;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
