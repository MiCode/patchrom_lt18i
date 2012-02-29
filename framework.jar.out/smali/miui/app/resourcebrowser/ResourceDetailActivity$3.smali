.class Lmiui/app/resourcebrowser/ResourceDetailActivity$3;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupButton()V
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
    .line 263
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$3;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$3;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x6090064

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lmiui/app/resourcebrowser/ResourceDetailActivity$3$1;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$3$1;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void
.end method
