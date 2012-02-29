.class Lmiui/app/resourcebrowser/ResourceDetailActivity$8;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$8;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 508
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$8;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterFullScreenMode(I)V
    invoke-static {v0, v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$400(Lmiui/app/resourcebrowser/ResourceDetailActivity;I)V

    .line 509
    return-void
.end method
