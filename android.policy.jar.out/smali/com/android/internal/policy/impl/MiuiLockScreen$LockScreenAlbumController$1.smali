.class Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;-><init>(Lcom/android/internal/policy/impl/MiuiLockScreen;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

.field final synthetic val$this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iput-object p2, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->val$this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1501
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mAlbumBm:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$900(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1503
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1509
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1511
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mTempAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1300(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setVisibility(I)V

    .line 1512
    return-void

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mAlbumView:Lcom/miui/internal/policy/impl/AlbumFrameView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1000(Lcom/android/internal/policy/impl/MiuiLockScreen;)Lcom/miui/internal/policy/impl/AlbumFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->mDefaultAlbum:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->access$1200(Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AlbumFrameView;->setDisplayBitmap(Landroid/graphics/Bitmap;)V

    .line 1506
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController$1;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MiuiLockScreen$LockScreenAlbumController;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mMusicBatteryIndicator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$1100(Lcom/android/internal/policy/impl/MiuiLockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1517
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1497
    return-void
.end method
