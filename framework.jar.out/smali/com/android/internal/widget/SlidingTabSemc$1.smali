.class Lcom/android/internal/widget/SlidingTabSemc$1;
.super Ljava/lang/Object;
.source "SlidingTabSemc.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingTabSemc;->animateExpandedToDisabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingTabSemc;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingTabSemc;)V
    .locals 0
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTabSemc$1;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTabSemc$1;->this$0:Lcom/android/internal/widget/SlidingTabSemc;

    #getter for: Lcom/android/internal/widget/SlidingTabSemc;->mExpandedButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/SlidingTabSemc;->access$000(Lcom/android/internal/widget/SlidingTabSemc;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 515
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 514
    return-void
.end method
