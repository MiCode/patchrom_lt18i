.class Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$1;
.super Ljava/lang/Object;
.source "BrowserLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->setupIcons(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer$1;->this$0:Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/viewer/layer/BrowserLayer;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchGallery(Landroid/app/Activity;)V

    .line 530
    return-void
.end method
