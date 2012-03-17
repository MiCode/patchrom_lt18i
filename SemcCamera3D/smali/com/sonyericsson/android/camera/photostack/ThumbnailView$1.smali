.class Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;
.super Ljava/lang/Object;
.source "ThumbnailView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->createInsertAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;->this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;->this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    #getter for: Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->access$000(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;->this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    #getter for: Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->access$000(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;->this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    const/4 v1, 0x0

    #setter for: Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->mInsertAnimation:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->access$002(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/ThumbnailView$1;->this$0:Lcom/sonyericsson/android/camera/photostack/ThumbnailView;

    #calls: Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->updateAnimation()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/ThumbnailView;->access$100(Lcom/sonyericsson/android/camera/photostack/ThumbnailView;)V

    .line 322
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 314
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 311
    return-void
.end method
