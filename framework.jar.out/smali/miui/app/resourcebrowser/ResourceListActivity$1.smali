.class Lmiui/app/resourcebrowser/ResourceListActivity$1;
.super Ljava/lang/Object;
.source "ResourceListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceListActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceListActivity;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "v"
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
    .line 145
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceListActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceListActivity;

    invoke-virtual {v0, p3}, Lmiui/app/resourcebrowser/ResourceListActivity;->startDetailActivityForResource(I)V

    .line 146
    return-void
.end method
