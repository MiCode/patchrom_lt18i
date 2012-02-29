.class Lmiui/app/resourcebrowser/ResourceDetailActivity$1;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Lmiui/widget/ScrollableScreenView$OnScrollOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->setupUI()V
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
    .line 202
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollOut(Landroid/view/View;I)Z
    .locals 2
    .parameter "view"
    .parameter "direction"

    .prologue
    const/4 v1, 0x1

    .line 205
    if-nez p2, :cond_0

    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-boolean v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasPrevious:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->navigateToPreviousResource()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$000(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    move v0, v1

    .line 212
    :goto_0
    return v0

    .line 208
    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-boolean v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mHasNext:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$1;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    #calls: Lmiui/app/resourcebrowser/ResourceDetailActivity;->navigateToNextResource()V
    invoke-static {v0}, Lmiui/app/resourcebrowser/ResourceDetailActivity;->access$100(Lmiui/app/resourcebrowser/ResourceDetailActivity;)V

    move v0, v1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
