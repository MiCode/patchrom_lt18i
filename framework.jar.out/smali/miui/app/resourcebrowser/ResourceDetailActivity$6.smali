.class Lmiui/app/resourcebrowser/ResourceDetailActivity$6;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterFullScreenMode(Landroid/view/View;)V
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
    .line 459
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$6;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 462
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$6;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$300(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 463
    return-void
.end method
