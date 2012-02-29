.class Lmiui/app/resourcebrowser/ResourceDetailActivity$10;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->bindScreenRingtoneView()V
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
    .line 623
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const v1, 0x6020318

    .line 626
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 628
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->initPlayer()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$500(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    .line 629
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->start()V

    .line 637
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x602031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 632
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->pause()V

    goto :goto_0

    .line 634
    :cond_1
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 635
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$10;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mBatchPlayer:Lmiui/app/resourcebrowser/BatchMediaPlayer;

    invoke-virtual {v0}, Lmiui/app/resourcebrowser/BatchMediaPlayer;->start()V

    goto :goto_0
.end method
