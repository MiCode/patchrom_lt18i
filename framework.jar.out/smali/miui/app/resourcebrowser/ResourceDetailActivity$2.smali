.class Lmiui/app/resourcebrowser/ResourceDetailActivity$2;
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
    .line 233
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 236
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 237
    .local v0, buttonText:Ljava/lang/CharSequence;
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090059

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->pick()V

    .line 247
    :cond_0
    :goto_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mDownloadButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mhandler:Landroid/os/Handler;

    new-instance v2, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;

    invoke-direct {v2, p0}, Lmiui/app/resourcebrowser/ResourceDetailActivity$2$1;-><init>(Lmiui/app/resourcebrowser/ResourceDetailActivity$2;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090057

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->apply()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090055

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->download()V

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v2, 0x6090058

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$2;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->update()V

    goto :goto_0
.end method
