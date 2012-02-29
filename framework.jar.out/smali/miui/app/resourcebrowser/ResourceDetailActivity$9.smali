.class Lmiui/app/resourcebrowser/ResourceDetailActivity$9;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->initPlayer()V
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
    .line 574
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 3
    .parameter "hasError"

    .prologue
    .line 584
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPlayButton:Landroid/widget/ImageView;

    const v1, 0x602031b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getFormatTitleBeforePlayingRingtone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_0
    if-eqz p1, :cond_1

    .line 589
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    const v1, 0x609005e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 591
    :cond_1
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 577
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mRingtoneName:Landroid/widget/TextView;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$9;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-virtual {v1, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    :cond_0
    return-void
.end method
