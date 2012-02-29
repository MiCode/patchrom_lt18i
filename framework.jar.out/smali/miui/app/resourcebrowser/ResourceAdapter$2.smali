.class Lmiui/app/resourcebrowser/ResourceAdapter$2;
.super Ljava/lang/Object;
.source "ResourceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceAdapter;->setThumbnail(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

.field final synthetic val$data:Lmiui/app/resourcebrowser/Resource;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceAdapter;Lmiui/app/resourcebrowser/Resource;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iput-object p2, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$data:Lmiui/app/resourcebrowser/Resource;

    iput-object p3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 256
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$data:Lmiui/app/resourcebrowser/Resource;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;
    invoke-static {v2}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$000(Lmiui/app/resourcebrowser/ResourceAdapter;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/resourcebrowser/Resource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 257
    .local v0, isGoingToPlay:Z
    :goto_0
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->stopMusic()V

    .line 258
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$data:Lmiui/app/resourcebrowser/Resource;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/Resource;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-object v2, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$view:Landroid/widget/ImageView;

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$2;->val$data:Lmiui/app/resourcebrowser/Resource;

    #calls: Lmiui/app/resourcebrowser/ResourceAdapter;->playMusic(Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;)V
    invoke-static {v1, v2, v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$100(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/widget/ImageView;Lmiui/app/resourcebrowser/Resource;)V

    .line 261
    :cond_0
    return-void

    .line 256
    .end local v0           #isGoingToPlay:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
