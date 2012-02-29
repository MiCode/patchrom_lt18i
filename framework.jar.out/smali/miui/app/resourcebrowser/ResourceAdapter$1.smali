.class Lmiui/app/resourcebrowser/ResourceAdapter$1;
.super Ljava/lang/Object;
.source "ResourceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceAdapter;->bindCombineView(Landroid/view/View;ILjava/util/List;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceAdapter;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$1;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    .local v0, tag:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 145
    .end local p0
    :goto_0
    return-void

    .line 144
    .restart local p0
    :cond_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$1;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-object p0, v1, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/ResourceListActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/app/resourcebrowser/ResourceListActivity;->startDetailActivityForResource(I)V

    goto :goto_0
.end method
