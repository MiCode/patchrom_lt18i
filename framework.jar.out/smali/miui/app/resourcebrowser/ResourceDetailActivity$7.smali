.class Lmiui/app/resourcebrowser/ResourceDetailActivity$7;
.super Ljava/lang/Object;
.source "ResourceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceDetailActivity;->enterNormalMode()V
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
    .line 484
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$7;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$7;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v0, v0, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ResourceDetailActivity$7;->this$0:Lmiui/app/resourcebrowser/ResourceDetailActivity;

    iget-object v1, v1, Lmiui/app/resourcebrowser/ResourceDetailActivity;->mPreview:Lmiui/widget/ScrollableScreenView;

    invoke-virtual {v1}, Lmiui/widget/ScrollableScreenView;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/ScrollableScreenView;->setCurrentScreen(I)V

    .line 487
    return-void
.end method
