.class Lmiui/widget/GuidePopupWindow$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/GuidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/GuidePopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v1}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    #getter for: Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;
    invoke-static {v1}, Lmiui/widget/GuidePopupWindow;->access$000(Lmiui/widget/GuidePopupWindow;)Lmiui/widget/GuidePopupView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/GuidePopupView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 92
    .local v0, fadeOutAnimation:Landroid/view/animation/Animation;
    new-instance v1, Lmiui/widget/GuidePopupWindow$1$1;

    invoke-direct {v1, p0}, Lmiui/widget/GuidePopupWindow$1$1;-><init>(Lmiui/widget/GuidePopupWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 112
    iget-object v1, p0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    #getter for: Lmiui/widget/GuidePopupWindow;->mPopupView:Lmiui/widget/GuidePopupView;
    invoke-static {v1}, Lmiui/widget/GuidePopupWindow;->access$000(Lmiui/widget/GuidePopupWindow;)Lmiui/widget/GuidePopupView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/widget/GuidePopupView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    .end local v0           #fadeOutAnimation:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method
