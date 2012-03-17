.class Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;
.super Landroid/os/Handler;
.source "PhotoStackAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;-><init>(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager$AnimationHandler;->this$0:Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;

    #calls: Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->doAnimation()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;->access$100(Lcom/sonyericsson/android/camera/photostack/PhotoStackAnimationManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
