.class Lmiui/app/resourcebrowser/ResourceDetailActivity$3$1;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$3;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$3$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 272
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$3$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$3;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity$3;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->delete()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$200(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 273
    return-void
.end method
