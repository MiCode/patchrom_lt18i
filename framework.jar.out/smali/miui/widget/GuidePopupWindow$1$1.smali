.class Lmiui/widget/GuidePopupWindow$1$1;
.super Ljava/lang/Object;
.source "GuidePopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/GuidePopupWindow$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/widget/GuidePopupWindow$1;


# direct methods
.method constructor <init>(Lmiui/widget/GuidePopupWindow$1;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lmiui/widget/GuidePopupWindow$1$1;->this$1:Lmiui/widget/GuidePopupWindow$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 96
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow$1$1;->this$1:Lmiui/widget/GuidePopupWindow$1;

    iget-object v0, v0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lmiui/widget/GuidePopupWindow$1$1;->this$1:Lmiui/widget/GuidePopupWindow$1;

    iget-object v0, v0, Lmiui/widget/GuidePopupWindow$1;->this$0:Lmiui/widget/GuidePopupWindow;

    invoke-virtual {v0}, Lmiui/widget/GuidePopupWindow;->dismiss()V

    .line 99
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 104
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 109
    return-void
.end method
