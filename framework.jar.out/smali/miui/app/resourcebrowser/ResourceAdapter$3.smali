.class Lmiui/app/resourcebrowser/ResourceAdapter$3;
.super Ljava/lang/Object;
.source "ResourceAdapter.java"

# interfaces
.implements Lmiui/app/resourcebrowser/BatchMediaPlayer$BatchPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceAdapter;->initPlayer()V
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
    .line 328
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 6
    .parameter "hasError"

    .prologue
    const/4 v5, 0x0

    .line 342
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x602031f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-boolean v1, v1, Lmiui/app/resourcebrowser/ResourceAdapter;->mShowRingtoneName:Z

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 346
    .local v0, parent:Landroid/view/View;
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    const v2, 0x60d0024

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;
    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$000(Lmiui/app/resourcebrowser/ResourceAdapter;)Lmiui/app/resourcebrowser/Resource;

    move-result-object v3

    const-string v4, "m_title"

    #calls: Lmiui/app/resourcebrowser/ResourceAdapter;->bindText(Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3, v4}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$300(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/view/View;ILmiui/app/resourcebrowser/Resource;Ljava/lang/String;)V

    .line 349
    .end local v0           #parent:Landroid/view/View;
    :cond_0
    if-eqz p1, :cond_1

    .line 350
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceAdapter;->mContext:Landroid/app/Activity;

    const v2, 0x609005e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 352
    :cond_1
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #setter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingResource:Lmiui/app/resourcebrowser/Resource;
    invoke-static {v1, v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$002(Lmiui/app/resourcebrowser/ResourceAdapter;Lmiui/app/resourcebrowser/Resource;)Lmiui/app/resourcebrowser/Resource;

    .line 353
    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #setter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v1, v5}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$202(Lmiui/app/resourcebrowser/ResourceAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 354
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 4
    .parameter "ringtonePath"
    .parameter "current"
    .parameter "total"

    .prologue
    .line 331
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    iget-boolean v3, v3, Lmiui/app/resourcebrowser/ResourceAdapter;->mShowRingtoneName:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 332
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    #getter for: Lmiui/app/resourcebrowser/ResourceAdapter;->mCurrentPlayingButton:Landroid/widget/ImageView;
    invoke-static {v3}, Lmiui/app/resourcebrowser/ResourceAdapter;->access$200(Lmiui/app/resourcebrowser/ResourceAdapter;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 333
    .local v1, parent:Landroid/view/View;
    const v3, 0x60d0024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 334
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 335
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceAdapter$3;->this$0:Lmiui/app/resourcebrowser/ResourceAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lmiui/app/resourcebrowser/ResourceAdapter;->getFormatPlayingRingtoneName(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    .end local v1           #parent:Landroid/view/View;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
