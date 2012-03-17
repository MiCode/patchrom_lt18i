.class Lcom/sonyericsson/android/camera3d/StitchCommon$1;
.super Ljava/lang/Object;
.source "StitchCommon.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/StitchCommon;->start(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/StitchCommon;)V
    .locals 1
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$1;->this$0:Lcom/sonyericsson/android/camera3d/StitchCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$1;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .parameter "r"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/StitchCommon$1;->mThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 197
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "StitchingTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 198
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 199
    return-object v0
.end method
