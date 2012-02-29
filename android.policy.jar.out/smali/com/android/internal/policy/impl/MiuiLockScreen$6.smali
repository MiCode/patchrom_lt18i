.class Lcom/android/internal/policy/impl/MiuiLockScreen$6;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1858
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #getter for: Lcom/android/internal/policy/impl/MiuiLockScreen;->mCheckStreamMusicRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2500(Lcom/android/internal/policy/impl/MiuiLockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MiuiLockScreen;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1862
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateMusic()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$2600(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1863
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    #calls: Lcom/android/internal/policy/impl/MiuiLockScreen;->updateSpectrumVisualizer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/MiuiLockScreen;->access$200(Lcom/android/internal/policy/impl/MiuiLockScreen;)V

    .line 1864
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$6;->this$0:Lcom/android/internal/policy/impl/MiuiLockScreen;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1865
    return-void
.end method
