.class Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceDetailActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 251
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090059

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090057

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090055

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090058

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    :cond_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;->this$1:Lmiui/app/resourcebrowser/ResourceDetailActivity$2;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    :cond_1
    return-void
.end method
